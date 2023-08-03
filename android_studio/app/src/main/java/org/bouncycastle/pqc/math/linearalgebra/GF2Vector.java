package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class GF2Vector extends Vector {

    /* renamed from: v  reason: collision with root package name */
    private int[] f91576v;

    public GF2Vector(int i4) {
        if (i4 < 0) {
            throw new ArithmeticException("Negative length.");
        }
        this.length = i4;
        this.f91576v = new int[(i4 + 31) >> 5];
    }

    public GF2Vector(int i4, int i10, SecureRandom secureRandom) {
        if (i10 > i4) {
            throw new ArithmeticException("The hamming weight is greater than the length of vector.");
        }
        this.length = i4;
        this.f91576v = new int[(i4 + 31) >> 5];
        int[] iArr = new int[i4];
        for (int i11 = 0; i11 < i4; i11++) {
            iArr[i11] = i11;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            int nextInt = RandUtils.nextInt(secureRandom, i4);
            setBit(iArr[nextInt]);
            i4--;
            iArr[nextInt] = iArr[i4];
        }
    }

    public GF2Vector(int i4, SecureRandom secureRandom) {
        this.length = i4;
        int i10 = (i4 + 31) >> 5;
        this.f91576v = new int[i10];
        int i11 = i10 - 1;
        for (int i12 = i11; i12 >= 0; i12--) {
            this.f91576v[i12] = secureRandom.nextInt();
        }
        int i13 = i4 & 31;
        if (i13 != 0) {
            int[] iArr = this.f91576v;
            iArr[i11] = ((1 << i13) - 1) & iArr[i11];
        }
    }

    public GF2Vector(int i4, int[] iArr) {
        if (i4 < 0) {
            throw new ArithmeticException("negative length");
        }
        this.length = i4;
        int i10 = (i4 + 31) >> 5;
        if (iArr.length != i10) {
            throw new ArithmeticException("length mismatch");
        }
        int[] clone = IntUtils.clone(iArr);
        this.f91576v = clone;
        int i11 = i4 & 31;
        if (i11 != 0) {
            int i12 = i10 - 1;
            clone[i12] = ((1 << i11) - 1) & clone[i12];
        }
    }

    public GF2Vector(GF2Vector gF2Vector) {
        this.length = gF2Vector.length;
        this.f91576v = IntUtils.clone(gF2Vector.f91576v);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GF2Vector(int[] iArr, int i4) {
        this.f91576v = iArr;
        this.length = i4;
    }

    public static GF2Vector OS2VP(int i4, byte[] bArr) {
        if (i4 >= 0) {
            if (bArr.length <= ((i4 + 7) >> 3)) {
                return new GF2Vector(i4, LittleEndianConversions.toIntArray(bArr));
            }
            throw new ArithmeticException("length mismatch");
        }
        throw new ArithmeticException("negative length");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public Vector add(Vector vector) {
        if (vector instanceof GF2Vector) {
            GF2Vector gF2Vector = (GF2Vector) vector;
            if (this.length == gF2Vector.length) {
                int[] clone = IntUtils.clone(gF2Vector.f91576v);
                for (int length = clone.length - 1; length >= 0; length--) {
                    clone[length] = clone[length] ^ this.f91576v[length];
                }
                return new GF2Vector(this.length, clone);
            }
            throw new ArithmeticException("length mismatch");
        }
        throw new ArithmeticException("vector is not defined over GF(2)");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public boolean equals(Object obj) {
        if (obj instanceof GF2Vector) {
            GF2Vector gF2Vector = (GF2Vector) obj;
            return this.length == gF2Vector.length && IntUtils.equals(this.f91576v, gF2Vector.f91576v);
        }
        return false;
    }

    public GF2Vector extractLeftVector(int i4) {
        int i10 = this.length;
        if (i4 <= i10) {
            if (i4 == i10) {
                return new GF2Vector(this);
            }
            GF2Vector gF2Vector = new GF2Vector(i4);
            int i11 = i4 >> 5;
            int i12 = i4 & 31;
            System.arraycopy(this.f91576v, 0, gF2Vector.f91576v, 0, i11);
            if (i12 != 0) {
                gF2Vector.f91576v[i11] = ((1 << i12) - 1) & this.f91576v[i11];
            }
            return gF2Vector;
        }
        throw new ArithmeticException("invalid length");
    }

    public GF2Vector extractRightVector(int i4) {
        int i10;
        int i11 = this.length;
        if (i4 <= i11) {
            if (i4 == i11) {
                return new GF2Vector(this);
            }
            GF2Vector gF2Vector = new GF2Vector(i4);
            int i12 = this.length;
            int i13 = (i12 - i4) >> 5;
            int i14 = (i12 - i4) & 31;
            int i15 = (i4 + 31) >> 5;
            int i16 = 0;
            if (i14 != 0) {
                while (true) {
                    i10 = i15 - 1;
                    if (i16 >= i10) {
                        break;
                    }
                    int[] iArr = gF2Vector.f91576v;
                    int[] iArr2 = this.f91576v;
                    int i17 = i13 + 1;
                    iArr[i16] = (iArr2[i13] >>> i14) | (iArr2[i17] << (32 - i14));
                    i16++;
                    i13 = i17;
                }
                int[] iArr3 = gF2Vector.f91576v;
                int[] iArr4 = this.f91576v;
                int i18 = i13 + 1;
                iArr3[i10] = iArr4[i13] >>> i14;
                if (i18 < iArr4.length) {
                    iArr3[i10] = (iArr4[i18] << (32 - i14)) | iArr3[i10];
                }
            } else {
                System.arraycopy(this.f91576v, i13, gF2Vector.f91576v, 0, i15);
            }
            return gF2Vector;
        }
        throw new ArithmeticException("invalid length");
    }

    public GF2Vector extractVector(int[] iArr) {
        int length = iArr.length;
        if (iArr[length - 1] <= this.length) {
            GF2Vector gF2Vector = new GF2Vector(length);
            for (int i4 = 0; i4 < length; i4++) {
                if ((this.f91576v[iArr[i4] >> 5] & (1 << (iArr[i4] & 31))) != 0) {
                    int[] iArr2 = gF2Vector.f91576v;
                    int i10 = i4 >> 5;
                    iArr2[i10] = (1 << (i4 & 31)) | iArr2[i10];
                }
            }
            return gF2Vector;
        }
        throw new ArithmeticException("invalid index set");
    }

    public int getBit(int i4) {
        if (i4 < this.length) {
            int i10 = i4 >> 5;
            int i11 = i4 & 31;
            return (this.f91576v[i10] & (1 << i11)) >>> i11;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public byte[] getEncoded() {
        return LittleEndianConversions.toByteArray(this.f91576v, (this.length + 7) >> 3);
    }

    public int getHammingWeight() {
        int i4 = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f91576v;
            if (i4 >= iArr.length) {
                return i10;
            }
            int i11 = iArr[i4];
            for (int i12 = 0; i12 < 32; i12++) {
                if ((i11 & 1) != 0) {
                    i10++;
                }
                i11 >>>= 1;
            }
            i4++;
        }
    }

    public int[] getVecArray() {
        return this.f91576v;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public int hashCode() {
        return (this.length * 31) + Arrays.hashCode(this.f91576v);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public boolean isZero() {
        for (int length = this.f91576v.length - 1; length >= 0; length--) {
            if (this.f91576v[length] != 0) {
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
            GF2Vector gF2Vector = new GF2Vector(i4);
            for (int i10 = 0; i10 < vector.length; i10++) {
                if ((this.f91576v[vector[i10] >> 5] & (1 << (vector[i10] & 31))) != 0) {
                    int[] iArr = gF2Vector.f91576v;
                    int i11 = i10 >> 5;
                    iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
                }
            }
            return gF2Vector;
        }
        throw new ArithmeticException("length mismatch");
    }

    public void setBit(int i4) {
        if (i4 >= this.length) {
            throw new IndexOutOfBoundsException();
        }
        int[] iArr = this.f91576v;
        int i10 = i4 >> 5;
        iArr[i10] = (1 << (i4 & 31)) | iArr[i10];
    }

    public GF2mVector toExtensionFieldVector(GF2mField gF2mField) {
        int degree = gF2mField.getDegree();
        int i4 = this.length;
        if (i4 % degree == 0) {
            int i10 = i4 / degree;
            int[] iArr = new int[i10];
            int i11 = 0;
            for (int i12 = i10 - 1; i12 >= 0; i12--) {
                for (int degree2 = gF2mField.getDegree() - 1; degree2 >= 0; degree2--) {
                    if (((this.f91576v[i11 >>> 5] >>> (i11 & 31)) & 1) == 1) {
                        iArr[i12] = iArr[i12] ^ (1 << degree2);
                    }
                    i11++;
                }
            }
            return new GF2mVector(gF2mField, iArr);
        }
        throw new ArithmeticException("conversion is impossible");
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Vector
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < this.length; i4++) {
            if (i4 != 0 && (i4 & 31) == 0) {
                stringBuffer.append(' ');
            }
            stringBuffer.append((this.f91576v[i4 >> 5] & (1 << (i4 & 31))) == 0 ? '0' : '1');
        }
        return stringBuffer.toString();
    }
}
