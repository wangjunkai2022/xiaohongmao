package com.ta.utdid2.android.utils;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.Random;

/* compiled from: PhoneInfoUtils.java */
/* loaded from: classes3.dex */
public class g {
    public static String a(Context context) {
        String str = null;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    str = telephonyManager.getDeviceId();
                }
            } catch (Exception unused) {
            }
        }
        return i.c(str) ? c() : str;
    }

    public static String b(Context context) {
        String str = null;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    str = telephonyManager.getSubscriberId();
                }
            } catch (Exception unused) {
            }
        }
        return i.c(str) ? c() : str;
    }

    public static final String c() {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int nanoTime = (int) System.nanoTime();
        int nextInt = new Random().nextInt();
        int nextInt2 = new Random().nextInt();
        byte[] a10 = e.a(currentTimeMillis);
        byte[] a11 = e.a(nanoTime);
        byte[] a12 = e.a(nextInt);
        byte[] a13 = e.a(nextInt2);
        byte[] bArr = new byte[16];
        System.arraycopy(a10, 0, bArr, 0, 4);
        System.arraycopy(a11, 0, bArr, 4, 4);
        System.arraycopy(a12, 0, bArr, 8, 4);
        System.arraycopy(a13, 0, bArr, 12, 4);
        return b.f(bArr, 2);
    }
}
