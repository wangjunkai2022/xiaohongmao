package org.bouncycastle.pqc.math.linearalgebra;

/* loaded from: classes5.dex */
public final class BigEndianConversions {
    private BigEndianConversions() {
    }

    public static void I2OSP(int i4, byte[] bArr, int i10) {
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i4 >>> 24);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i4 >>> 16);
        bArr[i12] = (byte) (i4 >>> 8);
        bArr[i12 + 1] = (byte) i4;
    }

    public static void I2OSP(int i4, byte[] bArr, int i10, int i11) {
        int i12 = i11 - 1;
        for (int i13 = i12; i13 >= 0; i13--) {
            bArr[i10 + i13] = (byte) (i4 >>> ((i12 - i13) * 8));
        }
    }

    public static void I2OSP(long j4, byte[] bArr, int i4) {
        int i10 = i4 + 1;
        bArr[i4] = (byte) (j4 >>> 56);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (j4 >>> 48);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (j4 >>> 40);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (j4 >>> 32);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (j4 >>> 24);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (j4 >>> 16);
        bArr[i15] = (byte) (j4 >>> 8);
        bArr[i15 + 1] = (byte) j4;
    }

    public static byte[] I2OSP(int i4) {
        return new byte[]{(byte) (i4 >>> 24), (byte) (i4 >>> 16), (byte) (i4 >>> 8), (byte) i4};
    }

    public static byte[] I2OSP(int i4, int i10) throws ArithmeticException {
        if (i4 < 0) {
            return null;
        }
        int ceilLog256 = IntegerFunctions.ceilLog256(i4);
        if (ceilLog256 <= i10) {
            byte[] bArr = new byte[i10];
            int i11 = i10 - 1;
            for (int i12 = i11; i12 >= i10 - ceilLog256; i12--) {
                bArr[i12] = (byte) (i4 >>> ((i11 - i12) * 8));
            }
            return bArr;
        }
        throw new ArithmeticException("Cannot encode given integer into specified number of octets.");
    }

    public static byte[] I2OSP(long j4) {
        return new byte[]{(byte) (j4 >>> 56), (byte) (j4 >>> 48), (byte) (j4 >>> 40), (byte) (j4 >>> 32), (byte) (j4 >>> 24), (byte) (j4 >>> 16), (byte) (j4 >>> 8), (byte) j4};
    }

    public static int OS2IP(byte[] bArr) {
        if (bArr.length <= 4) {
            if (bArr.length == 0) {
                return 0;
            }
            int i4 = 0;
            for (int i10 = 0; i10 < bArr.length; i10++) {
                i4 |= (bArr[i10] & 255) << (((bArr.length - 1) - i10) * 8);
            }
            return i4;
        }
        throw new ArithmeticException("invalid input length");
    }

    public static int OS2IP(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        int i12 = ((bArr[i4] & 255) << 24) | ((bArr[i10] & 255) << 16);
        return (bArr[i11 + 1] & 255) | i12 | ((bArr[i11] & 255) << 8);
    }

    public static int OS2IP(byte[] bArr, int i4, int i10) {
        if (bArr.length == 0 || bArr.length < (i4 + i10) - 1) {
            return 0;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 |= (bArr[i4 + i12] & 255) << (((i10 - i12) - 1) * 8);
        }
        return i11;
    }

    public static long OS2LIP(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        int i14 = i13 + 1;
        int i15 = i14 + 1;
        long j4 = ((bArr[i4] & 255) << 56) | ((bArr[i10] & 255) << 48) | ((bArr[i11] & 255) << 40) | ((bArr[i12] & 255) << 32) | ((255 & bArr[i13]) << 24) | ((bArr[i14] & 255) << 16);
        return (bArr[i15 + 1] & 255) | j4 | ((bArr[i15] & 255) << 8);
    }

    public static byte[] toByteArray(int[] iArr) {
        byte[] bArr = new byte[iArr.length << 2];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            I2OSP(iArr[i4], bArr, i4 << 2);
        }
        return bArr;
    }

    public static byte[] toByteArray(int[] iArr, int i4) {
        int length = iArr.length;
        byte[] bArr = new byte[i4];
        int i10 = 0;
        int i11 = 0;
        while (i10 <= length - 2) {
            I2OSP(iArr[i10], bArr, i11);
            i10++;
            i11 += 4;
        }
        I2OSP(iArr[length - 1], bArr, i11, i4 - i11);
        return bArr;
    }

    public static int[] toIntArray(byte[] bArr) {
        int length = (bArr.length + 3) / 4;
        int length2 = bArr.length & 3;
        int[] iArr = new int[length];
        int i4 = 0;
        int i10 = 0;
        while (i4 <= length - 2) {
            iArr[i4] = OS2IP(bArr, i10);
            i4++;
            i10 += 4;
        }
        int i11 = length - 1;
        if (length2 != 0) {
            iArr[i11] = OS2IP(bArr, i10, length2);
        } else {
            iArr[i11] = OS2IP(bArr, i10);
        }
        return iArr;
    }
}
