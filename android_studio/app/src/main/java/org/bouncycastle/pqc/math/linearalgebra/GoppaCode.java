package org.bouncycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* loaded from: classes5.dex */
public final class GoppaCode {

    /* loaded from: classes5.dex */
    public static class MaMaPe {

        /* renamed from: h  reason: collision with root package name */
        private GF2Matrix f91577h;

        /* renamed from: p  reason: collision with root package name */
        private Permutation f91578p;

        /* renamed from: s  reason: collision with root package name */
        private GF2Matrix f91579s;

        public MaMaPe(GF2Matrix gF2Matrix, GF2Matrix gF2Matrix2, Permutation permutation) {
            this.f91579s = gF2Matrix;
            this.f91577h = gF2Matrix2;
            this.f91578p = permutation;
        }

        public GF2Matrix getFirstMatrix() {
            return this.f91579s;
        }

        public Permutation getPermutation() {
            return this.f91578p;
        }

        public GF2Matrix getSecondMatrix() {
            return this.f91577h;
        }
    }

    /* loaded from: classes5.dex */
    public static class MatrixSet {

        /* renamed from: g  reason: collision with root package name */
        private GF2Matrix f91580g;
        private int[] setJ;

        public MatrixSet(GF2Matrix gF2Matrix, int[] iArr) {
            this.f91580g = gF2Matrix;
            this.setJ = iArr;
        }

        public GF2Matrix getG() {
            return this.f91580g;
        }

        public int[] getSetJ() {
            return this.setJ;
        }
    }

    private GoppaCode() {
    }

    public static MaMaPe computeSystematicForm(GF2Matrix gF2Matrix, SecureRandom secureRandom) {
        Permutation permutation;
        GF2Matrix gF2Matrix2;
        GF2Matrix leftSubMatrix;
        boolean z9;
        int numColumns = gF2Matrix.getNumColumns();
        GF2Matrix gF2Matrix3 = null;
        do {
            permutation = new Permutation(numColumns, secureRandom);
            gF2Matrix2 = (GF2Matrix) gF2Matrix.rightMultiply(permutation);
            leftSubMatrix = gF2Matrix2.getLeftSubMatrix();
            z9 = true;
            try {
                gF2Matrix3 = (GF2Matrix) leftSubMatrix.computeInverse();
                continue;
            } catch (ArithmeticException unused) {
                z9 = false;
                continue;
            }
        } while (!z9);
        return new MaMaPe(leftSubMatrix, ((GF2Matrix) gF2Matrix3.rightMultiply(gF2Matrix2)).getRightSubMatrix(), permutation);
    }

    public static GF2Matrix createCanonicalCheckMatrix(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int degree = gF2mField.getDegree();
        int i4 = 1 << degree;
        int degree2 = polynomialGF2mSmallM.getDegree();
        int[][] iArr = (int[][]) Array.newInstance(int.class, degree2, i4);
        int[][] iArr2 = (int[][]) Array.newInstance(int.class, degree2, i4);
        for (int i10 = 0; i10 < i4; i10++) {
            iArr2[0][i10] = gF2mField.inverse(polynomialGF2mSmallM.evaluateAt(i10));
        }
        for (int i11 = 1; i11 < degree2; i11++) {
            for (int i12 = 0; i12 < i4; i12++) {
                iArr2[i11][i12] = gF2mField.mult(iArr2[i11 - 1][i12], i12);
            }
        }
        for (int i13 = 0; i13 < degree2; i13++) {
            for (int i14 = 0; i14 < i4; i14++) {
                for (int i15 = 0; i15 <= i13; i15++) {
                    iArr[i13][i14] = gF2mField.add(iArr[i13][i14], gF2mField.mult(iArr2[i15][i14], polynomialGF2mSmallM.getCoefficient((degree2 + i15) - i13)));
                }
            }
        }
        int[][] iArr3 = (int[][]) Array.newInstance(int.class, degree2 * degree, (i4 + 31) >>> 5);
        for (int i16 = 0; i16 < i4; i16++) {
            int i17 = i16 >>> 5;
            int i18 = 1 << (i16 & 31);
            for (int i19 = 0; i19 < degree2; i19++) {
                int i20 = iArr[i19][i16];
                for (int i21 = 0; i21 < degree; i21++) {
                    if (((i20 >>> i21) & 1) != 0) {
                        int[] iArr4 = iArr3[(((i19 + 1) * degree) - i21) - 1];
                        iArr4[i17] = iArr4[i17] ^ i18;
                    }
                }
            }
        }
        return new GF2Matrix(i4, iArr3);
    }

    public static GF2Vector syndromeDecode(GF2Vector gF2Vector, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int degree = 1 << gF2mField.getDegree();
        GF2Vector gF2Vector2 = new GF2Vector(degree);
        if (!gF2Vector.isZero()) {
            PolynomialGF2mSmallM[] modPolynomialToFracton = new PolynomialGF2mSmallM(gF2Vector.toExtensionFieldVector(gF2mField)).modInverse(polynomialGF2mSmallM).addMonomial(1).modSquareRootMatrix(polynomialGF2mSmallMArr).modPolynomialToFracton(polynomialGF2mSmallM);
            PolynomialGF2mSmallM add = modPolynomialToFracton[0].multiply(modPolynomialToFracton[0]).add(modPolynomialToFracton[1].multiply(modPolynomialToFracton[1]).multWithMonomial(1));
            PolynomialGF2mSmallM multWithElement = add.multWithElement(gF2mField.inverse(add.getHeadCoefficient()));
            for (int i4 = 0; i4 < degree; i4++) {
                if (multWithElement.evaluateAt(i4) == 0) {
                    gF2Vector2.setBit(i4);
                }
            }
        }
        return gF2Vector2;
    }
}
