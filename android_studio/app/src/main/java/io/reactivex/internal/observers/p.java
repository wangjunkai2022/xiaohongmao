package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: SubscriberCompletableObserver.java */
/* loaded from: classes3.dex */
public final class p<T> implements io.reactivex.d, org.reactivestreams.e {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f71262a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.disposables.c f71263b;

    public p(org.reactivestreams.d<? super T> dVar) {
        this.f71262a = dVar;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        this.f71263b.dispose();
    }

    @Override // io.reactivex.d
    public void onComplete() {
        this.f71262a.onComplete();
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        this.f71262a.onError(th);
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (DisposableHelper.validate(this.f71263b, cVar)) {
            this.f71263b = cVar;
            this.f71262a.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
    }
}
