package com.alipay.apmobilesecuritysdk.face;

import android.content.Context;
import java.util.HashMap;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class c {

    /* renamed from: e  reason: collision with root package name */
    private static c f6714e;

    /* renamed from: f  reason: collision with root package name */
    private static Object f6715f = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Context f6716a;

    /* renamed from: c  reason: collision with root package name */
    private Thread f6718c;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f6717b = false;

    /* renamed from: d  reason: collision with root package name */
    private LinkedList<b> f6719d = new LinkedList<>();

    /* loaded from: classes.dex */
    public interface a {
        void a(C0037c c0037c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private int f6720a;

        /* renamed from: b  reason: collision with root package name */
        private String f6721b;

        /* renamed from: c  reason: collision with root package name */
        private String f6722c;

        /* renamed from: d  reason: collision with root package name */
        private String f6723d;

        /* renamed from: e  reason: collision with root package name */
        private a f6724e;

        public b(int i4, String str, String str2, String str3, a aVar) {
            this.f6720a = i4;
            this.f6723d = str3;
            if (t.a.e(str)) {
                this.f6721b = g.b.a(c.this.f6716a);
            } else {
                this.f6721b = str;
            }
            t.b.b("Utdid = " + this.f6721b);
            this.f6722c = str2;
            this.f6724e = aVar;
        }

        public void a() {
            if (c.this.f6717b) {
                return;
            }
            c.this.f6717b = true;
            try {
                g.a.a(c.this.f6716a);
                g.a.c();
                HashMap hashMap = new HashMap();
                hashMap.put(m.b.f86919c, this.f6722c);
                hashMap.put(m.b.f86923g, this.f6721b);
                g.a.a(c.this.f6716a);
                hashMap.put("umid", g.a.b());
                hashMap.put("userId", this.f6723d);
                e.a(c.this.f6716a, hashMap);
                if (this.f6724e != null) {
                    C0037c c0037c = new C0037c();
                    c0037c.f6728c = com.alipay.apmobilesecuritysdk.a.a.f(c.this.f6716a);
                    c0037c.f6727b = com.alipay.apmobilesecuritysdk.a.a.a(c.this.f6716a);
                    g.a.a(c.this.f6716a);
                    c0037c.f6726a = g.a.b();
                    c0037c.f6729d = i.b.a(c.this.f6716a);
                    t.b.b("[*]result.apdid     = " + c0037c.f6728c);
                    t.b.b("[*]result.token     = " + c0037c.f6727b);
                    t.b.b("[*]result.umid      = " + c0037c.f6726a);
                    t.b.b("[*]result.clientKey = " + c0037c.f6729d);
                    this.f6724e.a(c0037c);
                }
            } catch (Throwable unused) {
            }
            c.this.f6717b = false;
        }
    }

    /* renamed from: com.alipay.apmobilesecuritysdk.face.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0037c {

        /* renamed from: a  reason: collision with root package name */
        public String f6726a;

        /* renamed from: b  reason: collision with root package name */
        public String f6727b;

        /* renamed from: c  reason: collision with root package name */
        public String f6728c;

        /* renamed from: d  reason: collision with root package name */
        public String f6729d;

        public C0037c() {
        }
    }

    private c(Context context) {
        this.f6716a = context;
    }

    public static c g(Context context) {
        c cVar;
        synchronized (f6715f) {
            if (f6714e == null) {
                f6714e = new c(context);
            }
            cVar = f6714e;
        }
        return cVar;
    }

    public String f() {
        return com.alipay.apmobilesecuritysdk.a.a.a(this.f6716a);
    }

    public C0037c h() {
        C0037c c0037c = new C0037c();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            c0037c.f6727b = com.alipay.apmobilesecuritysdk.a.a.a(this.f6716a);
            t.b.b("getLocalApdidToken spend " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            c0037c.f6728c = com.alipay.apmobilesecuritysdk.a.a.f(this.f6716a);
            g.a.a(this.f6716a);
            c0037c.f6726a = g.a.b();
            c0037c.f6729d = i.b.a(this.f6716a);
        } catch (Throwable unused) {
        }
        return c0037c;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void i(int r10, java.util.Map<java.lang.String, java.lang.String> r11, com.alipay.apmobilesecuritysdk.face.c.a r12) {
        /*
            r9 = this;
            java.lang.String r0 = "utdid"
            java.lang.String r1 = ""
            java.lang.String r5 = t.a.d(r11, r0, r1)
            java.lang.String r0 = "tid"
            java.lang.String r6 = t.a.d(r11, r0, r1)
            java.lang.String r0 = "userId"
            java.lang.String r7 = t.a.d(r11, r0, r1)
            r11 = 1
            if (r10 == r11) goto L27
            r11 = 2
            java.lang.String r0 = "https://mobilegw.alipay.com/mgw.htm"
            if (r10 == r11) goto L23
            r11 = 3
            if (r10 == r11) goto L20
            goto L23
        L20:
            java.lang.String r11 = "http://mobilegw-1-64.test.alipay.net/mgw.htm"
            goto L29
        L23:
            q.a.b(r0)
            goto L2c
        L27:
            java.lang.String r11 = "http://mobilegw.stable.alipay.net/mgw.htm"
        L29:
            q.a.b(r11)
        L2c:
            java.util.LinkedList<com.alipay.apmobilesecuritysdk.face.c$b> r11 = r9.f6719d
            com.alipay.apmobilesecuritysdk.face.c$b r0 = new com.alipay.apmobilesecuritysdk.face.c$b
            r2 = r0
            r3 = r9
            r4 = r10
            r8 = r12
            r2.<init>(r4, r5, r6, r7, r8)
            r11.addLast(r0)
            java.lang.Thread r10 = r9.f6718c
            if (r10 != 0) goto L57
            java.lang.Thread r10 = new java.lang.Thread
            com.alipay.apmobilesecuritysdk.face.a r11 = new com.alipay.apmobilesecuritysdk.face.a
            r11.<init>(r9)
            r10.<init>(r11)
            r9.f6718c = r10
            com.alipay.apmobilesecuritysdk.face.b r11 = new com.alipay.apmobilesecuritysdk.face.b
            r11.<init>(r9)
            r10.setUncaughtExceptionHandler(r11)
            java.lang.Thread r10 = r9.f6718c
            r10.start()
        L57:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.apmobilesecuritysdk.face.c.i(int, java.util.Map, com.alipay.apmobilesecuritysdk.face.c$a):void");
    }
}
