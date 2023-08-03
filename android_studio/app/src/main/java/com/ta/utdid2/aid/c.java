package com.ta.utdid2.aid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.ta.utdid2.android.utils.d;
import com.ta.utdid2.android.utils.h;
import com.ta.utdid2.android.utils.i;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: AidStorageController.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f55805a = "com.ta.utdid2.aid.c";

    /* renamed from: b  reason: collision with root package name */
    private static final String f55806b = "OfJbkLdFbPOMbGyP";

    /* renamed from: c  reason: collision with root package name */
    private static final String f55807c = "EvQwnbilKezpOJey";

    /* renamed from: d  reason: collision with root package name */
    private static final String f55808d = "rKrMJgyAEbVtSQGi";

    /* renamed from: e  reason: collision with root package name */
    private static Map<String, String> f55809e = new ConcurrentHashMap();

    /* renamed from: f  reason: collision with root package name */
    private static Map<String, Long> f55810f = new ConcurrentHashMap();

    public static long a(Context context, String str, String str2) {
        if (context == null) {
            Log.e(f55805a, "no context!");
            return 0L;
        }
        String c10 = c(str, str2);
        Long valueOf = Long.valueOf(f55810f.containsKey(c10) ? f55810f.get(c10).longValue() : 0L);
        if (d.f55837b) {
            String str3 = f55805a;
            Log.d(str3, "cache AIDGenTime:" + valueOf);
        }
        if (valueOf.longValue() == 0) {
            valueOf = Long.valueOf(context.getSharedPreferences(f55806b, 0).getLong(f55808d.concat(c10), 0L));
            f55810f.put(c10, valueOf);
        }
        return valueOf.longValue();
    }

    public static String b(Context context, String str, String str2) {
        if (context == null) {
            Log.e(f55805a, "no context!");
            return "";
        }
        String c10 = c(str, str2);
        String str3 = f55809e.get(c10);
        if (d.f55837b) {
            String str4 = f55805a;
            Log.d(str4, "cache AID:" + str3);
        }
        if (i.c(str3)) {
            String string = context.getSharedPreferences(f55806b, 0).getString(f55807c.concat(c10), "");
            f55809e.put(c10, string);
            return string;
        }
        return str3;
    }

    private static String c(String str, String str2) {
        String a10 = com.ta.utdid2.android.utils.c.a(str.concat(str2).getBytes(), 2);
        if (d.f55837b) {
            String str3 = f55805a;
            Log.d(str3, "encodedName:" + a10);
        }
        return a10;
    }

    public static void d(Context context, String str, String str2, String str3) {
        if (context == null) {
            Log.e(f55805a, "no context!");
            return;
        }
        String c10 = c(str, str3);
        long currentTimeMillis = System.currentTimeMillis();
        f55809e.put(c10, str2);
        f55810f.put(c10, Long.valueOf(currentTimeMillis));
        SharedPreferences sharedPreferences = context.getSharedPreferences(f55806b, 0);
        h.a(sharedPreferences.edit().putString(f55807c.concat(c10), str2));
        h.a(sharedPreferences.edit().putLong(f55808d.concat(c10), currentTimeMillis));
    }
}
