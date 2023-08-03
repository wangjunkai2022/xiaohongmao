package com.clj.fastble.utils;

import com.google.common.base.c;

/* compiled from: HexUtil.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f9895a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f9896b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(byte[] bArr) {
        return new String(e(bArr, true));
    }

    public static byte b(char c10) {
        return (byte) "0123456789ABCDEF".indexOf(c10);
    }

    public static byte[] c(char[] cArr) {
        int length = cArr.length;
        if ((length & 1) == 0) {
            byte[] bArr = new byte[length >> 1];
            int i4 = 0;
            int i10 = 0;
            while (i4 < length) {
                int i11 = i4 + 1;
                i4 = i11 + 1;
                bArr[i10] = (byte) (((o(cArr[i4], i4) << 4) | o(cArr[i11], i11)) & 255);
                i10++;
            }
            return bArr;
        }
        throw new RuntimeException("Odd number of characters.");
    }

    public static char[] d(byte[] bArr) {
        return e(bArr, true);
    }

    public static char[] e(byte[] bArr, boolean z9) {
        return f(bArr, z9 ? f9895a : f9896b);
    }

    protected static char[] f(byte[] bArr, char[] cArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i4 + 1;
            cArr2[i4] = cArr[(bArr[i10] & 240) >>> 4];
            i4 = i11 + 1;
            cArr2[i11] = cArr[bArr[i10] & c.f32110q];
        }
        return cArr2;
    }

    public static String g(byte[] bArr) {
        return h(bArr, true);
    }

    public static String h(byte[] bArr, boolean z9) {
        return i(bArr, z9 ? f9895a : f9896b);
    }

    protected static String i(byte[] bArr, char[] cArr) {
        return new String(f(bArr, cArr));
    }

    public static String j(byte[] bArr, int i4) {
        return k(new byte[]{bArr[i4]});
    }

    public static String k(byte[] bArr) {
        return l(bArr, false);
    }

    public static String l(byte[] bArr, boolean z9) {
        if (bArr == null || bArr.length < 1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            sb.append(hexString);
            if (z9) {
                sb.append(" ");
            }
        }
        return sb.toString().trim();
    }

    public static byte[] m(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        String upperCase = str.toUpperCase();
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = i4 * 2;
            bArr[i4] = (byte) (b(charArray[i10 + 1]) | (b(charArray[i10]) << 4));
        }
        return bArr;
    }

    public static byte[] n(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        String upperCase = str.toUpperCase();
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = i4 * 2;
            bArr[i4] = (byte) (b(charArray[i10 + 1]) | (b(charArray[i10]) << 4));
        }
        return bArr;
    }

    protected static int o(char c10, int i4) {
        int digit = Character.digit(c10, 16);
        if (digit != -1) {
            return digit;
        }
        throw new RuntimeException("Illegal hexadecimal character " + c10 + " at index " + i4);
    }
}
