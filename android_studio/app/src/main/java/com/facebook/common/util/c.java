package com.facebook.common.util;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: Hex.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f11045a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f11046b = new char[256];

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f11047c = new char[256];

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f11048d;

    static {
        for (int i4 = 0; i4 < 256; i4++) {
            char[] cArr = f11046b;
            char[] cArr2 = f11045a;
            cArr[i4] = cArr2[(i4 >> 4) & 15];
            f11047c[i4] = cArr2[i4 & 15];
        }
        f11048d = new byte[103];
        for (int i10 = 0; i10 <= 70; i10++) {
            f11048d[i10] = -1;
        }
        for (byte b10 = 0; b10 < 10; b10 = (byte) (b10 + 1)) {
            f11048d[b10 + 48] = b10;
        }
        for (byte b11 = 0; b11 < 6; b11 = (byte) (b11 + 1)) {
            byte[] bArr = f11048d;
            byte b12 = (byte) (b11 + 10);
            bArr[b11 + 65] = b12;
            bArr[b11 + 97] = b12;
        }
    }

    public static String a(int value) {
        if (value <= 255 && value >= 0) {
            return String.valueOf(f11046b[value]) + String.valueOf(f11047c[value]);
        }
        throw new IllegalArgumentException("The int converting to hex should be in range 0~255");
    }

    public static byte[] b(String hexString) {
        byte[] bArr;
        byte b10;
        byte b11;
        int length = hexString.length();
        if ((length & 1) == 0) {
            byte[] bArr2 = new byte[length >> 1];
            boolean z9 = false;
            int i4 = 0;
            int i10 = 0;
            while (i4 < length) {
                int i11 = i4 + 1;
                char charAt = hexString.charAt(i4);
                if (charAt <= 'f' && (b10 = (bArr = f11048d)[charAt]) != -1) {
                    int i12 = i11 + 1;
                    char charAt2 = hexString.charAt(i11);
                    if (charAt2 <= 'f' && (b11 = bArr[charAt2]) != -1) {
                        bArr2[i10] = (byte) ((b10 << 4) | b11);
                        i10++;
                        i4 = i12;
                    }
                }
                z9 = true;
            }
            if (z9) {
                throw new IllegalArgumentException("Invalid hexadecimal digit: " + hexString);
            }
            return bArr2;
        }
        throw new IllegalArgumentException("Odd number of characters.");
    }

    public static String c(byte[] array, boolean zeroTerminated) {
        int i4;
        char[] cArr = new char[array.length * 2];
        int i10 = 0;
        for (int i11 = 0; i11 < array.length && ((i4 = array[i11] & 255) != 0 || !zeroTerminated); i11++) {
            int i12 = i10 + 1;
            cArr[i10] = f11046b[i4];
            i10 = i12 + 1;
            cArr[i12] = f11047c[i4];
        }
        return new String(cArr, 0, i10);
    }

    public static byte[] d(String s9) {
        return b(s9.replaceAll(" ", ""));
    }
}
