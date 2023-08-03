package org.aspectj.runtime.internal;

import java.util.Stack;
import org.aspectj.lang.NoAspectBoundException;
import org.aspectj.runtime.internal.cflowstack.g;

/* compiled from: CFlowStack.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static org.aspectj.runtime.internal.cflowstack.d f91059b;

    /* renamed from: a  reason: collision with root package name */
    private org.aspectj.runtime.internal.cflowstack.c f91060a = f91059b.b();

    static {
        p();
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

    private Stack e() {
        return this.f91060a.a();
    }

    public static String f() {
        return f91059b.getClass().getName();
    }

    private static void p() {
        String b10 = b("aspectj.runtime.cflowstack.usethreadlocal", "unspecified");
        boolean z9 = false;
        if (!b10.equals("unspecified") ? b10.equals("yes") || b10.equals("true") : System.getProperty("java.class.version", "0.0").compareTo("46.0") >= 0) {
            z9 = true;
        }
        if (z9) {
            f91059b = c();
        } else {
            f91059b = d();
        }
    }

    public Object a(int i4) {
        l8.a i10 = i();
        if (i10 == null) {
            return null;
        }
        return i10.a(i4);
    }

    public boolean g() {
        return !e().isEmpty();
    }

    public Object h() {
        Stack e4 = e();
        if (!e4.isEmpty()) {
            return e4.peek();
        }
        throw new NoAspectBoundException();
    }

    public l8.a i() {
        Stack e4 = e();
        if (e4.isEmpty()) {
            return null;
        }
        return (l8.a) e4.peek();
    }

    public Object j() {
        l8.a i4 = i();
        if (i4 != null) {
            return i4.b();
        }
        throw new NoAspectBoundException();
    }

    public l8.a k() {
        Stack e4 = e();
        if (e4.isEmpty()) {
            return null;
        }
        return (l8.a) e4.elementAt(0);
    }

    public void l() {
        Stack e4 = e();
        e4.pop();
        if (e4.isEmpty()) {
            this.f91060a.b();
        }
    }

    public void m(Object obj) {
        e().push(obj);
    }

    public void n(Object[] objArr) {
        e().push(new c(objArr));
    }

    public void o(Object obj) {
        e().push(new l8.a(obj));
    }
}
