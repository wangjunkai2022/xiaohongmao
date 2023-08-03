package io.reactivex.rxjava3.internal.operators.observable;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableWindowSubscribeIntercept.java */
/* loaded from: classes4.dex */
final class k4<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.subjects.i<T> f79655a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f79656b = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public k4(io.reactivex.rxjava3.subjects.i<T> source) {
        this.f79655a = source;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A8() {
        return !this.f79656b.get() && this.f79656b.compareAndSet(false, true);
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> s9) {
        this.f79655a.a(s9);
        this.f79656b.set(true);
    }
}
