package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: ObservableElementAt.java */
/* loaded from: classes3.dex */
public final class q0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74598b;

    /* renamed from: c  reason: collision with root package name */
    final T f74599c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f74600d;

    /* compiled from: ObservableElementAt.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74601a;

        /* renamed from: b  reason: collision with root package name */
        final long f74602b;

        /* renamed from: c  reason: collision with root package name */
        final T f74603c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f74604d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74605e;

        /* renamed from: f  reason: collision with root package name */
        long f74606f;

        /* renamed from: g  reason: collision with root package name */
        boolean f74607g;

        a(io.reactivex.g0<? super T> g0Var, long j4, T t9, boolean z9) {
            this.f74601a = g0Var;
            this.f74602b = j4;
            this.f74603c = t9;
            this.f74604d = z9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74605e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74605e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74607g) {
                return;
            }
            this.f74607g = true;
            T t9 = this.f74603c;
            if (t9 == null && this.f74604d) {
                this.f74601a.onError(new NoSuchElementException());
                return;
            }
            if (t9 != null) {
                this.f74601a.onNext(t9);
            }
            this.f74601a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74607g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74607g = true;
            this.f74601a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74607g) {
                return;
            }
            long j4 = this.f74606f;
            if (j4 == this.f74602b) {
                this.f74607g = true;
                this.f74605e.dispose();
                this.f74601a.onNext(t9);
                this.f74601a.onComplete();
                return;
            }
            this.f74606f = j4 + 1;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74605e, cVar)) {
                this.f74605e = cVar;
                this.f74601a.onSubscribe(this);
            }
        }
    }

    public q0(io.reactivex.e0<T> e0Var, long j4, T t9, boolean z9) {
        super(e0Var);
        this.f74598b = j4;
        this.f74599c = t9;
        this.f74600d = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74598b, this.f74599c, this.f74600d));
    }
}
