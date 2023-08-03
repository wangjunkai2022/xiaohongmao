package com.alipay.security.mobile.module.commonutils.crypto;

import android.annotation.SuppressLint;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static final String f7014a = "SecurityUtils";

    /* renamed from: b  reason: collision with root package name */
    private static String f7015b = new String("idnjfhncnsfuobcnt847y929o449u474w7j3h22aoddc98euk#%&&)*&^%#");

    @SuppressLint({"TrulyRandom"})
    private static byte[] a(byte[] bArr) {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
        h.b(secureRandom, h.a(new String(a.a("c2VlZA==")), SecureRandom.class, bArr.getClass()), new Object[]{bArr});
        keyGenerator.init(128, secureRandom);
        return keyGenerator.generateKey().getEncoded();
    }

    public static String b(String str, String str2) {
        try {
            byte[] a10 = a(str.getBytes());
            byte[] f10 = f(str2);
            SecretKeySpec secretKeySpec = new SecretKeySpec(a10, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
            return new String(cipher.doFinal(f10));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String c(String str, String str2) {
        byte[] bArr;
        try {
            byte[] a10 = a(str.getBytes());
            byte[] bytes = str2.getBytes();
            SecretKeySpec secretKeySpec = new SecretKeySpec(a10, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
            bArr = cipher.doFinal(bytes);
        } catch (Exception unused) {
            bArr = null;
        }
        return h(bArr);
    }

    public static String d(String str) {
        return new String(f(str));
    }

    public static String e() {
        String str = new String();
        for (int i4 = 0; i4 < f7015b.length() - 1; i4 += 4) {
            str = str + f7015b.charAt(i4);
        }
        return str;
    }

    public static byte[] f(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = i4 * 2;
            bArr[i4] = Integer.valueOf(str.substring(i10, i10 + 2), 16).byteValue();
        }
        return bArr;
    }

    public static String g(String str) {
        return h(str.getBytes());
    }

    public static String h(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b10 : bArr) {
            stringBuffer.append("0123456789ABCDEF".charAt((b10 >> 4) & 15));
            stringBuffer.append("0123456789ABCDEF".charAt(b10 & com.google.common.base.c.f32110q));
        }
        return stringBuffer.toString();
    }
}
