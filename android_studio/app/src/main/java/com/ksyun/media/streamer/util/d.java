package com.ksyun.media.streamer.util;

/* compiled from: Hex.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f46762a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f46763b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static char[] a(byte[] bArr) {
        return a(bArr, true);
    }

    public static String b(byte[] bArr) {
        return b(bArr, true);
    }

    public static char[] a(byte[] bArr, boolean z9) {
        return a(bArr, z9 ? f46762a : f46763b);
    }

    public static String b(byte[] bArr, boolean z9) {
        return b(bArr, z9 ? f46762a : f46763b);
    }

    protected static char[] a(byte[] bArr, char[] cArr) {
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i4 + 1;
            cArr2[i4] = cArr[(bArr[i10] & 240) >>> 4];
            i4 = i11 + 1;
            cArr2[i11] = cArr[bArr[i10] & com.google.common.base.c.f32110q];
        }
        return cArr2;
    }

    protected static String b(byte[] bArr, char[] cArr) {
        return new String(a(bArr, cArr));
    }

    public static byte[] a(char[] cArr) {
        int length = cArr.length;
        if ((length & 1) == 0) {
            byte[] bArr = new byte[length >> 1];
            int i4 = 0;
            int i10 = 0;
            while (i4 < length) {
                int i11 = i4 + 1;
                i4 = i11 + 1;
                bArr[i10] = (byte) (((a(cArr[i4], i4) << 4) | a(cArr[i11], i11)) & 255);
                i10++;
            }
            return bArr;
        }
        throw new RuntimeException("Odd number of characters.");
    }

    protected static int a(char c10, int i4) {
        int digit = Character.digit(c10, 16);
        if (digit != -1) {
            return digit;
        }
        throw new RuntimeException("Illegal hexadecimal character " + c10 + " at index " + i4);
    }
}
