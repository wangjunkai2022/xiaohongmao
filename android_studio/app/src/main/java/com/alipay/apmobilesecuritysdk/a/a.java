package com.alipay.apmobilesecuritysdk.a;

import android.content.Context;
import com.alipay.security.mobile.module.a.d;
import h.e;
import h.f;
import java.util.Map;
import r.c;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f6696b = false;

    /* renamed from: a  reason: collision with root package name */
    private final Context f6697a;

    public a(Context context) {
        this.f6697a = context;
    }

    public static String a(Context context) {
        h.b b10;
        String c10;
        try {
            String d4 = f.d();
            try {
                if (!t.a.e(d4) || (b10 = h.a.b(context)) == null || t.a.e(b10.c())) {
                    return d4;
                }
                c10 = b10.c();
                f.b(b10);
                return c10;
            } catch (Throwable unused) {
                return c10;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(a aVar, String str, String str2, String str3) {
        try {
            r.a a10 = d.a(aVar.f6697a).a("android", str, str2, str3);
            if (a10.f93155a) {
                e.a(aVar.f6697a, a10.f93154d, a10.f93153c);
            }
        } catch (Throwable th) {
            try {
                t.d.c(th);
            } finally {
                d(false);
            }
        }
    }

    private static synchronized void d(boolean z9) {
        synchronized (a.class) {
            f6696b = z9;
        }
    }

    private static synchronized boolean e() {
        boolean z9;
        synchronized (a.class) {
            z9 = f6696b;
        }
        return z9;
    }

    public static String f(Context context) {
        try {
            String a10 = f.a();
            try {
                if (t.a.e(a10)) {
                    h.b b10 = h.a.b(context);
                    if (b10 != null && !t.a.e(b10.a())) {
                        f.b(b10);
                        return b10.a();
                    }
                    String b11 = e.a.b(context);
                    if (t.a.e(b11)) {
                        String a11 = i.b.a(context);
                        return !t.a.e(a11) ? a11 : a11;
                    }
                    return b11;
                }
                return a10;
            } catch (Throwable unused) {
                return a10;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    private c g(Map<String, String> map) {
        String str;
        String str2;
        String str3;
        try {
            Context context = this.f6697a;
            r.d dVar = new r.d();
            String d4 = t.a.d(map, "umid", "");
            h.b d10 = h.a.d(context);
            if (d10 != null) {
                str2 = d10.c();
                str3 = d10.a();
                str = d10.d();
            } else {
                str = "";
                str2 = str;
                str3 = str2;
            }
            h.b a10 = h.a.a();
            String a11 = a10 != null ? a10.a() : "";
            if (t.a.e(str3) && t.a.e(a11)) {
                str3 = e.a.e(context);
                a11 = e.a.a();
            }
            dVar.b("android");
            dVar.g(str3);
            dVar.e(a11);
            dVar.i(str2);
            dVar.k(d4);
            dVar.o(str);
            dVar.m("3");
            dVar.c(f.e.b(context, map));
            return d.a(this.f6697a).c(dVar);
        } catch (Throwable th) {
            t.d.c(th);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00fd A[Catch: all -> 0x0250, TryCatch #0 {all -> 0x0250, blocks: (B:5:0x000d, B:7:0x004e, B:9:0x0055, B:11:0x00bb, B:24:0x00fd, B:45:0x0176, B:47:0x017c, B:49:0x0184, B:52:0x018a, B:60:0x01b9, B:62:0x01c7, B:64:0x01cf, B:66:0x01d7, B:68:0x01e2, B:72:0x021c, B:78:0x023e, B:74:0x0221, B:75:0x0231, B:77:0x0238, B:27:0x0108, B:31:0x0115, B:34:0x0139, B:35:0x013d, B:38:0x015c, B:41:0x0167, B:17:0x00c8, B:19:0x00f3), top: B:86:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0115 A[Catch: all -> 0x0250, TryCatch #0 {all -> 0x0250, blocks: (B:5:0x000d, B:7:0x004e, B:9:0x0055, B:11:0x00bb, B:24:0x00fd, B:45:0x0176, B:47:0x017c, B:49:0x0184, B:52:0x018a, B:60:0x01b9, B:62:0x01c7, B:64:0x01cf, B:66:0x01d7, B:68:0x01e2, B:72:0x021c, B:78:0x023e, B:74:0x0221, B:75:0x0231, B:77:0x0238, B:27:0x0108, B:31:0x0115, B:34:0x0139, B:35:0x013d, B:38:0x015c, B:41:0x0167, B:17:0x00c8, B:19:0x00f3), top: B:86:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0176 A[Catch: all -> 0x0250, TryCatch #0 {all -> 0x0250, blocks: (B:5:0x000d, B:7:0x004e, B:9:0x0055, B:11:0x00bb, B:24:0x00fd, B:45:0x0176, B:47:0x017c, B:49:0x0184, B:52:0x018a, B:60:0x01b9, B:62:0x01c7, B:64:0x01cf, B:66:0x01d7, B:68:0x01e2, B:72:0x021c, B:78:0x023e, B:74:0x0221, B:75:0x0231, B:77:0x0238, B:27:0x0108, B:31:0x0115, B:34:0x0139, B:35:0x013d, B:38:0x015c, B:41:0x0167, B:17:0x00c8, B:19:0x00f3), top: B:86:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String b(java.util.Map<java.lang.String, java.lang.String> r27) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.apmobilesecuritysdk.a.a.b(java.util.Map):java.lang.String");
    }
}
