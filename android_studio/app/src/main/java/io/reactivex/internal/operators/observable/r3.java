package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableTakeUntil.java */
/* loaded from: classes3.dex */
public final class r3<T, U> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends U> f74693b;

    /* compiled from: ObservableTakeUntil.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74694e = 1418547743690811973L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74695a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74696b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final a<T, U>.C0595a f74697c = new C0595a();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f74698d = new AtomicThrowable();

        /* compiled from: ObservableTakeUntil.java */
        /* renamed from: io.reactivex.internal.operators.observable.r3$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0595a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<U> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f74699b = -8693423678067375039L;

            C0595a() {
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                a.this.a();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                a.this.b(th);
            }

            @Override // io.reactivex.g0
            public void onNext(U u9) {
                DisposableHelper.dispose(this);
                a.this.a();
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.g0<? super T> g0Var) {
            this.f74695a = g0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f74696b);
            io.reactivex.internal.util.h.a(this.f74695a, this, this.f74698d);
        }

        void b(Throwable th) {
            DisposableHelper.dispose(this.f74696b);
            io.reactivex.internal.util.h.c(this.f74695a, th, this, this.f74698d);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f74696b);
            DisposableHelper.dispose(this.f74697c);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f74696b.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this.f74697c);
            io.reactivex.internal.util.h.a(this.f74695a, this, this.f74698d);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f74697c);
            io.reactivex.internal.util.h.c(this.f74695a, th, this, this.f74698d);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            io.reactivex.internal.util.h.e(this.f74695a, t9, this, this.f74698d);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74696b, cVar);
        }
    }

    public r3(io.reactivex.e0<T> e0Var, io.reactivex.e0<? extends U> e0Var2) {
        super(e0Var);
        this.f74693b = e0Var2;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var);
        g0Var.onSubscribe(aVar);
        this.f74693b.subscribe(aVar.f74697c);
        this.f73827a.subscribe(aVar);
    }
}
