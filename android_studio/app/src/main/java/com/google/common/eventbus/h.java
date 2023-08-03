package com.google.common.eventbus;

import com.google.common.base.a0;
import java.lang.reflect.Method;

/* compiled from: SubscriberExceptionContext.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final e f34063a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f34064b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f34065c;

    /* renamed from: d  reason: collision with root package name */
    private final Method f34066d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e eVar, Object obj, Object obj2, Method method) {
        this.f34063a = (e) a0.E(eVar);
        this.f34064b = a0.E(obj);
        this.f34065c = a0.E(obj2);
        this.f34066d = (Method) a0.E(method);
    }

    public Object a() {
        return this.f34064b;
    }

    public e b() {
        return this.f34063a;
    }

    public Object c() {
        return this.f34065c;
    }

    public Method d() {
        return this.f34066d;
    }
}
