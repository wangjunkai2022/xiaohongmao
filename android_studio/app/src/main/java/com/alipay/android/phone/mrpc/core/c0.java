package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class c0 implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    protected k f6619a;

    /* renamed from: b  reason: collision with root package name */
    protected Class<?> f6620b;

    /* renamed from: c  reason: collision with root package name */
    protected d0 f6621c;

    public c0(k kVar, Class<?> cls, d0 d0Var) {
        this.f6619a = kVar;
        this.f6620b = cls;
        this.f6621c = d0Var;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        return this.f6621c.a(method, objArr);
    }
}
