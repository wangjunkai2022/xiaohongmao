package com.ta.utdid2.android.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;

/* compiled from: NetworkUtils.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final String f55841a = "Wi-Fi";

    /* renamed from: b  reason: collision with root package name */
    public static final String f55842b = "00-00-00-00-00-00";

    /* renamed from: c  reason: collision with root package name */
    private static final String f55843c = "NetworkUtils";

    /* renamed from: d  reason: collision with root package name */
    private static ConnectivityManager f55844d;

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f55845e = {4, 7, 2, 1};

    private static String a(int i4) {
        return (i4 & 255) + "." + ((i4 >> 8) & 255) + "." + ((i4 >> 16) & 255) + "." + ((i4 >> 24) & 255);
    }

    public static ConnectivityManager b(Context context) {
        if (context == null) {
            Log.e(f55843c, "context is null!");
            return null;
        }
        if (f55844d == null) {
            f55844d = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return f55844d;
    }

    public static String[] c(Context context) {
        String[] strArr = {"Unknown", "Unknown"};
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0) {
            strArr[0] = "Unknown";
            return strArr;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "Unknown";
            return strArr;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = f55841a;
            return strArr;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "2G/3G";
            strArr[1] = networkInfo2.getSubtypeName();
        }
        return strArr;
    }

    public static String d(Context context) {
        WifiInfo connectionInfo;
        if (context == null || (connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo()) == null) {
            return f55842b;
        }
        String macAddress = connectionInfo.getMacAddress();
        return i.c(macAddress) ? f55842b : macAddress;
    }

    public static String e(Context context) {
        if (context != null) {
            try {
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
                if (connectionInfo != null) {
                    return a(connectionInfo.getIpAddress());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static boolean f(Context context) {
        ConnectivityManager b10 = b(context);
        if (b10 != null) {
            try {
                NetworkInfo activeNetworkInfo = b10.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isConnected();
                }
                return false;
            } catch (Exception e4) {
                Log.e(f55843c, e4.toString());
                return false;
            }
        }
        Log.e(f55843c, "connManager is null!");
        return false;
    }

    public static boolean g(Context context) {
        ConnectivityManager b10 = b(context);
        if (b10 != null) {
            try {
                NetworkInfo activeNetworkInfo = b10.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    int subtype = activeNetworkInfo.getSubtype();
                    if (d.f55837b) {
                        Log.d(f55843c, "subType:" + subtype + ": name:" + activeNetworkInfo.getSubtypeName());
                    }
                    for (int i4 : f55845e) {
                        if (i4 == subtype) {
                            return true;
                        }
                    }
                } else {
                    Log.e(f55843c, "networkInfo is null!");
                }
            } catch (Exception e4) {
                Log.e(f55843c, e4.toString());
            }
        } else {
            Log.e(f55843c, "connManager is null!");
        }
        return false;
    }

    public static boolean h(Context context) {
        if (context != null) {
            try {
                if (c(context)[0].equals(f55841a)) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
