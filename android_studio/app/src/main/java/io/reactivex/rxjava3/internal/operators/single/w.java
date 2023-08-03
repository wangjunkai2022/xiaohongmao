package io.reactivex.rxjava3.internal.operators.single;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SingleEquals.java */
/* loaded from: classes4.dex */
public final class w<T> extends io.reactivex.rxjava3.core.p0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80948a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80949b;

    /* compiled from: SingleEquals.java */
    /* loaded from: classes4.dex */
    static class a<T> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f80950a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f80951b;

        /* renamed from: c  reason: collision with root package name */
        final Object[] f80952c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f80953d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f80954e;

        a(int index, io.reactivex.rxjava3.disposables.c set, Object[] values, io.reactivex.rxjava3.core.s0<? super Boolean> observer, AtomicInteger count) {
            this.f80950a = index;
            this.f80951b = set;
            this.f80952c = values;
            this.f80953d = observer;
            this.f80954e = count;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            int andSet = this.f80954e.getAndSet(-1);
            if (andSet != 0 && andSet != 1) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f80951b.dispose();
            this.f80953d.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80951b.b(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80952c[this.f80950a] = value;
            if (this.f80954e.incrementAndGet() == 2) {
                io.reactivex.rxjava3.core.s0<? super Boolean> s0Var = this.f80953d;
                Object[] objArr = this.f80952c;
                s0Var.onSuccess(Boolean.valueOf(Objects.equals(objArr[0], objArr[1])));
            }
        }
    }

    public w(io.reactivex.rxjava3.core.v0<? extends T> first, io.reactivex.rxjava3.core.v0<? extends T> second) {
        this.f80948a = first;
        this.f80949b = second;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        AtomicInteger atomicInteger = new AtomicInteger();
        Object[] objArr = {null, null};
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        observer.onSubscribe(cVar);
        this.f80948a.d(new a(0, cVar, objArr, observer, atomicInteger));
        this.f80949b.d(new a(1, cVar, objArr, observer, atomicInteger));
    }
}
