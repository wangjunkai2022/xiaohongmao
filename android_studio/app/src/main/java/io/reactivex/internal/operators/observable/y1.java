package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableMergeWithCompletable.java */
/* loaded from: classes3.dex */
public final class y1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f75047b;

    /* compiled from: ObservableMergeWithCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: g  reason: collision with root package name */
        private static final long f75048g = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75049a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75050b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0600a f75051c = new C0600a(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f75052d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f75053e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f75054f;

        /* compiled from: ObservableMergeWithCompletable.java */
        /* renamed from: io.reactivex.internal.operators.observable.y1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0600a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f75055b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f75056a;

            C0600a(a<?> aVar) {
                this.f75056a = aVar;
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f75056a.a();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f75056a.b(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.g0<? super T> g0Var) {
            this.f75049a = g0Var;
        }

        void a() {
            this.f75054f = true;
            if (this.f75053e) {
                io.reactivex.internal.util.h.a(this.f75049a, this, this.f75052d);
            }
        }

        void b(Throwable th) {
            DisposableHelper.dispose(this.f75050b);
            io.reactivex.internal.util.h.c(this.f75049a, th, this, this.f75052d);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f75050b);
            DisposableHelper.dispose(this.f75051c);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f75050b.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f75053e = true;
            if (this.f75054f) {
                io.reactivex.internal.util.h.a(this.f75049a, this, this.f75052d);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f75051c);
            io.reactivex.internal.util.h.c(this.f75049a, th, this, this.f75052d);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            io.reactivex.internal.util.h.e(this.f75049a, t9, this, this.f75052d);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f75050b, cVar);
        }
    }

    public y1(io.reactivex.z<T> zVar, io.reactivex.g gVar) {
        super(zVar);
        this.f75047b = gVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var);
        g0Var.onSubscribe(aVar);
        this.f73827a.subscribe(aVar);
        this.f75047b.d(aVar.f75051c);
    }
}
