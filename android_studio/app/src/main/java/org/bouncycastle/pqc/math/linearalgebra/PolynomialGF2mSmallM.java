package org.bouncycastle.pqc.math.linearalgebra;

import com.alipay.sdk.util.i;
import java.security.SecureRandom;

/* loaded from: classes5.dex */
public class PolynomialGF2mSmallM {
    public static final char RANDOM_IRREDUCIBLE_POLYNOMIAL = 'I';
    private int[] coefficients;
    private int degree;
    private GF2mField field;

    public PolynomialGF2mSmallM(GF2mField gF2mField) {
        this.field = gF2mField;
        this.degree = -1;
        this.coefficients = new int[1];
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, int i4) {
        this.field = gF2mField;
        this.degree = i4;
        int[] iArr = new int[i4 + 1];
        this.coefficients = iArr;
        iArr[i4] = 1;
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, int i4, char c10, SecureRandom secureRandom) {
        this.field = gF2mField;
        if (c10 == 'I') {
            this.coefficients = createRandomIrreduciblePolynomial(i4, secureRandom);
            computeDegree();
            return;
        }
        throw new IllegalArgumentException(" Error: type " + c10 + " is not defined for GF2smallmPolynomial");
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, byte[] bArr) {
        this.field = gF2mField;
        int i4 = 8;
        int i10 = 1;
        while (gF2mField.getDegree() > i4) {
            i10++;
            i4 += 8;
        }
        if (bArr.length % i10 != 0) {
            throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
        }
        this.coefficients = new int[bArr.length / i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int[] iArr = this.coefficients;
            if (i11 >= iArr.length) {
                if (iArr.length != 1 && iArr[iArr.length - 1] == 0) {
                    throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                }
                computeDegree();
                return;
            }
            int i13 = 0;
            while (i13 < i4) {
                int[] iArr2 = this.coefficients;
                iArr2[i11] = ((bArr[i12] & 255) << i13) ^ iArr2[i11];
                i13 += 8;
                i12++;
            }
            if (!this.field.isElementOfThisField(this.coefficients[i11])) {
                throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
            }
            i11++;
        }
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, int[] iArr) {
        this.field = gF2mField;
        this.coefficients = normalForm(iArr);
        computeDegree();
    }

    public PolynomialGF2mSmallM(GF2mVector gF2mVector) {
        this(gF2mVector.getField(), gF2mVector.getIntArrayForm());
    }

    public PolynomialGF2mSmallM(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        this.field = polynomialGF2mSmallM.field;
        this.degree = polynomialGF2mSmallM.degree;
        this.coefficients = IntUtils.clone(polynomialGF2mSmallM.coefficients);
    }

    private int[] add(int[] iArr, int[] iArr2) {
        int[] iArr3;
        if (iArr.length < iArr2.length) {
            iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
        } else {
            iArr3 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            iArr = iArr2;
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr3[length] = this.field.add(iArr3[length], iArr[length]);
        }
        return iArr3;
    }

    private static int computeDegree(int[] iArr) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        return length;
    }

    private void computeDegree() {
        int length = this.coefficients.length;
        do {
            this.degree = length - 1;
            length = this.degree;
            if (length < 0) {
                return;
            }
        } while (this.coefficients[length] == 0);
    }

    private int[] createRandomIrreduciblePolynomial(int i4, SecureRandom secureRandom) {
        int[] iArr = new int[i4 + 1];
        iArr[i4] = 1;
        iArr[0] = this.field.getRandomNonZeroElement(secureRandom);
        for (int i10 = 1; i10 < i4; i10++) {
            iArr[i10] = this.field.getRandomElement(secureRandom);
        }
        while (!isIrreducible(iArr)) {
            int nextInt = RandUtils.nextInt(secureRandom, i4);
            if (nextInt == 0) {
                iArr[0] = this.field.getRandomNonZeroElement(secureRandom);
            } else {
                iArr[nextInt] = this.field.getRandomElement(secureRandom);
            }
        }
        return iArr;
    }

    private int[][] div(int[] iArr, int[] iArr2) {
        int computeDegree = computeDegree(iArr2);
        int computeDegree2 = computeDegree(iArr) + 1;
        if (computeDegree != -1) {
            int[][] iArr3 = {new int[1], new int[computeDegree2]};
            int inverse = this.field.inverse(headCoefficient(iArr2));
            iArr3[0][0] = 0;
            System.arraycopy(iArr, 0, iArr3[1], 0, iArr3[1].length);
            while (computeDegree <= computeDegree(iArr3[1])) {
                int[] iArr4 = {this.field.mult(headCoefficient(iArr3[1]), inverse)};
                int[] multWithElement = multWithElement(iArr2, iArr4[0]);
                int computeDegree3 = computeDegree(iArr3[1]) - computeDegree;
                int[] multWithMonomial = multWithMonomial(multWithElement, computeDegree3);
                iArr3[0] = add(multWithMonomial(iArr4, computeDegree3), iArr3[0]);
                iArr3[1] = add(multWithMonomial, iArr3[1]);
            }
            return iArr3;
        }
        throw new ArithmeticException("Division by zero.");
    }

    private int[] gcd(int[] iArr, int[] iArr2) {
        if (computeDegree(iArr) == -1) {
            return iArr2;
        }
        while (computeDegree(iArr2) != -1) {
            int[] mod = mod(iArr, iArr2);
            int length = iArr2.length;
            int[] iArr3 = new int[length];
            System.arraycopy(iArr2, 0, iArr3, 0, length);
            int length2 = mod.length;
            int[] iArr4 = new int[length2];
            System.arraycopy(mod, 0, iArr4, 0, length2);
            iArr2 = iArr4;
            iArr = iArr3;
        }
        return multWithElement(iArr, this.field.inverse(headCoefficient(iArr)));
    }

    private static int headCoefficient(int[] iArr) {
        int computeDegree = computeDegree(iArr);
        if (computeDegree == -1) {
            return 0;
        }
        return iArr[computeDegree];
    }

    private static boolean isEqual(int[] iArr, int[] iArr2) {
        int computeDegree = computeDegree(iArr);
        if (computeDegree != computeDegree(iArr2)) {
            return false;
        }
        for (int i4 = 0; i4 <= computeDegree; i4++) {
            if (iArr[i4] != iArr2[i4]) {
                return false;
            }
        }
        return true;
    }

    private boolean isIrreducible(int[] iArr) {
        if (iArr[0] == 0) {
            return false;
        }
        int computeDegree = computeDegree(iArr) >> 1;
        int[] iArr2 = {0, 1};
        int[] iArr3 = {0, 1};
        int degree = this.field.getDegree();
        for (int i4 = 0; i4 < computeDegree; i4++) {
            for (int i10 = degree - 1; i10 >= 0; i10--) {
                iArr2 = modMultiply(iArr2, iArr2, iArr);
            }
            iArr2 = normalForm(iArr2);
            if (computeDegree(gcd(add(iArr2, iArr3), iArr)) != 0) {
                return false;
            }
        }
        return true;
    }

    private int[] mod(int[] iArr, int[] iArr2) {
        int computeDegree = computeDegree(iArr2);
        if (computeDegree != -1) {
            int length = iArr.length;
            int[] iArr3 = new int[length];
            int inverse = this.field.inverse(headCoefficient(iArr2));
            System.arraycopy(iArr, 0, iArr3, 0, length);
            while (computeDegree <= computeDegree(iArr3)) {
                iArr3 = add(multWithElement(multWithMonomial(iArr2, computeDegree(iArr3) - computeDegree), this.field.mult(headCoefficient(iArr3), inverse)), iArr3);
            }
            return iArr3;
        }
        throw new ArithmeticException("Division by zero");
    }

    private int[] modDiv(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] normalForm = normalForm(iArr3);
        int[] mod = mod(iArr2, iArr3);
        int[] iArr4 = {0};
        int[] mod2 = mod(iArr, iArr3);
        while (computeDegree(mod) != -1) {
            int[][] div = div(normalForm, mod);
            int[] normalForm2 = normalForm(mod);
            int[] normalForm3 = normalForm(div[1]);
            int[] add = add(iArr4, modMultiply(div[0], mod2, iArr3));
            iArr4 = normalForm(mod2);
            mod2 = normalForm(add);
            normalForm = normalForm2;
            mod = normalForm3;
        }
        return multWithElement(iArr4, this.field.inverse(headCoefficient(normalForm)));
    }

    private int[] modMultiply(int[] iArr, int[] iArr2, int[] iArr3) {
        return mod(multiply(iArr, iArr2), iArr3);
    }

    private int[] multWithElement(int[] iArr, int i4) {
        int computeDegree = computeDegree(iArr);
        if (computeDegree == -1 || i4 == 0) {
            return new int[1];
        }
        if (i4 == 1) {
            return IntUtils.clone(iArr);
        }
        int[] iArr2 = new int[computeDegree + 1];
        while (computeDegree >= 0) {
            iArr2[computeDegree] = this.field.mult(iArr[computeDegree], i4);
            computeDegree--;
        }
        return iArr2;
    }

    private static int[] multWithMonomial(int[] iArr, int i4) {
        int computeDegree = computeDegree(iArr);
        if (computeDegree == -1) {
            return new int[1];
        }
        int[] iArr2 = new int[computeDegree + i4 + 1];
        System.arraycopy(iArr, 0, iArr2, i4, computeDegree + 1);
        return iArr2;
    }

    private int[] multiply(int[] iArr, int[] iArr2) {
        if (computeDegree(iArr) < computeDegree(iArr2)) {
            iArr2 = iArr;
            iArr = iArr2;
        }
        int[] normalForm = normalForm(iArr);
        int[] normalForm2 = normalForm(iArr2);
        if (normalForm2.length == 1) {
            return multWithElement(normalForm, normalForm2[0]);
        }
        int length = normalForm.length;
        int length2 = normalForm2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        if (length2 != length) {
            int[] iArr4 = new int[length2];
            int i4 = length - length2;
            int[] iArr5 = new int[i4];
            System.arraycopy(normalForm, 0, iArr4, 0, length2);
            System.arraycopy(normalForm, length2, iArr5, 0, i4);
            return add(multiply(iArr4, normalForm2), multWithMonomial(multiply(iArr5, normalForm2), length2));
        }
        int i10 = (length + 1) >>> 1;
        int i11 = length - i10;
        int[] iArr6 = new int[i10];
        int[] iArr7 = new int[i10];
        int[] iArr8 = new int[i11];
        int[] iArr9 = new int[i11];
        System.arraycopy(normalForm, 0, iArr6, 0, i10);
        System.arraycopy(normalForm, i10, iArr8, 0, i11);
        System.arraycopy(normalForm2, 0, iArr7, 0, i10);
        System.arraycopy(normalForm2, i10, iArr9, 0, i11);
        int[] add = add(iArr6, iArr8);
        int[] add2 = add(iArr7, iArr9);
        int[] multiply = multiply(iArr6, iArr7);
        int[] multiply2 = multiply(add, add2);
        int[] multiply3 = multiply(iArr8, iArr9);
        return add(multWithMonomial(add(add(add(multiply2, multiply), multiply3), multWithMonomial(multiply3, i10)), i10), multiply);
    }

    private static int[] normalForm(int[] iArr) {
        int computeDegree = computeDegree(iArr);
        if (computeDegree == -1) {
            return new int[1];
        }
        int i4 = computeDegree + 1;
        if (iArr.length == i4) {
            return IntUtils.clone(iArr);
        }
        int[] iArr2 = new int[i4];
        System.arraycopy(iArr, 0, iArr2, 0, i4);
        return iArr2;
    }

    public PolynomialGF2mSmallM add(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, add(this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public PolynomialGF2mSmallM addMonomial(int i4) {
        int[] iArr = new int[i4 + 1];
        iArr[i4] = 1;
        return new PolynomialGF2mSmallM(this.field, add(this.coefficients, iArr));
    }

    public void addToThis(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        this.coefficients = add(this.coefficients, polynomialGF2mSmallM.coefficients);
        computeDegree();
    }

    public PolynomialGF2mSmallM[] div(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int[][] div = div(this.coefficients, polynomialGF2mSmallM.coefficients);
        return new PolynomialGF2mSmallM[]{new PolynomialGF2mSmallM(this.field, div[0]), new PolynomialGF2mSmallM(this.field, div[1])};
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof PolynomialGF2mSmallM)) {
            PolynomialGF2mSmallM polynomialGF2mSmallM = (PolynomialGF2mSmallM) obj;
            if (this.field.equals(polynomialGF2mSmallM.field) && this.degree == polynomialGF2mSmallM.degree && isEqual(this.coefficients, polynomialGF2mSmallM.coefficients)) {
                return true;
            }
        }
        return false;
    }

    public int evaluateAt(int i4) {
        int[] iArr = this.coefficients;
        int i10 = this.degree;
        int i11 = iArr[i10];
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            i11 = this.field.mult(i11, i4) ^ this.coefficients[i12];
        }
        return i11;
    }

    public PolynomialGF2mSmallM gcd(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, gcd(this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public int getCoefficient(int i4) {
        if (i4 < 0 || i4 > this.degree) {
            return 0;
        }
        return this.coefficients[i4];
    }

    public int getDegree() {
        int[] iArr = this.coefficients;
        int length = iArr.length - 1;
        if (iArr[length] == 0) {
            return -1;
        }
        return length;
    }

    public byte[] getEncoded() {
        int i4 = 8;
        int i10 = 1;
        while (this.field.getDegree() > i4) {
            i10++;
            i4 += 8;
        }
        byte[] bArr = new byte[this.coefficients.length * i10];
        int i11 = 0;
        for (int i12 = 0; i12 < this.coefficients.length; i12++) {
            int i13 = 0;
            while (i13 < i4) {
                bArr[i11] = (byte) (this.coefficients[i12] >>> i13);
                i13 += 8;
                i11++;
            }
        }
        return bArr;
    }

    public int getHeadCoefficient() {
        int i4 = this.degree;
        if (i4 == -1) {
            return 0;
        }
        return this.coefficients[i4];
    }

    public int hashCode() {
        int hashCode = this.field.hashCode();
        int i4 = 0;
        while (true) {
            int[] iArr = this.coefficients;
            if (i4 >= iArr.length) {
                return hashCode;
            }
            hashCode = (hashCode * 31) + iArr[i4];
            i4++;
        }
    }

    public PolynomialGF2mSmallM mod(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, mod(this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public PolynomialGF2mSmallM modDiv(PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM polynomialGF2mSmallM2) {
        return new PolynomialGF2mSmallM(this.field, modDiv(this.coefficients, polynomialGF2mSmallM.coefficients, polynomialGF2mSmallM2.coefficients));
    }

    public PolynomialGF2mSmallM modInverse(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, modDiv(new int[]{1}, this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public PolynomialGF2mSmallM modMultiply(PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM polynomialGF2mSmallM2) {
        return new PolynomialGF2mSmallM(this.field, modMultiply(this.coefficients, polynomialGF2mSmallM.coefficients, polynomialGF2mSmallM2.coefficients));
    }

    public PolynomialGF2mSmallM[] modPolynomialToFracton(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int i4 = polynomialGF2mSmallM.degree >> 1;
        int[] normalForm = normalForm(polynomialGF2mSmallM.coefficients);
        int[] mod = mod(this.coefficients, polynomialGF2mSmallM.coefficients);
        int[] iArr = {0};
        int[] iArr2 = {1};
        while (computeDegree(mod) > i4) {
            int[][] div = div(normalForm, mod);
            int[] iArr3 = div[1];
            int[] add = add(iArr, modMultiply(div[0], iArr2, polynomialGF2mSmallM.coefficients));
            iArr = iArr2;
            iArr2 = add;
            normalForm = mod;
            mod = iArr3;
        }
        return new PolynomialGF2mSmallM[]{new PolynomialGF2mSmallM(this.field, mod), new PolynomialGF2mSmallM(this.field, iArr2)};
    }

    public PolynomialGF2mSmallM modSquareMatrix(PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int length = polynomialGF2mSmallMArr.length;
        int[] iArr = new int[length];
        int[] iArr2 = new int[length];
        int i4 = 0;
        while (true) {
            int[] iArr3 = this.coefficients;
            if (i4 >= iArr3.length) {
                break;
            }
            iArr2[i4] = this.field.mult(iArr3[i4], iArr3[i4]);
            i4++;
        }
        for (int i10 = 0; i10 < length; i10++) {
            for (int i11 = 0; i11 < length; i11++) {
                if (i10 < polynomialGF2mSmallMArr[i11].coefficients.length) {
                    iArr[i10] = this.field.add(iArr[i10], this.field.mult(polynomialGF2mSmallMArr[i11].coefficients[i10], iArr2[i11]));
                }
            }
        }
        return new PolynomialGF2mSmallM(this.field, iArr);
    }

    public PolynomialGF2mSmallM modSquareRoot(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int[] clone = IntUtils.clone(this.coefficients);
        int[] modMultiply = modMultiply(clone, clone, polynomialGF2mSmallM.coefficients);
        while (!isEqual(modMultiply, this.coefficients)) {
            clone = normalForm(modMultiply);
            modMultiply = modMultiply(clone, clone, polynomialGF2mSmallM.coefficients);
        }
        return new PolynomialGF2mSmallM(this.field, clone);
    }

    public PolynomialGF2mSmallM modSquareRootMatrix(PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int length = polynomialGF2mSmallMArr.length;
        int[] iArr = new int[length];
        for (int i4 = 0; i4 < length; i4++) {
            for (int i10 = 0; i10 < length; i10++) {
                if (i4 < polynomialGF2mSmallMArr[i10].coefficients.length) {
                    int[] iArr2 = this.coefficients;
                    if (i10 < iArr2.length) {
                        iArr[i4] = this.field.add(iArr[i4], this.field.mult(polynomialGF2mSmallMArr[i10].coefficients[i4], iArr2[i10]));
                    }
                }
            }
        }
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = this.field.sqRoot(iArr[i11]);
        }
        return new PolynomialGF2mSmallM(this.field, iArr);
    }

    public void multThisWithElement(int i4) {
        if (!this.field.isElementOfThisField(i4)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        this.coefficients = multWithElement(this.coefficients, i4);
        computeDegree();
    }

    public PolynomialGF2mSmallM multWithElement(int i4) {
        if (this.field.isElementOfThisField(i4)) {
            return new PolynomialGF2mSmallM(this.field, multWithElement(this.coefficients, i4));
        }
        throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
    }

    public PolynomialGF2mSmallM multWithMonomial(int i4) {
        return new PolynomialGF2mSmallM(this.field, multWithMonomial(this.coefficients, i4));
    }

    public PolynomialGF2mSmallM multiply(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, multiply(this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public String toString() {
        String str = " Polynomial over " + this.field.toString() + ": \n";
        for (int i4 = 0; i4 < this.coefficients.length; i4++) {
            str = str + this.field.elementToStr(this.coefficients[i4]) + "Y^" + i4 + "+";
        }
        return str + i.f6965b;
    }
}
