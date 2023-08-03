package com.google.common.eventbus;

import com.google.common.base.a0;
import com.google.common.base.v;
import io.sentry.protocol.v;

/* compiled from: DeadEvent.java */
@h3.a
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Object f34038a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f34039b;

    public c(Object obj, Object obj2) {
        this.f34038a = a0.E(obj);
        this.f34039b = a0.E(obj2);
    }

    public Object a() {
        return this.f34039b;
    }

    public Object b() {
        return this.f34038a;
    }

    public String toString() {
        return v.c(this).f(v.b.f83881a, this.f34038a).f("event", this.f34039b).toString();
    }
}
