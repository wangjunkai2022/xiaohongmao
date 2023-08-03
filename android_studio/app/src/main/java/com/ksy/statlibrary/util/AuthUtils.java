package com.ksy.statlibrary.util;

import android.util.Base64;
import android.util.Log;
import com.alipay.security.mobile.module.commonutils.crypto.c;
import com.ksy.statlibrary.log.LogClient;
import java.net.URLEncoder;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import p.a;
import shaded.org.apache.commons.codec.digest.f;

/* loaded from: classes3.dex */
public class AuthUtils {
    public static final String AUTH_TAG = "auth";
    public static final String METHOD_INTERVALQUERY = "intervalquery";
    public static final String METHOD_MONITORCLIENT = "monitorclient";
    static String TAG = "AuthUtils";

    private static byte[] HmacSHA1Encrypt(String str, String str2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes("UTF-8"), c.f7003a);
        Mac mac = Mac.getInstance(c.f7003a);
        mac.init(secretKeySpec);
        return mac.doFinal(str2.getBytes("UTF-8"));
    }

    private static String MD5(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(f.f93510b);
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[digest.length * 2];
            int i4 = 0;
            for (byte b10 : digest) {
                int i10 = i4 + 1;
                cArr2[i4] = cArr[(b10 >>> 4) & 15];
                i4 = i10 + 1;
                cArr2[i10] = cArr[b10 & com.google.common.base.c.f32110q];
            }
            return new String(cArr2);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String base64(byte[] bArr) {
        return Base64.encodeToString(bArr, 2);
    }

    private static String calculateSignature(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append("GET\n");
        sb.append(str4);
        sb.append("\n");
        if (str2 != null) {
            sb.append("contmd5=");
            sb.append(URLEncoder.encode(str2));
            sb.append(a.f93050d);
        }
        sb.append("method=");
        sb.append(str5);
        sb.append("&uniqname=");
        sb.append(URLEncoder.encode(str3));
        String sb2 = sb.toString();
        if (LogClient.getInstance().isEnableLog()) {
            Log.d("auth", "StringToSign = " + sb2);
        }
        String str6 = null;
        try {
            str6 = base64(HmacSHA1Encrypt(str, sb2));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        Log.d("auth", "Signature = " + str6);
        return str6;
    }

    public static String getAuthUrlIntervalSuffix(String str, String str2, String str3, String str4) {
        return "accesskey=" + URLEncoder.encode(str) + "&expire=" + str3 + "&uniqname=" + URLEncoder.encode(str4) + "&method=" + METHOD_INTERVALQUERY + "&signature=" + URLEncoder.encode(calculateSignature(str2, null, str4, str3, METHOD_INTERVALQUERY));
    }

    public static String getAuthUrlSuffix(String str, String str2, String str3, byte[] bArr, String str4) {
        String MD5 = MD5(bArr);
        return "accesskey=" + URLEncoder.encode(str) + "&expire=" + str3 + "&uniqname=" + URLEncoder.encode(str4) + "&contmd5=" + MD5 + "&signature=" + URLEncoder.encode(calculateSignature(str2, MD5, str4, str3, METHOD_MONITORCLIENT));
    }
}
