package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;

/* compiled from: ObservableOnErrorNext.java */
/* loaded from: classes3.dex */
public final class d2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends io.reactivex.e0<? extends T>> f73981b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f73982c;

    /* compiled from: ObservableOnErrorNext.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73983a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends io.reactivex.e0<? extends T>> f73984b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73985c;

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f73986d = new SequentialDisposable();

        /* renamed from: e  reason: collision with root package name */
        boolean f73987e;

        /* renamed from: f  reason: collision with root package name */
        boolean f73988f;

        a(io.reactivex.g0<? super T> g0Var, n7.o<? super Throwable, ? extends io.reactivex.e0<? extends T>> oVar, boolean z9) {
            this.f73983a = g0Var;
            this.f73984b = oVar;
            this.f73985c = z9;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f73988f) {
                return;
            }
            this.f73988f = true;
            this.f73987e = true;
            this.f73983a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73987e) {
                if (this.f73988f) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                } else {
                    this.f73983a.onError(th);
                    return;
                }
            }
            this.f73987e = true;
            if (this.f73985c && !(th instanceof Exception)) {
                this.f73983a.onError(th);
                return;
            }
            try {
                io.reactivex.e0<? extends T> apply = this.f73984b.apply(th);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("Observable is null");
                    nullPointerException.initCause(th);
                    this.f73983a.onError(nullPointerException);
                    return;
                }
                apply.subscribe(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f73983a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f73988f) {
                return;
            }
            this.f73983a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73986d.replace(cVar);
        }
    }

    public d2(io.reactivex.e0<T> e0Var, n7.o<? super Throwable, ? extends io.reactivex.e0<? extends T>> oVar, boolean z9) {
        super(e0Var);
        this.f73981b = oVar;
        this.f73982c = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var, this.f73981b, this.f73982c);
        g0Var.onSubscribe(aVar.f73986d);
        this.f73827a.subscribe(aVar);
    }
}
