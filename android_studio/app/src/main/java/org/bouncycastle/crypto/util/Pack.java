package org.bouncycastle.crypto.util;

import com.google.common.base.c;

/* loaded from: classes4.dex */
public abstract class Pack {
    public static int bigEndianToInt(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        return (bArr[i11 + 1] & 255) | (bArr[i4] << c.B) | ((bArr[i10] & 255) << 16) | ((bArr[i11] & 255) << 8);
    }

    public static void bigEndianToInt(byte[] bArr, int i4, int[] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr[i10] = bigEndianToInt(bArr, i4);
            i4 += 4;
        }
    }

    public static long bigEndianToLong(byte[] bArr, int i4) {
        int bigEndianToInt = bigEndianToInt(bArr, i4);
        return (bigEndianToInt(bArr, i4 + 4) & 4294967295L) | ((bigEndianToInt & 4294967295L) << 32);
    }

    public static void bigEndianToLong(byte[] bArr, int i4, long[] jArr) {
        for (int i10 = 0; i10 < jArr.length; i10++) {
            jArr[i10] = bigEndianToLong(bArr, i4);
            i4 += 8;
        }
    }

    public static void intToBigEndian(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) (i4 >>> 24);
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i4 >>> 16);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i4 >>> 8);
        bArr[i12 + 1] = (byte) i4;
    }

    public static void intToBigEndian(int[] iArr, byte[] bArr, int i4) {
        for (int i10 : iArr) {
            intToBigEndian(i10, bArr, i4);
            i4 += 4;
        }
    }

    public static byte[] intToBigEndian(int i4) {
        byte[] bArr = new byte[4];
        intToBigEndian(i4, bArr, 0);
        return bArr;
    }

    public static byte[] intToBigEndian(int[] iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        intToBigEndian(iArr, bArr, 0);
        return bArr;
    }

    public static void intToLittleEndian(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) i4;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i4 >>> 8);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i4 >>> 16);
        bArr[i12 + 1] = (byte) (i4 >>> 24);
    }

    public static void intToLittleEndian(int[] iArr, byte[] bArr, int i4) {
        for (int i10 : iArr) {
            intToLittleEndian(i10, bArr, i4);
            i4 += 4;
        }
    }

    public static byte[] intToLittleEndian(int i4) {
        byte[] bArr = new byte[4];
        intToLittleEndian(i4, bArr, 0);
        return bArr;
    }

    public static byte[] intToLittleEndian(int[] iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        intToLittleEndian(iArr, bArr, 0);
        return bArr;
    }

    public static int littleEndianToInt(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        return (bArr[i11 + 1] << c.B) | (bArr[i4] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16);
    }

    public static void littleEndianToInt(byte[] bArr, int i4, int[] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr[i10] = littleEndianToInt(bArr, i4);
            i4 += 4;
        }
    }

    public static void littleEndianToInt(byte[] bArr, int i4, int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i10 + i12] = littleEndianToInt(bArr, i4);
            i4 += 4;
        }
    }

    public static long littleEndianToLong(byte[] bArr, int i4) {
        return ((littleEndianToInt(bArr, i4 + 4) & 4294967295L) << 32) | (littleEndianToInt(bArr, i4) & 4294967295L);
    }

    public static void littleEndianToLong(byte[] bArr, int i4, long[] jArr) {
        for (int i10 = 0; i10 < jArr.length; i10++) {
            jArr[i10] = littleEndianToLong(bArr, i4);
            i4 += 8;
        }
    }

    public static void longToBigEndian(long j4, byte[] bArr, int i4) {
        intToBigEndian((int) (j4 >>> 32), bArr, i4);
        intToBigEndian((int) (j4 & 4294967295L), bArr, i4 + 4);
    }

    public static void longToBigEndian(long[] jArr, byte[] bArr, int i4) {
        for (long j4 : jArr) {
            longToBigEndian(j4, bArr, i4);
            i4 += 8;
        }
    }

    public static byte[] longToBigEndian(long j4) {
        byte[] bArr = new byte[8];
        longToBigEndian(j4, bArr, 0);
        return bArr;
    }

    public static byte[] longToBigEndian(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        longToBigEndian(jArr, bArr, 0);
        return bArr;
    }

    public static void longToLittleEndian(long j4, byte[] bArr, int i4) {
        intToLittleEndian((int) (4294967295L & j4), bArr, i4);
        intToLittleEndian((int) (j4 >>> 32), bArr, i4 + 4);
    }

    public static void longToLittleEndian(long[] jArr, byte[] bArr, int i4) {
        for (long j4 : jArr) {
            longToLittleEndian(j4, bArr, i4);
            i4 += 8;
        }
    }

    public static byte[] longToLittleEndian(long j4) {
        byte[] bArr = new byte[8];
        longToLittleEndian(j4, bArr, 0);
        return bArr;
    }

    public static byte[] longToLittleEndian(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        longToLittleEndian(jArr, bArr, 0);
        return bArr;
    }
}
