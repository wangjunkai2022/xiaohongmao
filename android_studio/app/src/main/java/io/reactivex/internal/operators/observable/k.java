package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableAutoConnect.java */
/* loaded from: classes3.dex */
public final class k<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.observables.a<? extends T> f74320a;

    /* renamed from: b  reason: collision with root package name */
    final int f74321b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super io.reactivex.disposables.c> f74322c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicInteger f74323d = new AtomicInteger();

    public k(io.reactivex.observables.a<? extends T> aVar, int i4, n7.g<? super io.reactivex.disposables.c> gVar) {
        this.f74320a = aVar;
        this.f74321b = i4;
        this.f74322c = gVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f74320a.subscribe((io.reactivex.g0<? super Object>) g0Var);
        if (this.f74323d.incrementAndGet() == this.f74321b) {
            this.f74320a.g(this.f74322c);
        }
    }
}
