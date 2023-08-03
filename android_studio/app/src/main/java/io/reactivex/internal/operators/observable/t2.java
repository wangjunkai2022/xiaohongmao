package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableRetryBiPredicate.java */
/* loaded from: classes3.dex */
public final class t2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.d<? super Integer, ? super Throwable> f74784b;

    /* compiled from: ObservableRetryBiPredicate.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f74785f = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74786a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f74787b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f74788c;

        /* renamed from: d  reason: collision with root package name */
        final n7.d<? super Integer, ? super Throwable> f74789d;

        /* renamed from: e  reason: collision with root package name */
        int f74790e;

        a(io.reactivex.g0<? super T> g0Var, n7.d<? super Integer, ? super Throwable> dVar, SequentialDisposable sequentialDisposable, io.reactivex.e0<? extends T> e0Var) {
            this.f74786a = g0Var;
            this.f74787b = sequentialDisposable;
            this.f74788c = e0Var;
            this.f74789d = dVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f74787b.isDisposed()) {
                    this.f74788c.subscribe(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74786a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            try {
                n7.d<? super Integer, ? super Throwable> dVar = this.f74789d;
                int i4 = this.f74790e + 1;
                this.f74790e = i4;
                if (!dVar.a(Integer.valueOf(i4), th)) {
                    this.f74786a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f74786a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74786a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74787b.replace(cVar);
        }
    }

    public t2(io.reactivex.z<T> zVar, n7.d<? super Integer, ? super Throwable> dVar) {
        super(zVar);
        this.f74784b = dVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        new a(g0Var, this.f74784b, sequentialDisposable, this.f73827a).a();
    }
}
