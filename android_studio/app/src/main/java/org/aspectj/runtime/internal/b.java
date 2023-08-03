package org.aspectj.runtime.internal;

import org.aspectj.runtime.internal.cflowstack.g;

/* compiled from: CFlowCounter.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static org.aspectj.runtime.internal.cflowstack.d f91042b;

    /* renamed from: a  reason: collision with root package name */
    private org.aspectj.runtime.internal.cflowstack.a f91043a = f91042b.a();

    static {
        h();
    }

    private static String b(String str, String str2) {
        try {
            return System.getProperty(str, str2);
        } catch (SecurityException unused) {
            return str2;
        }
    }

    private static org.aspectj.runtime.internal.cflowstack.d c() {
        return new org.aspectj.runtime.internal.cflowstack.f();
    }

    private static org.aspectj.runtime.internal.cflowstack.d d() {
        return new g();
    }

    public static String e() {
        return f91042b.getClass().getName();
    }

    private static void h() {
        String b10 = b("aspectj.runtime.cflowstack.usethreadlocal", "unspecified");
        boolean z9 = false;
        if (!b10.equals("unspecified") ? b10.equals("yes") || b10.equals("true") : System.getProperty("java.class.version", "0.0").compareTo("46.0") >= 0) {
            z9 = true;
        }
        if (z9) {
            f91042b = c();
        } else {
            f91042b = d();
        }
    }

    public void a() {
        this.f91043a.a();
        if (this.f91043a.d()) {
            return;
        }
        this.f91043a.b();
    }

    public void f() {
        this.f91043a.c();
    }

    public boolean g() {
        return this.f91043a.d();
    }
}
