package com.facebook.common.util;

import android.util.Base64;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: SecureHashUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f11049a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b  reason: collision with root package name */
    private static final int f11050b = 4096;

    public static String a(byte[] raw) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder(raw.length);
        for (byte b10 : raw) {
            int i4 = b10 & 255;
            byte[] bArr = f11049a;
            sb.append((char) bArr[i4 >>> 4]);
            sb.append((char) bArr[i4 & 15]);
        }
        return sb.toString();
    }

    private static String b(InputStream stream, String algorithm) throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = stream.read(bArr);
                if (read > 0) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    return a(messageDigest.digest());
                }
            }
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static String c(byte[] bytes, String algorithm) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
            messageDigest.update(bytes, 0, bytes.length);
            return a(messageDigest.digest());
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String d(InputStream stream) throws IOException {
        return b(stream, shaded.org.apache.commons.codec.digest.f.f93510b);
    }

    public static String e(String text) {
        try {
            return f(text.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String f(byte[] bytes) {
        return c(bytes, shaded.org.apache.commons.codec.digest.f.f93510b);
    }

    public static String g(String text) {
        try {
            return h(text.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String h(byte[] bytes) {
        return c(bytes, "SHA-1");
    }

    public static String i(byte[] bytes) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes, 0, bytes.length);
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String j(byte[] bytes) {
        return c(bytes, "SHA-256");
    }
}
