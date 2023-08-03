package org.bouncycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;
import shaded.org.apache.commons.codec.language.bm.f;

/* loaded from: classes5.dex */
public class GF2nONBField extends GF2nField {
    private static final int MAXLONG = 64;
    private int mBit;
    private int mLength;
    int[][] mMult;
    private int mType;

    public GF2nONBField(int i4, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        if (i4 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = i4;
        int i10 = i4 / 64;
        this.mLength = i10;
        int i11 = i4 & 63;
        this.mBit = i11;
        if (i11 == 0) {
            this.mBit = 64;
        } else {
            this.mLength = i10 + 1;
        }
        computeType();
        if (this.mType >= 3) {
            throw new RuntimeException("\nThe type of this field is " + this.mType);
        }
        this.mMult = (int[][]) Array.newInstance(int.class, this.mDegree, 2);
        for (int i12 = 0; i12 < this.mDegree; i12++) {
            int[][] iArr = this.mMult;
            iArr[i12][0] = -1;
            iArr[i12][1] = -1;
        }
        computeMultMatrix();
        computeFieldPolynomial();
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    private void computeMultMatrix() {
        int i4;
        int i10 = this.mType;
        if ((i10 & 7) == 0) {
            throw new RuntimeException("bisher nur fuer Gausssche Normalbasen implementiert");
        }
        int i11 = (this.mDegree * i10) + 1;
        int[] iArr = new int[i11];
        int elementOfOrder = i10 == 1 ? 1 : i10 == 2 ? i11 - 1 : elementOfOrder(i10, i11);
        int i12 = 0;
        int i13 = 1;
        while (true) {
            i4 = this.mType;
            if (i12 >= i4) {
                break;
            }
            int i14 = i13;
            for (int i15 = 0; i15 < this.mDegree; i15++) {
                iArr[i14] = i15;
                i14 = (i14 << 1) % i11;
                if (i14 < 0) {
                    i14 += i11;
                }
            }
            i13 = (i13 * elementOfOrder) % i11;
            if (i13 < 0) {
                i13 += i11;
            }
            i12++;
        }
        if (i4 != 1) {
            if (i4 != 2) {
                throw new RuntimeException("only type 1 or type 2 implemented");
            }
            int i16 = 1;
            while (i16 < i11 - 1) {
                int[][] iArr2 = this.mMult;
                int i17 = i16 + 1;
                if (iArr2[iArr[i17]][0] == -1) {
                    iArr2[iArr[i17]][0] = iArr[i11 - i16];
                } else {
                    iArr2[iArr[i17]][1] = iArr[i11 - i16];
                }
                i16 = i17;
            }
            return;
        }
        int i18 = 1;
        while (i18 < i11 - 1) {
            int[][] iArr3 = this.mMult;
            int i19 = i18 + 1;
            if (iArr3[iArr[i19]][0] == -1) {
                iArr3[iArr[i19]][0] = iArr[i11 - i18];
            } else {
                iArr3[iArr[i19]][1] = iArr[i11 - i18];
            }
            i18 = i19;
        }
        int i20 = this.mDegree >> 1;
        for (int i21 = 1; i21 <= i20; i21++) {
            int[][] iArr4 = this.mMult;
            int i22 = i21 - 1;
            if (iArr4[i22][0] == -1) {
                iArr4[i22][0] = (i20 + i21) - 1;
            } else {
                iArr4[i22][1] = (i20 + i21) - 1;
            }
            int i23 = (i20 + i21) - 1;
            if (iArr4[i23][0] == -1) {
                iArr4[i23][0] = i22;
            } else {
                iArr4[i23][1] = i22;
            }
        }
    }

    private void computeType() throws RuntimeException {
        if ((this.mDegree & 7) == 0) {
            throw new RuntimeException("The extension degree is divisible by 8!");
        }
        this.mType = 1;
        int i4 = 0;
        while (i4 != 1) {
            int i10 = (this.mType * this.mDegree) + 1;
            if (IntegerFunctions.isPrime(i10)) {
                int order = IntegerFunctions.order(2, i10);
                int i11 = this.mType;
                int i12 = this.mDegree;
                i4 = IntegerFunctions.gcd((i11 * i12) / order, i12);
            }
            this.mType++;
        }
        int i13 = this.mType - 1;
        this.mType = i13;
        if (i13 == 1) {
            int i14 = (this.mDegree << 1) + 1;
            if (IntegerFunctions.isPrime(i14)) {
                int order2 = IntegerFunctions.order(2, i14);
                int i15 = this.mDegree;
                if (IntegerFunctions.gcd((i15 << 1) / order2, i15) == 1) {
                    this.mType++;
                }
            }
        }
    }

    private int elementOfOrder(int i4, int i10) {
        int order;
        Random random = new Random();
        int i11 = 0;
        while (i11 == 0) {
            int i12 = i10 - 1;
            i11 = random.nextInt() % i12;
            if (i11 < 0) {
                i11 += i12;
            }
        }
        while (true) {
            order = IntegerFunctions.order(i11, i10);
            if (order % i4 == 0 && order != 0) {
                break;
            }
            while (i11 == 0) {
                int i13 = i10 - 1;
                i11 = random.nextInt() % i13;
                if (i11 < 0) {
                    i11 += i13;
                }
            }
        }
        int i14 = i11;
        for (int i15 = 2; i15 <= i4 / order; i15++) {
            i14 *= i11;
        }
        return i14;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nField
    protected void computeCOBMatrix(GF2nField gF2nField) {
        GF2nElement randomRoot;
        int i4 = this.mDegree;
        if (i4 != gF2nField.mDegree) {
            throw new IllegalArgumentException("GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[i4];
        for (int i10 = 0; i10 < this.mDegree; i10++) {
            gF2PolynomialArr[i10] = new GF2Polynomial(this.mDegree);
        }
        do {
            randomRoot = gF2nField.getRandomRoot(this.fieldPolynomial);
        } while (randomRoot.isZero());
        GF2nElement[] gF2nElementArr = new GF2nPolynomialElement[this.mDegree];
        gF2nElementArr[0] = (GF2nElement) randomRoot.clone();
        for (int i11 = 1; i11 < this.mDegree; i11++) {
            gF2nElementArr[i11] = gF2nElementArr[i11 - 1].square();
        }
        for (int i12 = 0; i12 < this.mDegree; i12++) {
            for (int i13 = 0; i13 < this.mDegree; i13++) {
                if (gF2nElementArr[i12].testBit(i13)) {
                    int i14 = this.mDegree;
                    gF2PolynomialArr[(i14 - i13) - 1].setBit((i14 - i12) - 1);
                }
            }
        }
        this.fields.addElement(gF2nField);
        this.matrices.addElement(gF2PolynomialArr);
        gF2nField.fields.addElement(this);
        gF2nField.matrices.addElement(invertMatrix(gF2PolynomialArr));
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nField
    protected void computeFieldPolynomial() {
        GF2Polynomial gF2Polynomial;
        int i4 = this.mType;
        if (i4 == 1) {
            gF2Polynomial = new GF2Polynomial(this.mDegree + 1, f.f93599f);
        } else if (i4 != 2) {
            return;
        } else {
            GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree + 1, "ONE");
            GF2Polynomial gF2Polynomial3 = new GF2Polynomial(this.mDegree + 1, "X");
            gF2Polynomial3.addToThis(gF2Polynomial2);
            GF2Polynomial gF2Polynomial4 = gF2Polynomial2;
            gF2Polynomial = gF2Polynomial3;
            int i10 = 1;
            while (i10 < this.mDegree) {
                GF2Polynomial shiftLeft = gF2Polynomial.shiftLeft();
                shiftLeft.addToThis(gF2Polynomial4);
                i10++;
                gF2Polynomial4 = gF2Polynomial;
                gF2Polynomial = shiftLeft;
            }
        }
        this.fieldPolynomial = gF2Polynomial;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getONBBit() {
        return this.mBit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getONBLength() {
        return this.mLength;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nField
    protected GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial) {
        GF2nPolynomial gcd;
        int degree;
        int degree2;
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(gF2Polynomial, this);
        while (gF2nPolynomial.getDegree() > 1) {
            while (true) {
                GF2nONBElement gF2nONBElement = new GF2nONBElement(this, this.random);
                GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial(2, GF2nONBElement.ZERO(this));
                gF2nPolynomial2.set(1, gF2nONBElement);
                GF2nPolynomial gF2nPolynomial3 = new GF2nPolynomial(gF2nPolynomial2);
                for (int i4 = 1; i4 <= this.mDegree - 1; i4++) {
                    gF2nPolynomial3 = gF2nPolynomial3.multiplyAndReduce(gF2nPolynomial3, gF2nPolynomial).add(gF2nPolynomial2);
                }
                gcd = gF2nPolynomial3.gcd(gF2nPolynomial);
                degree = gcd.getDegree();
                degree2 = gF2nPolynomial.getDegree();
                if (degree != 0 && degree != degree2) {
                    break;
                }
            }
            gF2nPolynomial = (degree << 1) > degree2 ? gF2nPolynomial.quotient(gcd) : new GF2nPolynomial(gcd);
        }
        return gF2nPolynomial.at(0);
    }

    int[][] invMatrix(int[][] iArr) {
        int i4 = this.mDegree;
        int[][] iArr2 = (int[][]) Array.newInstance(int.class, i4, i4);
        int i10 = this.mDegree;
        int[][] iArr3 = (int[][]) Array.newInstance(int.class, i10, i10);
        for (int i11 = 0; i11 < this.mDegree; i11++) {
            iArr3[i11][i11] = 1;
        }
        for (int i12 = 0; i12 < this.mDegree; i12++) {
            int i13 = i12;
            while (true) {
                int i14 = this.mDegree;
                if (i13 < i14) {
                    iArr[(i14 - 1) - i12][i13] = iArr[i12][i12];
                    i13++;
                }
            }
        }
        return null;
    }
}
