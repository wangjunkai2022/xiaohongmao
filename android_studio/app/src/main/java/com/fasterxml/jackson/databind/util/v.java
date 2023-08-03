package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;

/* compiled from: TypeKey.java */
/* loaded from: classes2.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    protected int f16087a;

    /* renamed from: b  reason: collision with root package name */
    protected Class<?> f16088b;

    /* renamed from: c  reason: collision with root package name */
    protected JavaType f16089c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f16090d;

    public v() {
    }

    public static final int h(JavaType javaType) {
        return javaType.hashCode() - 2;
    }

    public static final int i(Class<?> cls) {
        return cls.getName().hashCode() + 1;
    }

    public static final int j(JavaType javaType) {
        return javaType.hashCode() - 1;
    }

    public static final int k(Class<?> cls) {
        return cls.getName().hashCode();
    }

    public Class<?> a() {
        return this.f16088b;
    }

    public JavaType b() {
        return this.f16089c;
    }

    public boolean c() {
        return this.f16090d;
    }

    public final void d(JavaType javaType) {
        this.f16089c = javaType;
        this.f16088b = null;
        this.f16090d = true;
        this.f16087a = h(javaType);
    }

    public final void e(Class<?> cls) {
        this.f16089c = null;
        this.f16088b = cls;
        this.f16090d = true;
        this.f16087a = i(cls);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass() != getClass()) {
            return false;
        }
        v vVar = (v) obj;
        if (vVar.f16090d == this.f16090d) {
            Class<?> cls = this.f16088b;
            if (cls != null) {
                return vVar.f16088b == cls;
            }
            return this.f16089c.equals(vVar.f16089c);
        }
        return false;
    }

    public final void f(JavaType javaType) {
        this.f16089c = javaType;
        this.f16088b = null;
        this.f16090d = false;
        this.f16087a = j(javaType);
    }

    public final void g(Class<?> cls) {
        this.f16089c = null;
        this.f16088b = cls;
        this.f16090d = false;
        this.f16087a = k(cls);
    }

    public final int hashCode() {
        return this.f16087a;
    }

    public final String toString() {
        if (this.f16088b != null) {
            return "{class: " + this.f16088b.getName() + ", typed? " + this.f16090d + com.alipay.sdk.util.i.f6967d;
        }
        return "{type: " + this.f16089c + ", typed? " + this.f16090d + com.alipay.sdk.util.i.f6967d;
    }

    public v(v vVar) {
        this.f16087a = vVar.f16087a;
        this.f16088b = vVar.f16088b;
        this.f16089c = vVar.f16089c;
        this.f16090d = vVar.f16090d;
    }

    public v(Class<?> cls, boolean z9) {
        this.f16088b = cls;
        this.f16089c = null;
        this.f16090d = z9;
        this.f16087a = z9 ? i(cls) : k(cls);
    }

    public v(JavaType javaType, boolean z9) {
        this.f16089c = javaType;
        this.f16088b = null;
        this.f16090d = z9;
        this.f16087a = z9 ? h(javaType) : j(javaType);
    }
}
