package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableRepeatUntil.java */
/* loaded from: classes3.dex */
public final class q2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.e f74630b;

    /* compiled from: ObservableRepeatUntil.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74631e = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74632a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f74633b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f74634c;

        /* renamed from: d  reason: collision with root package name */
        final n7.e f74635d;

        a(io.reactivex.g0<? super T> g0Var, n7.e eVar, SequentialDisposable sequentialDisposable, io.reactivex.e0<? extends T> e0Var) {
            this.f74632a = g0Var;
            this.f74633b = sequentialDisposable;
            this.f74634c = e0Var;
            this.f74635d = eVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                do {
                    this.f74634c.subscribe(this);
                    i4 = addAndGet(-i4);
                } while (i4 != 0);
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            try {
                if (this.f74635d.a()) {
                    this.f74632a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74632a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74632a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74632a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74633b.replace(cVar);
        }
    }

    public q2(io.reactivex.z<T> zVar, n7.e eVar) {
        super(zVar);
        this.f74630b = eVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        new a(g0Var, this.f74630b, sequentialDisposable, this.f73827a).a();
    }
}
