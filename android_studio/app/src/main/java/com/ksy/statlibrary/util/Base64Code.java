package com.ksy.statlibrary.util;

import com.google.common.base.c;
import okio.Utf8;

/* loaded from: classes3.dex */
public final class Base64Code {
    private static final char[] ENCODE_MAP = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray();
    private static final byte[] DECODE_MAP = new byte[128];

    static {
        for (byte b10 = 0; b10 < 64; b10 = (byte) (b10 + 1)) {
            DECODE_MAP[ENCODE_MAP[b10]] = b10;
        }
        byte[] bArr = DECODE_MAP;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
    }

    private Base64Code() {
    }

    public static byte[] decode(String str) {
        byte[] bArr = new byte[decodeLength(str)];
        decode(str, bArr, 0);
        return bArr;
    }

    public static int decodeLength(String str) {
        int length = str.length();
        if (length == 0) {
            return 0;
        }
        int i4 = length - 2;
        if (str.charAt(i4) == '=') {
            return (i4 * 3) / 4;
        }
        int i10 = length - 1;
        if (str.charAt(i10) == '=') {
            return (i10 * 3) / 4;
        }
        return (length * 3) / 4;
    }

    public static String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public static String encode(byte[] bArr, int i4, int i10) {
        int i11;
        int i12;
        int i13;
        StringBuilder sb = new StringBuilder(i10 * 3);
        int i14 = i4;
        while (true) {
            int i15 = i4 + i10;
            if (i14 < i15) {
                int i16 = (bArr[i14] & 252) >> 2;
                int i17 = (bArr[i14] & 3) << 4;
                int i18 = i14 + 1;
                int i19 = 0;
                if (i18 < i15) {
                    i11 = (bArr[i18] & 240) >> 4;
                    i12 = (bArr[i18] & c.f32110q) << 2;
                } else {
                    i11 = 0;
                    i12 = 0;
                }
                int i20 = i14 + 2;
                if (i20 < i15) {
                    i19 = (bArr[i20] & 192) >> 6;
                    i13 = bArr[i20] & Utf8.REPLACEMENT_BYTE;
                } else {
                    i13 = 0;
                }
                if (i20 < i15) {
                    char[] cArr = ENCODE_MAP;
                    sb.append(cArr[i16]);
                    sb.append(cArr[i17 | i11]);
                    sb.append(cArr[i12 | i19]);
                    sb.append(cArr[i13]);
                } else if (i18 < i15) {
                    char[] cArr2 = ENCODE_MAP;
                    sb.append(cArr2[i16]);
                    sb.append(cArr2[i17 | i11]);
                    sb.append(cArr2[i12]);
                    sb.append('=');
                } else {
                    char[] cArr3 = ENCODE_MAP;
                    sb.append(cArr3[i16]);
                    sb.append(cArr3[i17 | i11]);
                    sb.append('=');
                    sb.append('=');
                }
                i14 += 3;
            } else {
                return sb.toString();
            }
        }
    }

    public static int decode(String str, byte[] bArr, int i4) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        byte[] bytes = str.getBytes();
        int i15 = 0;
        for (int i16 = 0; i16 < bytes.length; i16++) {
            int i17 = i16 % 4;
            if (i17 == 0) {
                bArr[(i4 + i16) - i15] = (byte) (DECODE_MAP[bytes[i16]] << 2);
            } else if (i17 == 1 && (i13 = (i4 + i16) - i15) - 1 < bArr.length) {
                byte b10 = bArr[i14];
                byte[] bArr2 = DECODE_MAP;
                bArr[i14] = (byte) (b10 | (bArr2[bytes[i16]] >> 4));
                if (i13 < bArr.length) {
                    bArr[i13] = (byte) (bArr2[bytes[i16]] << 4);
                }
            } else if (i17 == 2 && (i11 = (i4 + i16) - i15) - 1 < bArr.length) {
                byte b11 = bArr[i12];
                byte[] bArr3 = DECODE_MAP;
                bArr[i12] = (byte) (b11 | (bArr3[bytes[i16]] >>> 2));
                if (i11 < bArr.length) {
                    bArr[i11] = (byte) (bArr3[bytes[i16]] << 6);
                }
            } else if (i17 == 3 && (i10 = ((i4 + i16) - i15) - 1) < bArr.length) {
                bArr[i10] = (byte) (bArr[i10] | DECODE_MAP[bytes[i16]]);
                i15++;
            }
        }
        return decodeLength(str);
    }
}
