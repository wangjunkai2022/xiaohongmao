package io.reactivex.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableAutoConnect.java */
/* loaded from: classes3.dex */
public final class k<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.flowables.a<? extends T> f72139b;

    /* renamed from: c  reason: collision with root package name */
    final int f72140c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super io.reactivex.disposables.c> f72141d;

    /* renamed from: e  reason: collision with root package name */
    final AtomicInteger f72142e = new AtomicInteger();

    public k(io.reactivex.flowables.a<? extends T> aVar, int i4, n7.g<? super io.reactivex.disposables.c> gVar) {
        this.f72139b = aVar;
        this.f72140c = i4;
        this.f72141d = gVar;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        this.f72139b.i(dVar);
        if (this.f72142e.incrementAndGet() == this.f72140c) {
            this.f72139b.Q8(this.f72141d);
        }
    }
}
