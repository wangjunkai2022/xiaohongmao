package com.alipay.security.mobile.module.commonutils.crypto;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final f f7007a = new f();

    public static int a(String str, OutputStream outputStream) {
        return f7007a.c(str, outputStream);
    }

    public static byte[] b(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f7007a.c(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException("exception decoding Hex string: " + e4);
        }
    }

    public static byte[] c(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f7007a.d(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException("exception decoding Hex string: " + e4);
        }
    }

    public static int d(byte[] bArr, int i4, int i10, OutputStream outputStream) {
        return f7007a.e(bArr, i4, i10, outputStream);
    }

    public static int e(byte[] bArr, OutputStream outputStream) {
        return f7007a.e(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] f(byte[] bArr) {
        return g(bArr, 0, bArr.length);
    }

    public static byte[] g(byte[] bArr, int i4, int i10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f7007a.e(bArr, i4, i10, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException("exception encoding Hex string: " + e4);
        }
    }
}
