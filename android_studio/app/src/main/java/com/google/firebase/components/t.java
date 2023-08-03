package com.google.firebase.components;

/* compiled from: Dependency.java */
/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f35469a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35470b;

    /* renamed from: c  reason: collision with root package name */
    private final int f35471c;

    private t(Class<?> cls, int i4, int i10) {
        this.f35469a = (Class) c0.c(cls, "Null dependency anInterface.");
        this.f35470b = i4;
        this.f35471c = i10;
    }

    public static t a(Class<?> cls) {
        return new t(cls, 0, 2);
    }

    private static String b(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 == 2) {
                    return "deferred";
                }
                throw new AssertionError("Unsupported injection: " + i4);
            }
            return "provider";
        }
        return "direct";
    }

    public static t h(Class<?> cls) {
        return new t(cls, 0, 0);
    }

    public static t i(Class<?> cls) {
        return new t(cls, 0, 1);
    }

    public static t j(Class<?> cls) {
        return new t(cls, 1, 0);
    }

    public static t k(Class<?> cls) {
        return new t(cls, 1, 1);
    }

    public static t l(Class<?> cls) {
        return new t(cls, 2, 0);
    }

    public static t m(Class<?> cls) {
        return new t(cls, 2, 1);
    }

    public Class<?> c() {
        return this.f35469a;
    }

    public boolean d() {
        return this.f35471c == 2;
    }

    public boolean e() {
        return this.f35471c == 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof t) {
            t tVar = (t) obj;
            return this.f35469a == tVar.f35469a && this.f35470b == tVar.f35470b && this.f35471c == tVar.f35471c;
        }
        return false;
    }

    public boolean f() {
        return this.f35470b == 1;
    }

    public boolean g() {
        return this.f35470b == 2;
    }

    public int hashCode() {
        return ((((this.f35469a.hashCode() ^ 1000003) * 1000003) ^ this.f35470b) * 1000003) ^ this.f35471c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f35469a);
        sb.append(", type=");
        int i4 = this.f35470b;
        sb.append(i4 == 1 ? "required" : i4 == 0 ? "optional" : "set");
        sb.append(", injection=");
        sb.append(b(this.f35471c));
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
