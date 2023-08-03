package io.reactivex.internal.disposables;

import io.reactivex.d;
import io.reactivex.g0;
import io.reactivex.l0;
import io.reactivex.t;
import m7.f;
import o7.j;

/* loaded from: classes.dex */
public enum EmptyDisposable implements j<Object> {
    INSTANCE,
    NEVER;

    public static void complete(g0<?> g0Var) {
        g0Var.onSubscribe(INSTANCE);
        g0Var.onComplete();
    }

    public static void error(Throwable th, g0<?> g0Var) {
        g0Var.onSubscribe(INSTANCE);
        g0Var.onError(th);
    }

    @Override // o7.o
    public void clear() {
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this == INSTANCE;
    }

    @Override // o7.o
    public boolean isEmpty() {
        return true;
    }

    @Override // o7.o
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // o7.o
    @f
    public Object poll() throws Exception {
        return null;
    }

    @Override // o7.k
    public int requestFusion(int i4) {
        return i4 & 2;
    }

    @Override // o7.o
    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public static void complete(t<?> tVar) {
        tVar.onSubscribe(INSTANCE);
        tVar.onComplete();
    }

    public static void error(Throwable th, d dVar) {
        dVar.onSubscribe(INSTANCE);
        dVar.onError(th);
    }

    public static void complete(d dVar) {
        dVar.onSubscribe(INSTANCE);
        dVar.onComplete();
    }

    public static void error(Throwable th, l0<?> l0Var) {
        l0Var.onSubscribe(INSTANCE);
        l0Var.onError(th);
    }

    public static void error(Throwable th, t<?> tVar) {
        tVar.onSubscribe(INSTANCE);
        tVar.onError(th);
    }
}
