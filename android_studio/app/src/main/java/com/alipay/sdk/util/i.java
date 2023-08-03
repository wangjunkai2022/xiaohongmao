package com.alipay.sdk.util;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final String f6964a = "pref_trade_token";

    /* renamed from: b  reason: collision with root package name */
    public static final String f6965b = ";";

    /* renamed from: c  reason: collision with root package name */
    public static final String f6966c = "result={";

    /* renamed from: d  reason: collision with root package name */
    public static final String f6967d = "}";

    /* renamed from: e  reason: collision with root package name */
    public static final String f6968e = "trade_token=\"";

    /* renamed from: f  reason: collision with root package name */
    public static final String f6969f = "\"";

    /* renamed from: g  reason: collision with root package name */
    public static final String f6970g = "trade_token=";

    private static String a(Context context) {
        return j.d(context, f6964a, "");
    }

    private static String b(String str) {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(f6965b);
        for (int i4 = 0; i4 < split.length; i4++) {
            if (split[i4].startsWith(f6966c) && split[i4].endsWith(f6967d)) {
                String[] split2 = split[i4].substring(8, split[i4].length() - 1).split(p.a.f93050d);
                int i10 = 0;
                while (true) {
                    if (i10 >= split2.length) {
                        break;
                    } else if (split2[i10].startsWith(f6968e) && split2[i10].endsWith("\"")) {
                        str2 = split2[i10].substring(13, split2[i10].length() - 1);
                        break;
                    } else if (split2[i10].startsWith(f6970g)) {
                        str2 = split2[i10].substring(12);
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
        return str2;
    }

    private static void c(Context context, String str) {
        try {
            String str2 = null;
            if (!TextUtils.isEmpty(str)) {
                String[] split = str.split(f6965b);
                for (int i4 = 0; i4 < split.length; i4++) {
                    if (split[i4].startsWith(f6966c) && split[i4].endsWith(f6967d)) {
                        String[] split2 = split[i4].substring(8, split[i4].length() - 1).split(p.a.f93050d);
                        int i10 = 0;
                        while (true) {
                            if (i10 >= split2.length) {
                                break;
                            } else if (split2[i10].startsWith(f6968e) && split2[i10].endsWith("\"")) {
                                str2 = split2[i10].substring(13, split2[i10].length() - 1);
                                break;
                            } else if (split2[i10].startsWith(f6970g)) {
                                str2 = split2[i10].substring(12);
                                break;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            j.b(context, f6964a, str2);
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.d(com.alipay.sdk.app.statistic.c.f6780l, com.alipay.sdk.app.statistic.c.f6792x, th);
        }
    }
}
