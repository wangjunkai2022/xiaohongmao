package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.annotation.d0;
import com.fasterxml.jackson.databind.PropertyName;

/* compiled from: ObjectIdInfo.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: f  reason: collision with root package name */
    private static final p f15310f = new p(PropertyName.NO_NAME, Object.class, null, false, null);

    /* renamed from: a  reason: collision with root package name */
    protected final PropertyName f15311a;

    /* renamed from: b  reason: collision with root package name */
    protected final Class<? extends ObjectIdGenerator<?>> f15312b;

    /* renamed from: c  reason: collision with root package name */
    protected final Class<? extends c0> f15313c;

    /* renamed from: d  reason: collision with root package name */
    protected final Class<?> f15314d;

    /* renamed from: e  reason: collision with root package name */
    protected final boolean f15315e;

    public p(PropertyName propertyName, Class<?> cls, Class<? extends ObjectIdGenerator<?>> cls2, Class<? extends c0> cls3) {
        this(propertyName, cls, cls2, false, cls3);
    }

    public static p a() {
        return f15310f;
    }

    public boolean b() {
        return this.f15315e;
    }

    public Class<? extends ObjectIdGenerator<?>> c() {
        return this.f15312b;
    }

    public PropertyName d() {
        return this.f15311a;
    }

    public Class<? extends c0> e() {
        return this.f15313c;
    }

    public Class<?> f() {
        return this.f15314d;
    }

    public p g(boolean z9) {
        return this.f15315e == z9 ? this : new p(this.f15311a, this.f15314d, this.f15312b, z9, this.f15313c);
    }

    public String toString() {
        return "ObjectIdInfo: propName=" + this.f15311a + ", scope=" + com.fasterxml.jackson.databind.util.g.j0(this.f15314d) + ", generatorType=" + com.fasterxml.jackson.databind.util.g.j0(this.f15312b) + ", alwaysAsId=" + this.f15315e;
    }

    protected p(PropertyName propertyName, Class<?> cls, Class<? extends ObjectIdGenerator<?>> cls2, boolean z9) {
        this(propertyName, cls, cls2, z9, d0.class);
    }

    /* JADX WARN: Incorrect type for immutable var: ssa=java.lang.Class<? extends com.fasterxml.jackson.annotation.c0>, code=java.lang.Class, for r5v0, types: [java.lang.Class<? extends com.fasterxml.jackson.annotation.c0>] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected p(com.fasterxml.jackson.databind.PropertyName r1, java.lang.Class<?> r2, java.lang.Class<? extends com.fasterxml.jackson.annotation.ObjectIdGenerator<?>> r3, boolean r4, java.lang.Class r5) {
        /*
            r0 = this;
            r0.<init>()
            r0.f15311a = r1
            r0.f15314d = r2
            r0.f15312b = r3
            r0.f15315e = r4
            if (r5 != 0) goto Lf
            java.lang.Class<com.fasterxml.jackson.annotation.d0> r5 = com.fasterxml.jackson.annotation.d0.class
        Lf:
            r0.f15313c = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.p.<init>(com.fasterxml.jackson.databind.PropertyName, java.lang.Class, java.lang.Class, boolean, java.lang.Class):void");
    }
}
