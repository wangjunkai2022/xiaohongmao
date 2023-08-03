package com.ksyun.media.streamer.logstats;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import shaded.org.apache.commons.codec.digest.f;

/* compiled from: StatsUtil.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static String f46607a = "UTF-8";

    /* renamed from: b  reason: collision with root package name */
    protected static char[] f46608b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: c  reason: collision with root package name */
    private static byte[] f46609c = null;

    /* renamed from: d  reason: collision with root package name */
    private static TelephonyManager f46610d = null;

    /* renamed from: e  reason: collision with root package name */
    private static String f46611e = null;

    /* renamed from: f  reason: collision with root package name */
    private static String f46612f = "";

    public static byte a(char c10) {
        return (byte) (c10 >= 'A' ? (c10 + '\n') - 65 : c10 - '0');
    }

    public static String a() {
        return StatsConstant.SDK_UNIQUE_NAME;
    }

    public static String a(int i4) {
        return i4 == 0 ? StatsConstant.ENCODE_HARD264 : (i4 != 1 && i4 == 2) ? StatsConstant.ENCODE_SOFT265 : StatsConstant.ENCODE_SOFT264;
    }

    public static String a(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(f46607a), com.alipay.security.mobile.module.commonutils.crypto.c.f7003a);
            Mac mac = Mac.getInstance(com.alipay.security.mobile.module.commonutils.crypto.c.f7003a);
            mac.init(secretKeySpec);
            return URLEncoder.encode(Base64.encodeToString(mac.doFinal(str2.getBytes(f46607a)), 2), f46607a);
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
            return null;
        } catch (InvalidKeyException e10) {
            e10.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String b(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) {
            return "Unknown";
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? type != 1 ? "Unknown" : "WIFI" : "Mobile Network";
    }

    public static String c(Context context) {
        String str;
        if (context == null || !a(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        TelephonyManager d4 = d(context);
        f46610d = d4;
        try {
            String subscriberId = d4.getSubscriberId();
            f46611e = subscriberId;
            if (TextUtils.isEmpty(subscriberId)) {
                return "N/A";
            }
            System.out.println(f46611e);
            if (!f46611e.startsWith("46000") && !f46611e.startsWith("46002")) {
                if (f46611e.startsWith("46001")) {
                    str = "中国联通";
                } else if (!f46611e.startsWith("46003")) {
                    return "N/A";
                } else {
                    str = "中国电信";
                }
                return str;
            }
            str = "中国移动";
            return str;
        } catch (Exception e4) {
            if (e4 instanceof SecurityException) {
                Log.w("StatsUtil", "the apk do not have the permission of READ_PHONE_STATE");
                return "N/A";
            }
            return "N/A";
        }
    }

    private static TelephonyManager d(Context context) {
        if (f46610d == null) {
            f46610d = (TelephonyManager) context.getSystemService("phone");
        }
        return f46610d;
    }

    public static byte[] b(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        char[] charArray = str.toCharArray();
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = i4 * 2;
            bArr[i4] = (byte) (a(charArray[i10 + 1]) | (a(charArray[i10]) << 4));
        }
        return bArr;
    }

    private static boolean a(Context context, String str) {
        return context != null && context.checkCallingOrSelfPermission(str) == 0;
    }

    public static String b() {
        return f46612f;
    }

    public static String a(Context context) {
        TelephonyManager telephonyManager;
        if (context == null || !a(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
            return null;
        }
        return telephonyManager.getDeviceId();
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String a10 = a(str + String.valueOf(System.currentTimeMillis()));
        f46612f = a10;
        return a10;
    }

    public static byte[] a(byte[] bArr, int i4) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(f.f93510b);
            messageDigest.update(bArr, 0, i4);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String a(String str) {
        byte[] bytes = str.getBytes();
        byte[] a10 = a(bytes, bytes.length);
        if (a10 != null) {
            return a(a10);
        }
        return null;
    }

    public static String a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i4 = 0; i4 < length; i4++) {
            byte b10 = bArr[i4];
            int i10 = i4 * 2;
            char[] cArr2 = f46608b;
            cArr[i10] = cArr2[(b10 >>> 4) & 15];
            cArr[i10 + 1] = cArr2[b10 & com.google.common.base.c.f32110q];
        }
        return new String(cArr);
    }
}
