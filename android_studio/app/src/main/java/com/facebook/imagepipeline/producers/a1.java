package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;

/* compiled from: StatefulProducerRunnable.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class a1<T> extends com.facebook.common.executors.h<T> {

    /* renamed from: g  reason: collision with root package name */
    private final l<T> f12899g;

    /* renamed from: h  reason: collision with root package name */
    private final u0 f12900h;

    /* renamed from: i  reason: collision with root package name */
    private final String f12901i;

    /* renamed from: j  reason: collision with root package name */
    private final s0 f12902j;

    public a1(l<T> consumer, u0 producerListener, s0 producerContext, String producerName) {
        this.f12899g = consumer;
        this.f12900h = producerListener;
        this.f12901i = producerName;
        this.f12902j = producerContext;
        producerListener.d(producerContext, producerName);
    }

    @Override // com.facebook.common.executors.h
    protected abstract void b(@r7.h T result);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.h
    public void d() {
        u0 u0Var = this.f12900h;
        s0 s0Var = this.f12902j;
        String str = this.f12901i;
        u0Var.c(s0Var, str, u0Var.f(s0Var, str) ? g() : null);
        this.f12899g.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.h
    public void e(Exception e4) {
        u0 u0Var = this.f12900h;
        s0 s0Var = this.f12902j;
        String str = this.f12901i;
        u0Var.k(s0Var, str, e4, u0Var.f(s0Var, str) ? h(e4) : null);
        this.f12899g.a(e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.h
    public void f(@r7.h T result) {
        u0 u0Var = this.f12900h;
        s0 s0Var = this.f12902j;
        String str = this.f12901i;
        u0Var.j(s0Var, str, u0Var.f(s0Var, str) ? i(result) : null);
        this.f12899g.c(result, 1);
    }

    @r7.h
    protected Map<String, String> g() {
        return null;
    }

    @r7.h
    protected Map<String, String> h(Exception exception) {
        return null;
    }

    @r7.h
    protected Map<String, String> i(@r7.h T result) {
        return null;
    }
}
