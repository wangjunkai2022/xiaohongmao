package org.bouncycastle.pqc.math.linearalgebra;

/* loaded from: classes5.dex */
public final class LittleEndianConversions {
    private LittleEndianConversions() {
    }

    public static void I2OSP(int i4, byte[] bArr, int i10) {
        int i11 = i10 + 1;
        bArr[i10] = (byte) i4;
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i4 >>> 8);
        bArr[i12] = (byte) (i4 >>> 16);
        bArr[i12 + 1] = (byte) (i4 >>> 24);
    }

    public static void I2OSP(int i4, byte[] bArr, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            bArr[i10 + i12] = (byte) (i4 >>> (i12 * 8));
        }
    }

    public static void I2OSP(long j4, byte[] bArr, int i4) {
        int i10 = i4 + 1;
        bArr[i4] = (byte) j4;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (j4 >>> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (j4 >>> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (j4 >>> 24);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (j4 >>> 32);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (j4 >>> 40);
        bArr[i15] = (byte) (j4 >>> 48);
        bArr[i15 + 1] = (byte) (j4 >>> 56);
    }

    public static byte[] I2OSP(int i4) {
        return new byte[]{(byte) i4, (byte) (i4 >>> 8), (byte) (i4 >>> 16), (byte) (i4 >>> 24)};
    }

    public static byte[] I2OSP(long j4) {
        return new byte[]{(byte) j4, (byte) (j4 >>> 8), (byte) (j4 >>> 16), (byte) (j4 >>> 24), (byte) (j4 >>> 32), (byte) (j4 >>> 40), (byte) (j4 >>> 48), (byte) (j4 >>> 56)};
    }

    public static int OS2IP(byte[] bArr) {
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    public static int OS2IP(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        int i12 = (bArr[i4] & 255) | ((bArr[i10] & 255) << 8);
        return ((bArr[i11 + 1] & 255) << 24) | i12 | ((bArr[i11] & 255) << 16);
    }

    public static int OS2IP(byte[] bArr, int i4, int i10) {
        int i11 = 0;
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            i11 |= (bArr[i4 + i12] & 255) << (i12 * 8);
        }
        return i11;
    }

    public static long OS2LIP(byte[] bArr, int i4) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        long j4 = bArr[i4] & 255;
        long j10 = j4 | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 24);
        int i15 = i4 + 1 + 1 + 1 + 1 + 1 + 1;
        return ((bArr[i15 + 1] & 255) << 56) | j10 | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 40) | ((bArr[i15] & 255) << 48);
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
