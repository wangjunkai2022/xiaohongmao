package com.alipay.security.mobile.module.commonutils.crypto;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f7003a = "HmacSHA1";

    /* renamed from: b  reason: collision with root package name */
    public static final String f7004b = "HMAC-SHA-1";

    /* renamed from: c  reason: collision with root package name */
    public static final String f7005c = "RAW";

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f7006d = e.b("7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648");

    private c() {
    }

    public static String a(String str) {
        Mac mac;
        if (t.a.e(str)) {
            return null;
        }
        try {
            try {
                mac = Mac.getInstance(f7003a);
            } catch (NoSuchAlgorithmException unused) {
                mac = Mac.getInstance(f7004b);
            }
            mac.init(new SecretKeySpec(f7006d, f7005c));
            byte[] doFinal = mac.doFinal(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < 16; i4++) {
                sb.append(String.format("%02x", Byte.valueOf(doFinal[i4])));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException | Exception unused2) {
            return null;
        }
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        Mac mac;
        try {
            mac = Mac.getInstance(f7003a);
        } catch (NoSuchAlgorithmException unused) {
            mac = Mac.getInstance(f7004b);
        }
        mac.init(new SecretKeySpec(bArr2, f7005c));
        return mac.doFinal(bArr);
    }
}
