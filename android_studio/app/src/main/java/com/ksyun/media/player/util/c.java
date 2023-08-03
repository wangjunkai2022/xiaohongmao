package com.ksyun.media.player.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import com.alipay.sdk.util.i;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import shaded.org.apache.commons.codec.digest.f;

/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45595a = "ffffffffff";

    public static String a(Context context) {
        TelephonyManager telephonyManager;
        String str = null;
        if (context != null && a(context, "android.permission.READ_PHONE_STATE") && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            str = telephonyManager.getDeviceId();
        }
        String str2 = f45595a;
        if (str == null) {
            str = f45595a;
        }
        String f10 = f(context);
        if (TextUtils.isEmpty(f10)) {
            f10 = f45595a;
        }
        String g4 = g(context);
        if (!TextUtils.isEmpty(g4)) {
            str2 = g4;
        }
        return str + "-" + b(str2 + f10);
    }

    public static String b(Context context) {
        if (context == null || !a(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            Method method = telephonyManager.getClass().getMethod("getDeviceId", a("getDeviceId"));
            if (method != null) {
                StringBuilder sb = new StringBuilder();
                String str = (String) method.invoke(telephonyManager, 0);
                String str2 = (String) method.invoke(telephonyManager, 1);
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    if (sb.length() > 0) {
                        sb.append(i.f6965b);
                    }
                    sb.append(str2);
                }
                return sb.toString();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String c(Context context) {
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        if (context == null || !a(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return null;
        }
        return connectionInfo.getMacAddress();
    }

    public static String d(Context context) {
        if (context == null || !a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return null;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "disconnected";
        }
        if (activeNetworkInfo.getType() == 1) {
            return "wifi";
        }
        if (Build.VERSION.SDK_INT > 29) {
            return isConnectionServiceMobile(context) ? "4G" : "Unknown";
        }
        switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                return "Unknown";
        }
    }

    public static String e(Context context) {
        String str;
        if (context == null || !a(context, "android.permission.READ_PHONE_STATE")) {
            return "N/A";
        }
        try {
            String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            if (TextUtils.isEmpty(subscriberId)) {
                return "N/A";
            }
            System.out.println(subscriberId);
            if (!subscriberId.startsWith("46000") && !subscriberId.startsWith("46002")) {
                if (subscriberId.startsWith("46001")) {
                    str = "中国联通";
                } else if (!subscriberId.startsWith("46003")) {
                    return "N/A";
                } else {
                    str = "中国电信";
                }
                return str;
            }
            str = "中国移动";
            return str;
        } catch (Exception e4) {
            e4.printStackTrace();
            return "N/A";
        }
    }

    private static String f(Context context) {
        if (context == null) {
            return null;
        }
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    private static String g(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.serialno", "unknown");
        } catch (Exception unused) {
            return null;
        }
    }

    @RequiresApi(api = 23)
    private static boolean isConnectionServiceMobile(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        networkCapabilities.hasTransport(1);
        return networkCapabilities.hasTransport(0);
    }

    public static Class[] a(String str) {
        Class<?>[] clsArr = null;
        try {
            Method[] declaredMethods = TelephonyManager.class.getDeclaredMethods();
            for (int i4 = 0; i4 < declaredMethods.length; i4++) {
                if (str.equals(declaredMethods[i4].getName())) {
                    clsArr = declaredMethods[i4].getParameterTypes();
                    if (clsArr.length >= 1) {
                        break;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return clsArr;
    }

    private static boolean a(Context context, String str) {
        return context != null && context.checkCallingOrSelfPermission(str) == 0;
    }

    public static String b(String str) {
        try {
            byte[] digest = MessageDigest.getInstance(f.f93510b).digest(str.getBytes());
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b10 : digest) {
                int i4 = b10 & 255;
                if (i4 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i4));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException("Huh, MD5 should be supported?", e4);
        }
    }
}
