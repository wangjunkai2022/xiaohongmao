package org.bouncycastle.pqc.math.linearalgebra;

import com.google.common.base.c;

/* loaded from: classes5.dex */
public final class ByteUtils {
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private ByteUtils() {
    }

    public static byte[] clone(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[] concatenate(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] concatenate(byte[][] bArr) {
        int length = bArr[0].length;
        byte[] bArr2 = new byte[bArr.length * length];
        int i4 = 0;
        for (byte[] bArr3 : bArr) {
            System.arraycopy(bArr3, 0, bArr2, i4, length);
            i4 += length;
        }
        return bArr2;
    }

    public static int deepHashCode(byte[] bArr) {
        int i4 = 1;
        for (byte b10 : bArr) {
            i4 = (i4 * 31) + b10;
        }
        return i4;
    }

    public static int deepHashCode(byte[][] bArr) {
        int i4 = 1;
        for (byte[] bArr2 : bArr) {
            i4 = (i4 * 31) + deepHashCode(bArr2);
        }
        return i4;
    }

    public static int deepHashCode(byte[][][] bArr) {
        int i4 = 1;
        for (byte[][] bArr2 : bArr) {
            i4 = (i4 * 31) + deepHashCode(bArr2);
        }
        return i4;
    }

    public static boolean equals(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2 == null;
        } else if (bArr2 != null && bArr.length == bArr2.length) {
            boolean z9 = true;
            for (int length = bArr.length - 1; length >= 0; length--) {
                z9 &= bArr[length] == bArr2[length];
            }
            return z9;
        } else {
            return false;
        }
    }

    public static boolean equals(byte[][] bArr, byte[][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean z9 = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            z9 &= equals(bArr[length], bArr2[length]);
        }
        return z9;
    }

    public static boolean equals(byte[][][] bArr, byte[][][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean z9 = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            if (bArr[length].length != bArr2[length].length) {
                return false;
            }
            for (int length2 = bArr[length].length - 1; length2 >= 0; length2--) {
                z9 &= equals(bArr[length][length2], bArr2[length][length2]);
            }
        }
        return z9;
    }

    public static byte[] fromHexString(String str) {
        char[] charArray = str.toUpperCase().toCharArray();
        int i4 = 0;
        for (int i10 = 0; i10 < charArray.length; i10++) {
            if ((charArray[i10] >= '0' && charArray[i10] <= '9') || (charArray[i10] >= 'A' && charArray[i10] <= 'F')) {
                i4++;
            }
        }
        byte[] bArr = new byte[(i4 + 1) >> 1];
        int i11 = i4 & 1;
        for (int i12 = 0; i12 < charArray.length; i12++) {
            if (charArray[i12] < '0' || charArray[i12] > '9') {
                if (charArray[i12] >= 'A' && charArray[i12] <= 'F') {
                    int i13 = i11 >> 1;
                    bArr[i13] = (byte) (bArr[i13] << 4);
                    bArr[i13] = (byte) (bArr[i13] | ((charArray[i12] - 'A') + 10));
                }
            } else {
                int i14 = i11 >> 1;
                bArr[i14] = (byte) (bArr[i14] << 4);
                bArr[i14] = (byte) (bArr[i14] | (charArray[i12] - '0'));
            }
            i11++;
        }
        return bArr;
    }

    public static byte[][] split(byte[] bArr, int i4) throws ArrayIndexOutOfBoundsException {
        if (i4 <= bArr.length) {
            byte[][] bArr2 = {new byte[i4], new byte[bArr.length - i4]};
            System.arraycopy(bArr, 0, bArr2[0], 0, i4);
            System.arraycopy(bArr, i4, bArr2[1], 0, bArr.length - i4);
            return bArr2;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public static byte[] subArray(byte[] bArr, int i4) {
        return subArray(bArr, i4, bArr.length);
    }

    public static byte[] subArray(byte[] bArr, int i4, int i10) {
        int i11 = i10 - i4;
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i4, bArr2, 0, i11);
        return bArr2;
    }

    public static String toBinaryString(byte[] bArr) {
        String str = "";
        for (int i4 = 0; i4 < bArr.length; i4++) {
            byte b10 = bArr[i4];
            for (int i10 = 0; i10 < 8; i10++) {
                str = str + ((b10 >>> i10) & 1);
            }
            if (i4 != bArr.length - 1) {
                str = str + " ";
            }
        }
        return str;
    }

    public static char[] toCharArray(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            cArr[i4] = (char) bArr[i4];
        }
        return cArr;
    }

    public static String toHexString(byte[] bArr) {
        char[] cArr;
        String str = "";
        for (int i4 = 0; i4 < bArr.length; i4++) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(HEX_CHARS[(bArr[i4] >>> 4) & 15]);
            str = sb.toString() + cArr[bArr[i4] & c.f32110q];
        }
        return str;
    }

    public static String toHexString(byte[] bArr, String str, String str2) {
        char[] cArr;
        String str3 = new String(str);
        for (int i4 = 0; i4 < bArr.length; i4++) {
            StringBuilder sb = new StringBuilder();
            sb.append(str3);
            sb.append(HEX_CHARS[(bArr[i4] >>> 4) & 15]);
            str3 = sb.toString() + cArr[bArr[i4] & c.f32110q];
            if (i4 < bArr.length - 1) {
                str3 = str3 + str2;
            }
        }
        return str3;
    }

    public static byte[] xor(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int length = bArr.length - 1; length >= 0; length--) {
            bArr3[length] = (byte) (bArr[length] ^ bArr2[length]);
        }
        return bArr3;
    }
}
