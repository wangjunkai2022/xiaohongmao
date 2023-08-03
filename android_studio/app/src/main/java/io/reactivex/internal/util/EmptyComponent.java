package io.reactivex.internal.util;

import io.reactivex.g0;
import io.reactivex.l0;
import io.reactivex.t;

/* loaded from: classes4.dex */
public enum EmptyComponent implements io.reactivex.o<Object>, g0<Object>, t<Object>, l0<Object>, io.reactivex.d, org.reactivestreams.e, io.reactivex.disposables.c {
    INSTANCE;

    public static <T> g0<T> asObserver() {
        return INSTANCE;
    }

    public static <T> org.reactivestreams.d<T> asSubscriber() {
        return INSTANCE;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return true;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        io.reactivex.plugins.a.Y(th);
    }

    @Override // org.reactivestreams.d
    public void onNext(Object obj) {
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        cVar.dispose();
    }

    @Override // io.reactivex.t
    public void onSuccess(Object obj) {
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        eVar.cancel();
    }
}
