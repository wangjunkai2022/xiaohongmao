package org.bouncycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;

/* loaded from: classes5.dex */
public class GF2mMatrix extends Matrix {
    protected GF2mField field;
    protected int[][] matrix;

    public GF2mMatrix(GF2mField gF2mField, byte[] bArr) {
        this.field = gF2mField;
        int i4 = 8;
        int i10 = 1;
        while (gF2mField.getDegree() > i4) {
            i10++;
            i4 += 8;
        }
        if (bArr.length < 5) {
            throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
        }
        int i11 = ((((bArr[3] & 255) << 24) ^ ((bArr[2] & 255) << 16)) ^ ((bArr[1] & 255) << 8)) ^ (bArr[0] & 255);
        this.numRows = i11;
        int i12 = i10 * i11;
        if (i11 > 0) {
            int i13 = 4;
            if ((bArr.length - 4) % i12 == 0) {
                int length = (bArr.length - 4) / i12;
                this.numColumns = length;
                this.matrix = (int[][]) Array.newInstance(int.class, i11, length);
                for (int i14 = 0; i14 < this.numRows; i14++) {
                    for (int i15 = 0; i15 < this.numColumns; i15++) {
                        int i16 = 0;
                        while (i16 < i4) {
                            int[] iArr = this.matrix[i14];
                            iArr[i15] = iArr[i15] ^ ((bArr[i13] & 255) << i16);
                            i16 += 8;
                            i13++;
                        }
                        if (!this.field.isElementOfThisField(this.matrix[i14][i15])) {
                            throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
                        }
                    }
                }
                return;
            }
        }
        throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
    }

    protected GF2mMatrix(GF2mField gF2mField, int[][] iArr) {
        this.field = gF2mField;
        this.matrix = iArr;
        this.numRows = iArr.length;
        this.numColumns = iArr[0].length;
    }

    public GF2mMatrix(GF2mMatrix gF2mMatrix) {
        int i4 = gF2mMatrix.numRows;
        this.numRows = i4;
        this.numColumns = gF2mMatrix.numColumns;
        this.field = gF2mMatrix.field;
        this.matrix = new int[i4];
        for (int i10 = 0; i10 < this.numRows; i10++) {
            this.matrix[i10] = IntUtils.clone(gF2mMatrix.matrix[i10]);
        }
    }

    private void addToRow(int[] iArr, int[] iArr2) {
        for (int length = iArr2.length - 1; length >= 0; length--) {
            iArr2[length] = this.field.add(iArr[length], iArr2[length]);
        }
    }

    private int[] multRowWithElement(int[] iArr, int i4) {
        int[] iArr2 = new int[iArr.length];
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr2[length] = this.field.mult(iArr[length], i4);
        }
        return iArr2;
    }

    private void multRowWithElementThis(int[] iArr, int i4) {
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr[length] = this.field.mult(iArr[length], i4);
        }
    }

    private static void swapColumns(int[][] iArr, int i4, int i10) {
        int[] iArr2 = iArr[i4];
        iArr[i4] = iArr[i10];
        iArr[i10] = iArr2;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Matrix computeInverse() {
        int i4;
        int i10 = this.numRows;
        if (i10 == this.numColumns) {
            int[][] iArr = (int[][]) Array.newInstance(int.class, i10, i10);
            for (int i11 = this.numRows - 1; i11 >= 0; i11--) {
                iArr[i11] = IntUtils.clone(this.matrix[i11]);
            }
            int i12 = this.numRows;
            int[][] iArr2 = (int[][]) Array.newInstance(int.class, i12, i12);
            for (int i13 = this.numRows - 1; i13 >= 0; i13--) {
                iArr2[i13][i13] = 1;
            }
            for (int i14 = 0; i14 < this.numRows; i14++) {
                if (iArr[i14][i14] == 0) {
                    int i15 = i14 + 1;
                    boolean z9 = false;
                    while (i15 < this.numRows) {
                        if (iArr[i15][i14] != 0) {
                            swapColumns(iArr, i14, i15);
                            swapColumns(iArr2, i14, i15);
                            i15 = this.numRows;
                            z9 = true;
                        }
                        i15++;
                    }
                    if (!z9) {
                        throw new ArithmeticException("Matrix is not invertible.");
                    }
                }
                int inverse = this.field.inverse(iArr[i14][i14]);
                multRowWithElementThis(iArr[i14], inverse);
                multRowWithElementThis(iArr2[i14], inverse);
                for (int i16 = 0; i16 < this.numRows; i16++) {
                    if (i16 != i14 && (i4 = iArr[i16][i14]) != 0) {
                        int[] multRowWithElement = multRowWithElement(iArr[i14], i4);
                        int[] multRowWithElement2 = multRowWithElement(iArr2[i14], i4);
                        addToRow(multRowWithElement, iArr[i16]);
                        addToRow(multRowWithElement2, iArr2[i16]);
                    }
                }
            }
            return new GF2mMatrix(this.field, iArr2);
        }
        throw new ArithmeticException("Matrix is not invertible.");
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof GF2mMatrix)) {
            GF2mMatrix gF2mMatrix = (GF2mMatrix) obj;
            if (this.field.equals(gF2mMatrix.field)) {
                int i4 = gF2mMatrix.numRows;
                int i10 = this.numColumns;
                if (i4 == i10 && gF2mMatrix.numColumns == i10) {
                    for (int i11 = 0; i11 < this.numRows; i11++) {
                        for (int i12 = 0; i12 < this.numColumns; i12++) {
                            if (this.matrix[i11][i12] != gF2mMatrix.matrix[i11][i12]) {
                                return false;
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public byte[] getEncoded() {
        int i4 = 8;
        int i10 = 1;
        while (this.field.getDegree() > i4) {
            i10++;
            i4 += 8;
        }
        int i11 = this.numRows;
        int i12 = this.numColumns * i11 * i10;
        int i13 = 4;
        byte[] bArr = new byte[i12 + 4];
        bArr[0] = (byte) (i11 & 255);
        bArr[1] = (byte) ((i11 >>> 8) & 255);
        bArr[2] = (byte) ((i11 >>> 16) & 255);
        bArr[3] = (byte) ((i11 >>> 24) & 255);
        for (int i14 = 0; i14 < this.numRows; i14++) {
            for (int i15 = 0; i15 < this.numColumns; i15++) {
                int i16 = 0;
                while (i16 < i4) {
                    bArr[i13] = (byte) (this.matrix[i14][i15] >>> i16);
                    i16 += 8;
                    i13++;
                }
            }
        }
        return bArr;
    }

    public int hashCode() {
        int hashCode = (((this.field.hashCode() * 31) + this.numRows) * 31) + this.numColumns;
        for (int i4 = 0; i4 < this.numRows; i4++) {
            for (int i10 = 0; i10 < this.numColumns; i10++) {
                hashCode = (hashCode * 31) + this.matrix[i4][i10];
            }
        }
        return hashCode;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public boolean isZero() {
        for (int i4 = 0; i4 < this.numRows; i4++) {
            for (int i10 = 0; i10 < this.numColumns; i10++) {
                if (this.matrix[i4][i10] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Vector leftMultiply(Vector vector) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Matrix rightMultiply(Matrix matrix) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Matrix rightMultiply(Permutation permutation) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public Vector rightMultiply(Vector vector) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Matrix
    public String toString() {
        String str = this.numRows + " x " + this.numColumns + " Matrix over " + this.field.toString() + ": \n";
        for (int i4 = 0; i4 < this.numRows; i4++) {
            for (int i10 = 0; i10 < this.numColumns; i10++) {
                str = str + this.field.elementToStr(this.matrix[i4][i10]) + " : ";
            }
            str = str + "\n";
        }
        return str;
    }
}
