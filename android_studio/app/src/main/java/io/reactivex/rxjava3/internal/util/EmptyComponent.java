package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.y;

/* loaded from: classes4.dex */
public enum EmptyComponent implements r<Object>, n0<Object>, y<Object>, s0<Object>, io.reactivex.rxjava3.core.d, org.reactivestreams.e, io.reactivex.rxjava3.disposables.f {
    INSTANCE;

    public static <T> n0<T> asObserver() {
        return INSTANCE;
    }

    public static <T> org.reactivestreams.d<T> asSubscriber() {
        return INSTANCE;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return true;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // org.reactivestreams.d
    public void onNext(Object t9) {
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        d4.dispose();
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(Object value) {
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        s9.cancel();
    }
}
