package org.bouncycastle.pqc.math.linearalgebra;

import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class GF2mVector extends Vector {
    private GF2mField field;
    private int[] vector;

    public GF2mVector(GF2mField gF2mField, byte[] bArr) {
        this.field = new GF2mField(gF2mField);
        int i4 = 8;
        int i10 = 1;
        while (gF2mField.getDegree() > i4) {
            i10++;
            i4 += 8;
        }
        if (bArr.length % i10 != 0) {
            throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
        }
        int length = bArr.length / i10;
        this.length = length;
        this.vector = new int[length];
        int i11 = 0;
        for (int i12 = 0; i12 < this.vector.length; i12++) {
            int i13 = 0;
            while (i13 < i4) {
                int[] iArr = this.vector;
                iArr[i12] = ((bArr[i11] & 255) << i13) | iArr[i12];
                i13 += 8;
                i11++;
            }
            if (!gF2mField.isElementOfThisField(this.vector[i12])) {
                throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
            }
        }
    }

    public GF2mVector(GF2mField gF2mField, int[] iArr) {
        this.field = gF2mField;
        this.length = iArr.length;
        for (int length = iArr.length - 1; length >= 0; length--) {
            if (!gF2mField.isElementOfThisField(iArr[length])) {
                throw new ArithmeticException("Element array is not specified over the given finite field.");
            }
        }
        this.vector = IntUtils.clone(iArr);
    }

    public GF2mVector(GF2mVector gF2mVector) {
        this.field = new GF2mField(gF2mVector.field);
        this.length = gF2mVector.length;
        this.vector = IntUtils.clone(gF2mVector.vector);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public Vector add(Vector vector) {
        throw new RuntimeException("not implemented");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public boolean equals(Object obj) {
        if (obj instanceof GF2mVector) {
            GF2mVector gF2mVector = (GF2mVector) obj;
            if (this.field.equals(gF2mVector.field)) {
                return IntUtils.equals(this.vector, gF2mVector.vector);
            }
            return false;
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public byte[] getEncoded() {
        int i4 = 8;
        int i10 = 1;
        while (this.field.getDegree() > i4) {
            i10++;
            i4 += 8;
        }
        byte[] bArr = new byte[this.vector.length * i10];
        int i11 = 0;
        for (int i12 = 0; i12 < this.vector.length; i12++) {
            int i13 = 0;
            while (i13 < i4) {
                bArr[i11] = (byte) (this.vector[i12] >>> i13);
                i13 += 8;
                i11++;
            }
        }
        return bArr;
    }

    public GF2mField getField() {
        return this.field;
    }

    public int[] getIntArrayForm() {
        return IntUtils.clone(this.vector);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public int hashCode() {
        return (this.field.hashCode() * 31) + Arrays.hashCode(this.vector);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public boolean isZero() {
        for (int length = this.vector.length - 1; length >= 0; length--) {
            if (this.vector[length] != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public Vector multiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        int i4 = this.length;
        if (i4 == vector.length) {
            int[] iArr = new int[i4];
            for (int i10 = 0; i10 < vector.length; i10++) {
                iArr[i10] = this.vector[vector[i10]];
            }
            return new GF2mVector(this.field, iArr);
        }
        throw new ArithmeticException("permutation size and vector size mismatch");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < this.vector.length; i4++) {
            for (int i10 = 0; i10 < this.field.getDegree(); i10++) {
                stringBuffer.append(((1 << (i10 & 31)) & this.vector[i4]) != 0 ? '1' : '0');
            }
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }
}
