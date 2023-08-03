package org.bouncycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class GF2Matrix extends Matrix {
    private int length;
    private int[][] matrix;

    public GF2Matrix(int i4, char c10) {
        this(i4, c10, new SecureRandom());
    }

    public GF2Matrix(int i4, char c10, SecureRandom secureRandom) {
        if (i4 <= 0) {
            throw new ArithmeticException("Size of matrix is non-positive.");
        }
        if (c10 == 'I') {
            assignUnitMatrix(i4);
        } else if (c10 == 'L') {
            assignRandomLowerTriangularMatrix(i4, secureRandom);
        } else if (c10 == 'R') {
            assignRandomRegularMatrix(i4, secureRandom);
        } else if (c10 == 'U') {
            assignRandomUpperTriangularMatrix(i4, secureRandom);
        } else if (c10 != 'Z') {
            throw new ArithmeticException("Unknown matrix type.");
        } else {
            assignZeroMatrix(i4, i4);
        }
    }

    private GF2Matrix(int i4, int i10) {
        if (i10 <= 0 || i4 <= 0) {
            throw new ArithmeticException("size of matrix is non-positive");
        }
        assignZeroMatrix(i4, i10);
    }

    public GF2Matrix(int i4, int[][] iArr) {
        if (iArr[0].length != ((i4 + 31) >> 5)) {
            throw new ArithmeticException("Int array does not match given number of columns.");
        }
        this.numColumns = i4;
        this.numRows = iArr.length;
        this.length = iArr[0].length;
        int i10 = i4 & 31;
        int i11 = i10 == 0 ? -1 : (1 << i10) - 1;
        for (int i12 = 0; i12 < this.numRows; i12++) {
            int[] iArr2 = iArr[i12];
            int i13 = this.length - 1;
            iArr2[i13] = iArr2[i13] & i11;
        }
        this.matrix = iArr;
    }

    public GF2Matrix(GF2Matrix gF2Matrix) {
        this.numColumns = gF2Matrix.getNumColumns();
        this.numRows = gF2Matrix.getNumRows();
        this.length = gF2Matrix.length;
        this.matrix = new int[gF2Matrix.matrix.length];
        int i4 = 0;
        while (true) {
            int[][] iArr = this.matrix;
            if (i4 >= iArr.length) {
                return;
            }
            iArr[i4] = IntUtils.clone(gF2Matrix.matrix[i4]);
            i4++;
        }
    }

    public GF2Matrix(byte[] bArr) {
        if (bArr.length < 9) {
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        this.numRows = LittleEndianConversions.OS2IP(bArr, 0);
        int OS2IP = LittleEndianConversions.OS2IP(bArr, 4);
        this.numColumns = OS2IP;
        int i4 = this.numRows;
        int i10 = ((OS2IP + 7) >>> 3) * i4;
        if (i4 > 0) {
            int i11 = 8;
            if (i10 == bArr.length - 8) {
                int i12 = (OS2IP + 31) >>> 5;
                this.length = i12;
                this.matrix = (int[][]) Array.newInstance(int.class, i4, i12);
                int i13 = this.numColumns;
                int i14 = i13 >> 5;
                int i15 = i13 & 31;
                for (int i16 = 0; i16 < this.numRows; i16++) {
                    int i17 = 0;
                    while (i17 < i14) {
                        this.matrix[i16][i17] = LittleEndianConversions.OS2IP(bArr, i11);
                        i17++;
                        i11 += 4;
                    }
                    int i18 = 0;
                    while (i18 < i15) {
                        int[] iArr = this.matrix[i16];
                        iArr[i14] = ((bArr[i11] & 255) << i18) ^ iArr[i14];
                        i18 += 8;
                        i11++;
                    }
                }
                return;
            }
        }
        throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
    }

    private static void addToRow(int[] iArr, int[] iArr2, int i4) {
        for (int length = iArr2.length - 1; length >= i4; length--) {
            iArr2[length] = iArr[length] ^ iArr2[length];
        }
    }

    private void assignRandomLowerTriangularMatrix(int i4, SecureRandom secureRandom) {
        this.numRows = i4;
        this.numColumns = i4;
        int i10 = (i4 + 31) >>> 5;
        this.length = i10;
        this.matrix = (int[][]) Array.newInstance(int.class, i4, i10);
        for (int i11 = 0; i11 < this.numRows; i11++) {
            int i12 = i11 >>> 5;
            int i13 = i11 & 31;
            int i14 = 31 - i13;
            int i15 = 1 << i13;
            for (int i16 = 0; i16 < i12; i16++) {
                this.matrix[i11][i16] = secureRandom.nextInt();
            }
            this.matrix[i11][i12] = i15 | (secureRandom.nextInt() >>> i14);
            while (true) {
                i12++;
                if (i12 < this.length) {
                    this.matrix[i11][i12] = 0;
                }
            }
        }
    }

    private void assignRandomRegularMatrix(int i4, SecureRandom secureRandom) {
        this.numRows = i4;
        this.numColumns = i4;
        int i10 = (i4 + 31) >>> 5;
        this.length = i10;
        this.matrix = (int[][]) Array.newInstance(int.class, i4, i10);
        GF2Matrix gF2Matrix = (GF2Matrix) new GF2Matrix(i4, Matrix.MATRIX_TYPE_RANDOM_LT, secureRandom).rightMultiply(new GF2Matrix(i4, Matrix.MATRIX_TYPE_RANDOM_UT, secureRandom));
        int[] vector = new Permutation(i4, secureRandom).getVector();
        for (int i11 = 0; i11 < i4; i11++) {
            System.arraycopy(gF2Matrix.matrix[i11], 0, this.matrix[vector[i11]], 0, this.length);
        }
    }

    private void assignRandomUpperTriangularMatrix(int i4, SecureRandom secureRandom) {
        int i10;
        this.numRows = i4;
        this.numColumns = i4;
        int i11 = (i4 + 31) >>> 5;
        this.length = i11;
        this.matrix = (int[][]) Array.newInstance(int.class, i4, i11);
        int i12 = i4 & 31;
        int i13 = i12 == 0 ? -1 : (1 << i12) - 1;
        for (int i14 = 0; i14 < this.numRows; i14++) {
            int i15 = i14 >>> 5;
            int i16 = i14 & 31;
            int i17 = 1 << i16;
            for (int i18 = 0; i18 < i15; i18++) {
                this.matrix[i14][i18] = 0;
            }
            this.matrix[i14][i15] = (secureRandom.nextInt() << i16) | i17;
            while (true) {
                i15++;
                i10 = this.length;
                if (i15 < i10) {
                    this.matrix[i14][i15] = secureRandom.nextInt();
                }
            }
            int[] iArr = this.matrix[i14];
            int i19 = i10 - 1;
            iArr[i19] = iArr[i19] & i13;
        }
    }

    private void assignUnitMatrix(int i4) {
        this.numRows = i4;
        this.numColumns = i4;
        int i10 = (i4 + 31) >>> 5;
        this.length = i10;
        int[] iArr = {i4, i10};
        this.matrix = (int[][]) Array.newInstance(int.class, iArr);
        for (int i11 = 0; i11 < this.numRows; i11++) {
            for (int i12 = 0; i12 < this.length; i12++) {
                this.matrix[i11][i12] = 0;
            }
        }
        for (int i13 = 0; i13 < this.numRows; i13++) {
            this.matrix[i13][i13 >>> 5] = 1 << (i13 & 31);
        }
    }

    private void assignZeroMatrix(int i4, int i10) {
        this.numRows = i4;
        this.numColumns = i10;
        int i11 = (i10 + 31) >>> 5;
        this.length = i11;
        this.matrix = (int[][]) Array.newInstance(int.class, i4, i11);
        for (int i12 = 0; i12 < this.numRows; i12++) {
            for (int i13 = 0; i13 < this.length; i13++) {
                this.matrix[i12][i13] = 0;
            }
        }
    }

    public static GF2Matrix[] createRandomRegularMatrixAndItsInverse(int i4, SecureRandom secureRandom) {
        GF2Matrix[] gF2MatrixArr = new GF2Matrix[2];
        int i10 = (i4 + 31) >> 5;
        GF2Matrix gF2Matrix = new GF2Matrix(i4, Matrix.MATRIX_TYPE_RANDOM_LT, secureRandom);
        GF2Matrix gF2Matrix2 = new GF2Matrix(i4, Matrix.MATRIX_TYPE_RANDOM_UT, secureRandom);
        GF2Matrix gF2Matrix3 = (GF2Matrix) gF2Matrix.rightMultiply(gF2Matrix2);
        Permutation permutation = new Permutation(i4, secureRandom);
        int[] vector = permutation.getVector();
        int[][] iArr = (int[][]) Array.newInstance(int.class, i4, i10);
        for (int i11 = 0; i11 < i4; i11++) {
            System.arraycopy(gF2Matrix3.matrix[vector[i11]], 0, iArr[i11], 0, i10);
        }
        gF2MatrixArr[0] = new GF2Matrix(i4, iArr);
        GF2Matrix gF2Matrix4 = new GF2Matrix(i4, 'I');
        int i12 = 0;
        while (i12 < i4) {
            int i13 = i12 >>> 5;
            int i14 = 1 << (i12 & 31);
            int i15 = i12 + 1;
            for (int i16 = i15; i16 < i4; i16++) {
                if ((gF2Matrix.matrix[i16][i13] & i14) != 0) {
                    for (int i17 = 0; i17 <= i13; i17++) {
                        int[][] iArr2 = gF2Matrix4.matrix;
                        int[] iArr3 = iArr2[i16];
                        iArr3[i17] = iArr3[i17] ^ iArr2[i12][i17];
                    }
                }
            }
            i12 = i15;
        }
        GF2Matrix gF2Matrix5 = new GF2Matrix(i4, 'I');
        for (int i18 = i4 - 1; i18 >= 0; i18--) {
            int i19 = i18 >>> 5;
            int i20 = 1 << (i18 & 31);
            for (int i21 = i18 - 1; i21 >= 0; i21--) {
                if ((gF2Matrix2.matrix[i21][i19] & i20) != 0) {
                    for (int i22 = i19; i22 < i10; i22++) {
                        int[][] iArr4 = gF2Matrix5.matrix;
                        int[] iArr5 = iArr4[i21];
                        iArr5[i22] = iArr4[i18][i22] ^ iArr5[i22];
                    }
                }
            }
        }
        gF2MatrixArr[1] = (GF2Matrix) gF2Matrix5.rightMultiply(gF2Matrix4.rightMultiply(permutation));
        return gF2MatrixArr;
    }

    private static void swapRows(int[][] iArr, int i4, int i10) {
        int[] iArr2 = iArr[i4];
        iArr[i4] = iArr[i10];
        iArr[i10] = iArr2;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Matrix computeInverse() {
        int i4 = this.numRows;
        if (i4 == this.numColumns) {
            int[][] iArr = (int[][]) Array.newInstance(int.class, i4, this.length);
            for (int i10 = this.numRows - 1; i10 >= 0; i10--) {
                iArr[i10] = IntUtils.clone(this.matrix[i10]);
            }
            int[][] iArr2 = (int[][]) Array.newInstance(int.class, this.numRows, this.length);
            for (int i11 = this.numRows - 1; i11 >= 0; i11--) {
                iArr2[i11][i11 >> 5] = 1 << (i11 & 31);
            }
            for (int i12 = 0; i12 < this.numRows; i12++) {
                int i13 = i12 >> 5;
                int i14 = 1 << (i12 & 31);
                if ((iArr[i12][i13] & i14) == 0) {
                    int i15 = i12 + 1;
                    boolean z9 = false;
                    while (i15 < this.numRows) {
                        if ((iArr[i15][i13] & i14) != 0) {
                            swapRows(iArr, i12, i15);
                            swapRows(iArr2, i12, i15);
                            i15 = this.numRows;
                            z9 = true;
                        }
                        i15++;
                    }
                    if (!z9) {
                        throw new ArithmeticException("Matrix is not invertible.");
                    }
                }
                for (int i16 = this.numRows - 1; i16 >= 0; i16--) {
                    if (i16 != i12 && (iArr[i16][i13] & i14) != 0) {
                        addToRow(iArr[i12], iArr[i16], i13);
                        addToRow(iArr2[i12], iArr2[i16], 0);
                    }
                }
            }
            return new GF2Matrix(this.numColumns, iArr2);
        }
        throw new ArithmeticException("Matrix is not invertible.");
    }

    public Matrix computeTranspose() {
        int[][] iArr = (int[][]) Array.newInstance(int.class, this.numColumns, (this.numRows + 31) >>> 5);
        int i4 = 0;
        while (true) {
            int i10 = this.numRows;
            if (i4 >= i10) {
                return new GF2Matrix(i10, iArr);
            }
            for (int i11 = 0; i11 < this.numColumns; i11++) {
                int i12 = i4 >>> 5;
                int i13 = i4 & 31;
                if (((this.matrix[i4][i11 >>> 5] >>> (i11 & 31)) & 1) == 1) {
                    int[] iArr2 = iArr[i11];
                    iArr2[i12] = (1 << i13) | iArr2[i12];
                }
            }
            i4++;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof GF2Matrix) {
            GF2Matrix gF2Matrix = (GF2Matrix) obj;
            if (this.numRows == gF2Matrix.numRows && this.numColumns == gF2Matrix.numColumns && this.length == gF2Matrix.length) {
                for (int i4 = 0; i4 < this.numRows; i4++) {
                    if (!IntUtils.equals(this.matrix[i4], gF2Matrix.matrix[i4])) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public GF2Matrix extendLeftCompactForm() {
        int i4 = this.numColumns;
        int i10 = this.numRows;
        GF2Matrix gF2Matrix = new GF2Matrix(i10, i4 + i10);
        int i11 = this.numRows;
        int i12 = (i11 - 1) + this.numColumns;
        int i13 = i11 - 1;
        while (i13 >= 0) {
            System.arraycopy(this.matrix[i13], 0, gF2Matrix.matrix[i13], 0, this.length);
            int[] iArr = gF2Matrix.matrix[i13];
            int i14 = i12 >> 5;
            iArr[i14] = iArr[i14] | (1 << (i12 & 31));
            i13--;
            i12--;
        }
        return gF2Matrix;
    }

    public GF2Matrix extendRightCompactForm() {
        int i4;
        int i10 = this.numRows;
        GF2Matrix gF2Matrix = new GF2Matrix(i10, this.numColumns + i10);
        int i11 = this.numRows;
        int i12 = i11 >> 5;
        int i13 = i11 & 31;
        for (int i14 = i11 - 1; i14 >= 0; i14--) {
            int[][] iArr = gF2Matrix.matrix;
            int[] iArr2 = iArr[i14];
            int i15 = i14 >> 5;
            iArr2[i15] = iArr2[i15] | (1 << (i14 & 31));
            int i16 = 0;
            if (i13 != 0) {
                int i17 = i12;
                while (true) {
                    i4 = this.length;
                    if (i16 >= i4 - 1) {
                        break;
                    }
                    int i18 = this.matrix[i14][i16];
                    int[][] iArr3 = gF2Matrix.matrix;
                    int[] iArr4 = iArr3[i14];
                    int i19 = i17 + 1;
                    iArr4[i17] = iArr4[i17] | (i18 << i13);
                    int[] iArr5 = iArr3[i14];
                    iArr5[i19] = (i18 >>> (32 - i13)) | iArr5[i19];
                    i16++;
                    i17 = i19;
                }
                int i20 = this.matrix[i14][i4 - 1];
                int[][] iArr6 = gF2Matrix.matrix;
                int[] iArr7 = iArr6[i14];
                int i21 = i17 + 1;
                iArr7[i17] = iArr7[i17] | (i20 << i13);
                if (i21 < gF2Matrix.length) {
                    int[] iArr8 = iArr6[i14];
                    iArr8[i21] = (i20 >>> (32 - i13)) | iArr8[i21];
                }
            } else {
                System.arraycopy(this.matrix[i14], 0, iArr[i14], i12, this.length);
            }
        }
        return gF2Matrix;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public byte[] getEncoded() {
        int i4 = this.numRows;
        int i10 = 8;
        byte[] bArr = new byte[(((this.numColumns + 7) >>> 3) * i4) + 8];
        LittleEndianConversions.I2OSP(i4, bArr, 0);
        LittleEndianConversions.I2OSP(this.numColumns, bArr, 4);
        int i11 = this.numColumns;
        int i12 = i11 >>> 5;
        int i13 = i11 & 31;
        for (int i14 = 0; i14 < this.numRows; i14++) {
            int i15 = 0;
            while (i15 < i12) {
                LittleEndianConversions.I2OSP(this.matrix[i14][i15], bArr, i10);
                i15++;
                i10 += 4;
            }
            int i16 = 0;
            while (i16 < i13) {
                bArr[i10] = (byte) ((this.matrix[i14][i12] >>> i16) & 255);
                i16 += 8;
                i10++;
            }
        }
        return bArr;
    }

    public double getHammingWeight() {
        int i4 = this.numColumns & 31;
        int i10 = this.length;
        if (i4 != 0) {
            i10--;
        }
        double d4 = 0.0d;
        double d10 = 0.0d;
        for (int i11 = 0; i11 < this.numRows; i11++) {
            for (int i12 = 0; i12 < i10; i12++) {
                int i13 = this.matrix[i11][i12];
                for (int i14 = 0; i14 < 32; i14++) {
                    d4 += (i13 >>> i14) & 1;
                    d10 += 1.0d;
                }
            }
            int i15 = this.matrix[i11][this.length - 1];
            for (int i16 = 0; i16 < i4; i16++) {
                d4 += (i15 >>> i16) & 1;
                d10 += 1.0d;
            }
        }
        return d4 / d10;
    }

    public int[][] getIntArray() {
        return this.matrix;
    }

    public GF2Matrix getLeftSubMatrix() {
        int i4 = this.numColumns;
        int i10 = this.numRows;
        if (i4 > i10) {
            int i11 = (i10 + 31) >> 5;
            int[][] iArr = (int[][]) Array.newInstance(int.class, i10, i11);
            int i12 = this.numRows;
            int i13 = (1 << (i12 & 31)) - 1;
            if (i13 == 0) {
                i13 = -1;
            }
            for (int i14 = i12 - 1; i14 >= 0; i14--) {
                System.arraycopy(this.matrix[i14], 0, iArr[i14], 0, i11);
                int[] iArr2 = iArr[i14];
                int i15 = i11 - 1;
                iArr2[i15] = iArr2[i15] & i13;
            }
            return new GF2Matrix(this.numRows, iArr);
        }
        throw new ArithmeticException("empty submatrix");
    }

    public int getLength() {
        return this.length;
    }

    public GF2Matrix getRightSubMatrix() {
        int i4;
        int i10 = this.numColumns;
        int i11 = this.numRows;
        if (i10 > i11) {
            int i12 = i11 >> 5;
            int i13 = i11 & 31;
            GF2Matrix gF2Matrix = new GF2Matrix(i11, i10 - i11);
            for (int i14 = this.numRows - 1; i14 >= 0; i14--) {
                int i15 = 0;
                if (i13 != 0) {
                    int i16 = i12;
                    while (true) {
                        i4 = gF2Matrix.length;
                        if (i15 >= i4 - 1) {
                            break;
                        }
                        int[] iArr = gF2Matrix.matrix[i14];
                        int[][] iArr2 = this.matrix;
                        int i17 = i16 + 1;
                        iArr[i15] = (iArr2[i14][i16] >>> i13) | (iArr2[i14][i17] << (32 - i13));
                        i15++;
                        i16 = i17;
                    }
                    int[][] iArr3 = gF2Matrix.matrix;
                    int[][] iArr4 = this.matrix;
                    int i18 = i16 + 1;
                    iArr3[i14][i4 - 1] = iArr4[i14][i16] >>> i13;
                    if (i18 < this.length) {
                        int[] iArr5 = iArr3[i14];
                        int i19 = i4 - 1;
                        iArr5[i19] = iArr5[i19] | (iArr4[i14][i18] << (32 - i13));
                    }
                } else {
                    System.arraycopy(this.matrix[i14], i12, gF2Matrix.matrix[i14], 0, gF2Matrix.length);
                }
            }
            return gF2Matrix;
        }
        throw new ArithmeticException("empty submatrix");
    }

    public int[] getRow(int i4) {
        return this.matrix[i4];
    }

    public int hashCode() {
        int i4 = (((this.numRows * 31) + this.numColumns) * 31) + this.length;
        for (int i10 = 0; i10 < this.numRows; i10++) {
            i4 = (i4 * 31) + Arrays.hashCode(this.matrix[i10]);
        }
        return i4;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public boolean isZero() {
        for (int i4 = 0; i4 < this.numRows; i4++) {
            for (int i10 = 0; i10 < this.length; i10++) {
                if (this.matrix[i4][i10] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public Matrix leftMultiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        int length = vector.length;
        int i4 = this.numRows;
        if (length == i4) {
            int[][] iArr = new int[i4];
            for (int i10 = i4 - 1; i10 >= 0; i10--) {
                iArr[i10] = IntUtils.clone(this.matrix[vector[i10]]);
            }
            return new GF2Matrix(this.numRows, iArr);
        }
        throw new ArithmeticException("length mismatch");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Vector leftMultiply(Vector vector) {
        if (vector instanceof GF2Vector) {
            if (vector.length == this.numRows) {
                int[] vecArray = ((GF2Vector) vector).getVecArray();
                int[] iArr = new int[this.length];
                int i4 = this.numRows;
                int i10 = i4 >> 5;
                int i11 = 1 << (i4 & 31);
                int i12 = 0;
                for (int i13 = 0; i13 < i10; i13++) {
                    int i14 = 1;
                    do {
                        if ((vecArray[i13] & i14) != 0) {
                            for (int i15 = 0; i15 < this.length; i15++) {
                                iArr[i15] = iArr[i15] ^ this.matrix[i12][i15];
                            }
                        }
                        i12++;
                        i14 <<= 1;
                    } while (i14 != 0);
                }
                for (int i16 = 1; i16 != i11; i16 <<= 1) {
                    if ((vecArray[i10] & i16) != 0) {
                        for (int i17 = 0; i17 < this.length; i17++) {
                            iArr[i17] = iArr[i17] ^ this.matrix[i12][i17];
                        }
                    }
                    i12++;
                }
                return new GF2Vector(iArr, this.numColumns);
            }
            throw new ArithmeticException("length mismatch");
        }
        throw new ArithmeticException("vector is not defined over GF(2)");
    }

    public Vector leftMultiplyLeftCompactForm(Vector vector) {
        if (vector instanceof GF2Vector) {
            if (vector.length == this.numRows) {
                int[] vecArray = ((GF2Vector) vector).getVecArray();
                int i4 = this.numRows;
                int[] iArr = new int[((this.numColumns + i4) + 31) >>> 5];
                int i10 = i4 >>> 5;
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    int i13 = 1;
                    do {
                        if ((vecArray[i12] & i13) != 0) {
                            for (int i14 = 0; i14 < this.length; i14++) {
                                iArr[i14] = iArr[i14] ^ this.matrix[i11][i14];
                            }
                            int i15 = this.numColumns;
                            int i16 = (i15 + i11) >>> 5;
                            iArr[i16] = (1 << ((i15 + i11) & 31)) | iArr[i16];
                        }
                        i11++;
                        i13 <<= 1;
                    } while (i13 != 0);
                }
                int i17 = 1 << (this.numRows & 31);
                for (int i18 = 1; i18 != i17; i18 <<= 1) {
                    if ((vecArray[i10] & i18) != 0) {
                        for (int i19 = 0; i19 < this.length; i19++) {
                            iArr[i19] = iArr[i19] ^ this.matrix[i11][i19];
                        }
                        int i20 = this.numColumns;
                        int i21 = (i20 + i11) >>> 5;
                        iArr[i21] = (1 << ((i20 + i11) & 31)) | iArr[i21];
                    }
                    i11++;
                }
                return new GF2Vector(iArr, this.numRows + this.numColumns);
            }
            throw new ArithmeticException("length mismatch");
        }
        throw new ArithmeticException("vector is not defined over GF(2)");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Matrix rightMultiply(Matrix matrix) {
        if (matrix instanceof GF2Matrix) {
            if (matrix.numRows == this.numColumns) {
                GF2Matrix gF2Matrix = (GF2Matrix) matrix;
                GF2Matrix gF2Matrix2 = new GF2Matrix(this.numRows, matrix.numColumns);
                int i4 = this.numColumns & 31;
                int i10 = this.length;
                if (i4 != 0) {
                    i10--;
                }
                for (int i11 = 0; i11 < this.numRows; i11++) {
                    int i12 = 0;
                    for (int i13 = 0; i13 < i10; i13++) {
                        int i14 = this.matrix[i11][i13];
                        for (int i15 = 0; i15 < 32; i15++) {
                            if (((1 << i15) & i14) != 0) {
                                for (int i16 = 0; i16 < gF2Matrix.length; i16++) {
                                    int[] iArr = gF2Matrix2.matrix[i11];
                                    iArr[i16] = iArr[i16] ^ gF2Matrix.matrix[i12][i16];
                                }
                            }
                            i12++;
                        }
                    }
                    int i17 = this.matrix[i11][this.length - 1];
                    for (int i18 = 0; i18 < i4; i18++) {
                        if (((1 << i18) & i17) != 0) {
                            for (int i19 = 0; i19 < gF2Matrix.length; i19++) {
                                int[] iArr2 = gF2Matrix2.matrix[i11];
                                iArr2[i19] = iArr2[i19] ^ gF2Matrix.matrix[i12][i19];
                            }
                        }
                        i12++;
                    }
                }
                return gF2Matrix2;
            }
            throw new ArithmeticException("length mismatch");
        }
        throw new ArithmeticException("matrix is not defined over GF(2)");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Matrix rightMultiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        int length = vector.length;
        int i4 = this.numColumns;
        if (length == i4) {
            GF2Matrix gF2Matrix = new GF2Matrix(this.numRows, i4);
            for (int i10 = this.numColumns - 1; i10 >= 0; i10--) {
                int i11 = i10 >>> 5;
                int i12 = i10 & 31;
                int i13 = vector[i10] >>> 5;
                int i14 = vector[i10] & 31;
                for (int i15 = this.numRows - 1; i15 >= 0; i15--) {
                    int[] iArr = gF2Matrix.matrix[i15];
                    iArr[i11] = iArr[i11] | (((this.matrix[i15][i13] >>> i14) & 1) << i12);
                }
            }
            return gF2Matrix;
        }
        throw new ArithmeticException("length mismatch");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Vector rightMultiply(Vector vector) {
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (vector.length != this.numColumns) {
            throw new ArithmeticException("length mismatch");
        }
        int[] vecArray = ((GF2Vector) vector).getVecArray();
        int[] iArr = new int[(this.numRows + 31) >>> 5];
        int i4 = 0;
        while (true) {
            int i10 = this.numRows;
            if (i4 >= i10) {
                return new GF2Vector(iArr, i10);
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.length; i12++) {
                i11 ^= this.matrix[i4][i12] & vecArray[i12];
            }
            int i13 = 0;
            for (int i14 = 0; i14 < 32; i14++) {
                i13 ^= (i11 >>> i14) & 1;
            }
            if (i13 == 1) {
                int i15 = i4 >>> 5;
                iArr[i15] = iArr[i15] | (1 << (i4 & 31));
            }
            i4++;
        }
    }

    public Vector rightMultiplyRightCompactForm(Vector vector) {
        int i4;
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (vector.length != this.numColumns + this.numRows) {
            throw new ArithmeticException("length mismatch");
        }
        int[] vecArray = ((GF2Vector) vector).getVecArray();
        int i10 = this.numRows;
        int[] iArr = new int[(i10 + 31) >>> 5];
        int i11 = i10 >> 5;
        int i12 = i10 & 31;
        int i13 = 0;
        while (true) {
            int i14 = this.numRows;
            if (i13 >= i14) {
                return new GF2Vector(iArr, i14);
            }
            int i15 = i13 >> 5;
            int i16 = i13 & 31;
            int i17 = (vecArray[i15] >>> i16) & 1;
            int i18 = i11;
            int i19 = 0;
            if (i12 != 0) {
                while (true) {
                    i4 = this.length;
                    if (i19 >= i4 - 1) {
                        break;
                    }
                    int i20 = i18 + 1;
                    i17 ^= ((vecArray[i18] >>> i12) | (vecArray[i20] << (32 - i12))) & this.matrix[i13][i19];
                    i19++;
                    i18 = i20;
                }
                int i21 = i18 + 1;
                int i22 = vecArray[i18] >>> i12;
                if (i21 < vecArray.length) {
                    i22 |= vecArray[i21] << (32 - i12);
                }
                i17 ^= this.matrix[i13][i4 - 1] & i22;
            } else {
                while (i19 < this.length) {
                    i17 ^= vecArray[i18] & this.matrix[i13][i19];
                    i19++;
                    i18++;
                }
            }
            int i23 = 0;
            for (int i24 = 0; i24 < 32; i24++) {
                i23 ^= i17 & 1;
                i17 >>>= 1;
            }
            if (i23 == 1) {
                iArr[i15] = iArr[i15] | (1 << i16);
            }
            i13++;
        }
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public String toString() {
        int i4 = this.numColumns & 31;
        int i10 = this.length;
        if (i4 != 0) {
            i10--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < this.numRows; i11++) {
            stringBuffer.append(i11 + ": ");
            for (int i12 = 0; i12 < i10; i12++) {
                int i13 = this.matrix[i11][i12];
                for (int i14 = 0; i14 < 32; i14++) {
                    if (((i13 >>> i14) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
            }
            int i15 = this.matrix[i11][this.length - 1];
            for (int i16 = 0; i16 < i4; i16++) {
                if (((i15 >>> i16) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }
}
