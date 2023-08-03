package com.coremedia.iso;

import java.io.ByteArrayOutputStream;

/* compiled from: Hex.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f10495a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i4 = 0;
        while (i4 < str.length()) {
            int i10 = i4 + 2;
            byteArrayOutputStream.write(Integer.parseInt(str.substring(i4, i10), 16));
            i4 = i10;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String b(byte[] bArr) {
        return c(bArr, 0);
    }

    public static String c(byte[] bArr, int i4) {
        int length = bArr.length;
        char[] cArr = new char[(length << 1) + (i4 > 0 ? length / i4 : 0)];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (i4 > 0 && i11 % i4 == 0 && i10 > 0) {
                cArr[i10] = shaded.org.apache.commons.codec.language.l.f93713d;
                i10++;
            }
            int i12 = i10 + 1;
            char[] cArr2 = f10495a;
            cArr[i10] = cArr2[(bArr[i11] & 240) >>> 4];
            i10 = i12 + 1;
            cArr[i12] = cArr2[bArr[i11] & com.google.common.base.c.f32110q];
        }
        return new String(cArr);
    }
}
