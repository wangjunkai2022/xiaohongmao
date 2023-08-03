package org.bouncycastle.pqc.crypto.rainbow.util;

import java.lang.reflect.Array;

/* loaded from: classes5.dex */
public class RainbowUtil {
    public static byte[] convertArray(short[] sArr) {
        byte[] bArr = new byte[sArr.length];
        for (int i4 = 0; i4 < sArr.length; i4++) {
            bArr[i4] = (byte) sArr[i4];
        }
        return bArr;
    }

    public static short[] convertArray(byte[] bArr) {
        short[] sArr = new short[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            sArr[i4] = (short) (bArr[i4] & 255);
        }
        return sArr;
    }

    public static byte[][] convertArray(short[][] sArr) {
        byte[][] bArr = (byte[][]) Array.newInstance(byte.class, sArr.length, sArr[0].length);
        for (int i4 = 0; i4 < sArr.length; i4++) {
            for (int i10 = 0; i10 < sArr[0].length; i10++) {
                bArr[i4][i10] = (byte) sArr[i4][i10];
            }
        }
        return bArr;
    }

    public static short[][] convertArray(byte[][] bArr) {
        short[][] sArr = (short[][]) Array.newInstance(short.class, bArr.length, bArr[0].length);
        for (int i4 = 0; i4 < bArr.length; i4++) {
            for (int i10 = 0; i10 < bArr[0].length; i10++) {
                sArr[i4][i10] = (short) (bArr[i4][i10] & 255);
            }
        }
        return sArr;
    }

    public static byte[][][] convertArray(short[][][] sArr) {
        byte[][][] bArr = (byte[][][]) Array.newInstance(byte.class, sArr.length, sArr[0].length, sArr[0][0].length);
        for (int i4 = 0; i4 < sArr.length; i4++) {
            for (int i10 = 0; i10 < sArr[0].length; i10++) {
                for (int i11 = 0; i11 < sArr[0][0].length; i11++) {
                    bArr[i4][i10][i11] = (byte) sArr[i4][i10][i11];
                }
            }
        }
        return bArr;
    }

    public static short[][][] convertArray(byte[][][] bArr) {
        short[][][] sArr = (short[][][]) Array.newInstance(short.class, bArr.length, bArr[0].length, bArr[0][0].length);
        for (int i4 = 0; i4 < bArr.length; i4++) {
            for (int i10 = 0; i10 < bArr[0].length; i10++) {
                for (int i11 = 0; i11 < bArr[0][0].length; i11++) {
                    sArr[i4][i10][i11] = (short) (bArr[i4][i10][i11] & 255);
                }
            }
        }
        return sArr;
    }

    public static int[] convertArraytoInt(byte[] bArr) {
        int[] iArr = new int[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            iArr[i4] = bArr[i4] & 255;
        }
        return iArr;
    }

    public static byte[] convertIntArray(int[] iArr) {
        byte[] bArr = new byte[iArr.length];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            bArr[i4] = (byte) iArr[i4];
        }
        return bArr;
    }

    public static boolean equals(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z9 = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z9 &= sArr[length] == sArr2[length];
        }
        return z9;
    }

    public static boolean equals(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z9 = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z9 &= equals(sArr[length], sArr2[length]);
        }
        return z9;
    }

    public static boolean equals(short[][][] sArr, short[][][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z9 = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z9 &= equals(sArr[length], sArr2[length]);
        }
        return z9;
    }
}
