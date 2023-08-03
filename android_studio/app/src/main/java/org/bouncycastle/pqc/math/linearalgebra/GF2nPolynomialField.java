package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

/* loaded from: classes5.dex */
public class GF2nPolynomialField extends GF2nField {
    private boolean isPentanomial;
    private boolean isTrinomial;
    private int[] pc;
    GF2Polynomial[] squaringMatrix;
    private int tc;

    public GF2nPolynomialField(int i4, SecureRandom secureRandom) {
        super(secureRandom);
        this.isTrinomial = false;
        this.isPentanomial = false;
        this.pc = new int[3];
        if (i4 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = i4;
        computeFieldPolynomial();
        computeSquaringMatrix();
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    public GF2nPolynomialField(int i4, SecureRandom secureRandom, GF2Polynomial gF2Polynomial) throws RuntimeException {
        super(secureRandom);
        this.isTrinomial = false;
        this.isPentanomial = false;
        this.pc = new int[3];
        if (i4 < 3) {
            throw new IllegalArgumentException("degree must be at least 3");
        }
        if (gF2Polynomial.getLength() != i4 + 1) {
            throw new RuntimeException();
        }
        if (!gF2Polynomial.isIrreducible()) {
            throw new RuntimeException();
        }
        this.mDegree = i4;
        this.fieldPolynomial = gF2Polynomial;
        computeSquaringMatrix();
        int i10 = 2;
        for (int i11 = 1; i11 < this.fieldPolynomial.getLength() - 1; i11++) {
            if (this.fieldPolynomial.testBit(i11)) {
                i10++;
                if (i10 == 3) {
                    this.tc = i11;
                }
                if (i10 <= 5) {
                    this.pc[i10 - 3] = i11;
                }
            }
        }
        if (i10 == 3) {
            this.isTrinomial = true;
        }
        if (i10 == 5) {
            this.isPentanomial = true;
        }
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    public GF2nPolynomialField(int i4, SecureRandom secureRandom, boolean z9) {
        super(secureRandom);
        this.isTrinomial = false;
        this.isPentanomial = false;
        this.pc = new int[3];
        if (i4 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = i4;
        if (z9) {
            computeFieldPolynomial();
        } else {
            computeFieldPolynomial2();
        }
        computeSquaringMatrix();
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    private void computeSquaringMatrix() {
        int i4 = this.mDegree;
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[i4 - 1];
        this.squaringMatrix = new GF2Polynomial[i4];
        int i10 = 0;
        while (true) {
            GF2Polynomial[] gF2PolynomialArr2 = this.squaringMatrix;
            if (i10 >= gF2PolynomialArr2.length) {
                break;
            }
            gF2PolynomialArr2[i10] = new GF2Polynomial(this.mDegree, "ZERO");
            i10++;
        }
        for (int i11 = 0; i11 < this.mDegree - 1; i11++) {
            gF2PolynomialArr[i11] = new GF2Polynomial(1, "ONE").shiftLeft(this.mDegree + i11).remainder(this.fieldPolynomial);
        }
        for (int i12 = 1; i12 <= Math.abs(this.mDegree >> 1); i12++) {
            int i13 = 1;
            while (true) {
                int i14 = this.mDegree;
                if (i13 <= i14) {
                    if (gF2PolynomialArr[i14 - (i12 << 1)].testBit(i14 - i13)) {
                        this.squaringMatrix[i13 - 1].setBit(this.mDegree - i12);
                    }
                    i13++;
                }
            }
        }
        int abs = Math.abs(this.mDegree >> 1) + 1;
        while (true) {
            int i15 = this.mDegree;
            if (abs > i15) {
                return;
            }
            this.squaringMatrix[((abs << 1) - i15) - 1].setBit(i15 - abs);
            abs++;
        }
    }

    private boolean testPentanomials() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree + 1);
        this.fieldPolynomial = gF2Polynomial;
        gF2Polynomial.setBit(0);
        this.fieldPolynomial.setBit(this.mDegree);
        int i4 = 1;
        boolean z9 = false;
        while (i4 <= this.mDegree - 3 && !z9) {
            this.fieldPolynomial.setBit(i4);
            int i10 = i4 + 1;
            int i11 = i10;
            while (i11 <= this.mDegree - 2 && !z9) {
                this.fieldPolynomial.setBit(i11);
                int i12 = i11 + 1;
                for (int i13 = i12; i13 <= this.mDegree - 1 && !z9; i13++) {
                    this.fieldPolynomial.setBit(i13);
                    if (((((this.mDegree & 1) != 0) | ((i4 & 1) != 0) | ((i11 & 1) != 0)) || ((i13 & 1) != 0)) && (z9 = this.fieldPolynomial.isIrreducible())) {
                        this.isPentanomial = true;
                        int[] iArr = this.pc;
                        iArr[0] = i4;
                        iArr[1] = i11;
                        iArr[2] = i13;
                        return z9;
                    }
                    this.fieldPolynomial.resetBit(i13);
                }
                this.fieldPolynomial.resetBit(i11);
                i11 = i12;
            }
            this.fieldPolynomial.resetBit(i4);
            i4 = i10;
        }
        return z9;
    }

    private boolean testRandom() {
        this.fieldPolynomial = new GF2Polynomial(this.mDegree + 1);
        do {
            this.fieldPolynomial.randomize();
            this.fieldPolynomial.setBit(this.mDegree);
            this.fieldPolynomial.setBit(0);
        } while (!this.fieldPolynomial.isIrreducible());
        return true;
    }

    private boolean testTrinomials() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree + 1);
        this.fieldPolynomial = gF2Polynomial;
        boolean z9 = false;
        gF2Polynomial.setBit(0);
        this.fieldPolynomial.setBit(this.mDegree);
        for (int i4 = 1; i4 < this.mDegree && !z9; i4++) {
            this.fieldPolynomial.setBit(i4);
            boolean isIrreducible = this.fieldPolynomial.isIrreducible();
            if (isIrreducible) {
                this.isTrinomial = true;
                this.tc = i4;
                return isIrreducible;
            }
            this.fieldPolynomial.resetBit(i4);
            z9 = this.fieldPolynomial.isIrreducible();
        }
        return z9;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nField
    protected void computeCOBMatrix(GF2nField gF2nField) {
        GF2nElement randomRoot;
        GF2nElement[] gF2nElementArr;
        int i4;
        int i10 = this.mDegree;
        if (i10 != gF2nField.mDegree) {
            throw new IllegalArgumentException("GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        boolean z9 = gF2nField instanceof GF2nONBField;
        if (z9) {
            gF2nField.computeCOBMatrix(this);
            return;
        }
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[i10];
        for (int i11 = 0; i11 < this.mDegree; i11++) {
            gF2PolynomialArr[i11] = new GF2Polynomial(this.mDegree);
        }
        do {
            randomRoot = gF2nField.getRandomRoot(this.fieldPolynomial);
        } while (randomRoot.isZero());
        if (randomRoot instanceof GF2nONBElement) {
            int i12 = this.mDegree;
            gF2nElementArr = new GF2nONBElement[i12];
            gF2nElementArr[i12 - 1] = GF2nONBElement.ONE((GF2nONBField) gF2nField);
        } else {
            int i13 = this.mDegree;
            gF2nElementArr = new GF2nPolynomialElement[i13];
            gF2nElementArr[i13 - 1] = GF2nPolynomialElement.ONE((GF2nPolynomialField) gF2nField);
        }
        int i14 = this.mDegree;
        gF2nElementArr[i14 - 2] = randomRoot;
        for (int i15 = i14 - 3; i15 >= 0; i15--) {
            gF2nElementArr[i15] = (GF2nElement) gF2nElementArr[i15 + 1].multiply(randomRoot);
        }
        if (z9) {
            for (int i16 = 0; i16 < this.mDegree; i16++) {
                int i17 = 0;
                while (true) {
                    if (i17 < this.mDegree) {
                        if (gF2nElementArr[i16].testBit((i4 - i17) - 1)) {
                            int i18 = this.mDegree;
                            gF2PolynomialArr[(i18 - i17) - 1].setBit((i18 - i16) - 1);
                        }
                        i17++;
                    }
                }
            }
        } else {
            for (int i19 = 0; i19 < this.mDegree; i19++) {
                for (int i20 = 0; i20 < this.mDegree; i20++) {
                    if (gF2nElementArr[i19].testBit(i20)) {
                        int i21 = this.mDegree;
                        gF2PolynomialArr[(i21 - i20) - 1].setBit((i21 - i19) - 1);
                    }
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
        if (testTrinomials() || testPentanomials()) {
            return;
        }
        testRandom();
    }

    protected void computeFieldPolynomial2() {
        if (testTrinomials() || testPentanomials()) {
            return;
        }
        testRandom();
    }

    public int[] getPc() throws RuntimeException {
        if (this.isPentanomial) {
            int[] iArr = new int[3];
            System.arraycopy(this.pc, 0, iArr, 0, 3);
            return iArr;
        }
        throw new RuntimeException();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nField
    protected GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial) {
        GF2nPolynomial gcd;
        int degree;
        int degree2;
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(gF2Polynomial, this);
        while (gF2nPolynomial.getDegree() > 1) {
            while (true) {
                GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this, this.random);
                GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial(2, GF2nPolynomialElement.ZERO(this));
                gF2nPolynomial2.set(1, gF2nPolynomialElement);
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

    public GF2Polynomial getSquaringVector(int i4) {
        return new GF2Polynomial(this.squaringMatrix[i4]);
    }

    public int getTc() throws RuntimeException {
        if (this.isTrinomial) {
            return this.tc;
        }
        throw new RuntimeException();
    }

    public boolean isPentanomial() {
        return this.isPentanomial;
    }

    public boolean isTrinomial() {
        return this.isTrinomial;
    }
}
