package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DelegatingConsumer.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class p<I, O> extends b<I> {

    /* renamed from: h  reason: collision with root package name */
    private final l<O> f13178h;

    public p(l<O> consumer) {
        this.f13178h = consumer;
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void h() {
        this.f13178h.b();
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void i(Throwable t9) {
        this.f13178h.a(t9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.b
    public void k(float progress) {
        this.f13178h.d(progress);
    }

    public l<O> r() {
        return this.f13178h;
    }
}
