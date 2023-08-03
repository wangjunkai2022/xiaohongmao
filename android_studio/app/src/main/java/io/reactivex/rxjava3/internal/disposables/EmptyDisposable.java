package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.core.d;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.fuseable.l;
import p7.f;

/* loaded from: classes4.dex */
public enum EmptyDisposable implements l<Object> {
    INSTANCE,
    NEVER;

    public static void complete(n0<?> observer) {
        observer.onSubscribe(INSTANCE);
        observer.onComplete();
    }

    public static void error(Throwable e4, n0<?> observer) {
        observer.onSubscribe(INSTANCE);
        observer.onError(e4);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public void clear() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this == INSTANCE;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(Object value) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    @f
    public Object poll() {
        return null;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.m
    public int requestFusion(int mode) {
        return mode & 2;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(Object v12, Object v22) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public static void complete(y<?> observer) {
        observer.onSubscribe(INSTANCE);
        observer.onComplete();
    }

    public static void error(Throwable e4, d observer) {
        observer.onSubscribe(INSTANCE);
        observer.onError(e4);
    }

    public static void complete(d observer) {
        observer.onSubscribe(INSTANCE);
        observer.onComplete();
    }

    public static void error(Throwable e4, s0<?> observer) {
        observer.onSubscribe(INSTANCE);
        observer.onError(e4);
    }

    public static void error(Throwable e4, y<?> observer) {
        observer.onSubscribe(INSTANCE);
        observer.onError(e4);
    }
}
