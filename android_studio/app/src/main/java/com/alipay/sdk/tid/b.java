package com.alipay.sdk.tid;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private static b f6924c;

    /* renamed from: a  reason: collision with root package name */
    public String f6925a;

    /* renamed from: b  reason: collision with root package name */
    public String f6926b;

    private b() {
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (f6924c == null) {
                f6924c = new b();
                Context context = p.b.b().f93064a;
                a aVar = new a(context);
                String b10 = com.alipay.sdk.util.b.a(context).b();
                String e4 = com.alipay.sdk.util.b.a(context).e();
                f6924c.f6925a = aVar.a(b10, e4);
                f6924c.f6926b = aVar.q(b10, e4);
                if (TextUtils.isEmpty(f6924c.f6926b)) {
                    b bVar2 = f6924c;
                    String hexString = Long.toHexString(System.currentTimeMillis());
                    if (hexString.length() > 10) {
                        hexString = hexString.substring(hexString.length() - 10);
                    }
                    bVar2.f6926b = hexString;
                }
                b bVar3 = f6924c;
                aVar.k(b10, e4, bVar3.f6925a, bVar3.f6926b);
            }
            bVar = f6924c;
        }
        return bVar;
    }

    private void b(Context context) {
        a aVar = new a(context);
        try {
            aVar.k(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), this.f6925a, this.f6926b);
        } catch (Exception unused) {
        } finally {
            aVar.close();
        }
    }

    private void c(String str) {
        this.f6925a = str;
    }

    private String d() {
        return this.f6925a;
    }

    private void e(String str) {
        this.f6926b = str;
    }

    private String f() {
        return this.f6926b;
    }

    private boolean g() {
        return TextUtils.isEmpty(this.f6925a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
        if (r0.isOpen() != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0038, code lost:
        if (r0.isOpen() != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void h() {
        /*
            p.b r0 = p.b.b()
            android.content.Context r0 = r0.f93064a
            com.alipay.sdk.util.b r1 = com.alipay.sdk.util.b.a(r0)
            java.lang.String r1 = r1.b()
            com.alipay.sdk.util.b r2 = com.alipay.sdk.util.b.a(r0)
            java.lang.String r8 = r2.e()
            com.alipay.sdk.tid.a r9 = new com.alipay.sdk.tid.a
            r9.<init>(r0)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r0 = r9.getWritableDatabase()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L48
            java.lang.String r6 = ""
            java.lang.String r7 = ""
            r2 = r9
            r3 = r0
            r4 = r1
            r5 = r8
            r2.i(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L48
            java.lang.String r1 = com.alipay.sdk.tid.a.s(r1, r8)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L48
            com.alipay.sdk.tid.a.h(r0, r1)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L48
            if (r0 == 0) goto L54
            boolean r1 = r0.isOpen()
            if (r1 == 0) goto L54
            goto L51
        L3b:
            r1 = move-exception
            if (r0 == 0) goto L47
            boolean r2 = r0.isOpen()
            if (r2 == 0) goto L47
            r0.close()
        L47:
            throw r1
        L48:
            if (r0 == 0) goto L54
            boolean r1 = r0.isOpen()
            if (r1 == 0) goto L54
        L51:
            r0.close()
        L54:
            r9.close()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.tid.b.h():void");
    }

    private static String i() {
        String hexString = Long.toHexString(System.currentTimeMillis());
        return hexString.length() > 10 ? hexString.substring(hexString.length() - 10) : hexString;
    }
}
