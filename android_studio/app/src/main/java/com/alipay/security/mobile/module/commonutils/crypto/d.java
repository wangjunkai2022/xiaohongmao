package com.alipay.security.mobile.module.commonutils.crypto;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public class d {
    public static String a(String str) {
        try {
            if (t.a.e(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance(shaded.org.apache.commons.codec.digest.f.f93510b);
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < 16; i4++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i4])));
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < digest.length; i4++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i4])));
            }
            return sb.toString();
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public static byte[] c(String str) {
        try {
            if (t.a.e(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            return messageDigest.digest();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String d(String str) {
        try {
            if (t.a.e(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < digest.length; i4++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i4])));
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
