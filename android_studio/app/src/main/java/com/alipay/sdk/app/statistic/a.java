package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static c f6775a = null;

    /* renamed from: b  reason: collision with root package name */
    public static final String f6776b = "alipay_cashier_statistic_record";

    public static void a(Context context) {
        if (f6775a != null) {
            return;
        }
        f6775a = new c(context);
    }

    public static synchronized void b(Context context, String str) {
        String str2;
        String str3;
        String format;
        synchronized (a.class) {
            c cVar = f6775a;
            if (cVar == null) {
                return;
            }
            if (TextUtils.isEmpty(cVar.f6803i)) {
                format = "";
            } else {
                String[] split = str.split(p.a.f93050d);
                if (split != null) {
                    str2 = null;
                    str3 = null;
                    for (String str4 : split) {
                        String[] split2 = str4.split("=");
                        if (split2 != null && split2.length == 2) {
                            if (split2[0].equalsIgnoreCase(c.f6794z)) {
                                split2[1].replace("\"", "");
                            } else if (split2[0].equalsIgnoreCase(c.A)) {
                                str2 = split2[1].replace("\"", "");
                            } else if (split2[0].equalsIgnoreCase(c.B)) {
                                str3 = split2[1].replace("\"", "");
                            }
                        }
                    }
                } else {
                    str2 = null;
                    str3 = null;
                }
                String b10 = c.b(str3);
                String b11 = c.b(str2);
                String format2 = String.format("%s,%s,-,%s,-,-,-", b10, b11, c.b(b11));
                cVar.f6796b = format2;
                format = String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", cVar.f6795a, format2, cVar.f6797c, cVar.f6798d, cVar.f6799e, cVar.f6800f, cVar.f6801g, cVar.f6802h, cVar.f6803i, cVar.f6804j);
            }
            new Thread(new b(context, format)).start();
            f6775a = null;
        }
    }

    public static void c(String str, String str2, String str3) {
        c cVar = f6775a;
        if (cVar == null) {
            return;
        }
        cVar.d(str, str2, str3);
    }

    public static void d(String str, String str2, Throwable th) {
        c cVar = f6775a;
        if (cVar == null) {
            return;
        }
        cVar.f(str, str2, th);
    }

    private static void e(String str, String str2, Throwable th, String str3) {
        c cVar = f6775a;
        if (cVar == null) {
            return;
        }
        cVar.e(str, str2, c.c(th), str3);
    }

    public static void f(String str, Throwable th) {
        if (f6775a == null) {
            return;
        }
        th.getClass();
        f6775a.f(str, th.getClass().getSimpleName(), th);
    }

    private static void g(Context context, String str) {
        new Thread(new b(context, str)).start();
    }
}
