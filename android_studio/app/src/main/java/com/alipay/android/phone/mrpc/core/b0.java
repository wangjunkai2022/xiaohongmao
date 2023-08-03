package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.Proxy;

/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private k f6617a;

    /* renamed from: b  reason: collision with root package name */
    private d0 f6618b = new d0(this);

    public b0(k kVar) {
        this.f6617a = kVar;
    }

    public final k a() {
        return this.f6617a;
    }

    public final <T> T b(Class<T> cls) {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new c0(this.f6617a, cls, this.f6618b));
    }
}
