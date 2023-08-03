package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: FlowableWindowSubscribeIntercept.java */
/* loaded from: classes4.dex */
final class y4<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.processors.c<T> f78347b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f78348c = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public y4(io.reactivex.rxjava3.processors.c<T> source) {
        this.f78347b = source;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f78347b.i(s9);
        this.f78348c.set(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g9() {
        return !this.f78348c.get() && this.f78348c.compareAndSet(false, true);
    }
}
