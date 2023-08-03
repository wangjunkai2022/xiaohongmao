package io.reactivex.rxjava3.internal.operators.observable;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableAutoConnect.java */
/* loaded from: classes4.dex */
public final class k<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.observables.a<? extends T> f79619a;

    /* renamed from: b  reason: collision with root package name */
    final int f79620b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f79621c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicInteger f79622d = new AtomicInteger();

    public k(io.reactivex.rxjava3.observables.a<? extends T> source, int numberOfObservers, q7.g<? super io.reactivex.rxjava3.disposables.f> connection) {
        this.f79619a = source;
        this.f79620b = numberOfObservers;
        this.f79621c = connection;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> child) {
        this.f79619a.a(child);
        if (this.f79622d.incrementAndGet() == this.f79620b) {
            this.f79619a.E8(this.f79621c);
        }
    }
}
