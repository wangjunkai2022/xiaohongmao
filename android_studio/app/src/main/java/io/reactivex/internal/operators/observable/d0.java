package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableDebounce.java */
/* loaded from: classes3.dex */
public final class d0<T, U> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.e0<U>> f73968b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableDebounce.java */
    /* loaded from: classes3.dex */
    public static final class a<T, U> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73969a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<U>> f73970b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73971c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f73972d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        volatile long f73973e;

        /* renamed from: f  reason: collision with root package name */
        boolean f73974f;

        /* compiled from: ObservableDebounce.java */
        /* renamed from: io.reactivex.internal.operators.observable.d0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0589a<T, U> extends io.reactivex.observers.d<U> {

            /* renamed from: b  reason: collision with root package name */
            final a<T, U> f73975b;

            /* renamed from: c  reason: collision with root package name */
            final long f73976c;

            /* renamed from: d  reason: collision with root package name */
            final T f73977d;

            /* renamed from: e  reason: collision with root package name */
            boolean f73978e;

            /* renamed from: f  reason: collision with root package name */
            final AtomicBoolean f73979f = new AtomicBoolean();

            C0589a(a<T, U> aVar, long j4, T t9) {
                this.f73975b = aVar;
                this.f73976c = j4;
                this.f73977d = t9;
            }

            void b() {
                if (this.f73979f.compareAndSet(false, true)) {
                    this.f73975b.a(this.f73976c, this.f73977d);
                }
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                if (this.f73978e) {
                    return;
                }
                this.f73978e = true;
                b();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                if (this.f73978e) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                }
                this.f73978e = true;
                this.f73975b.onError(th);
            }

            @Override // io.reactivex.g0
            public void onNext(U u9) {
                if (this.f73978e) {
                    return;
                }
                this.f73978e = true;
                dispose();
                b();
            }
        }

        a(io.reactivex.g0<? super T> g0Var, n7.o<? super T, ? extends io.reactivex.e0<U>> oVar) {
            this.f73969a = g0Var;
            this.f73970b = oVar;
        }

        void a(long j4, T t9) {
            if (j4 == this.f73973e) {
                this.f73969a.onNext(t9);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73971c.dispose();
            DisposableHelper.dispose(this.f73972d);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73971c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f73974f) {
                return;
            }
            this.f73974f = true;
            io.reactivex.disposables.c cVar = this.f73972d.get();
            if (cVar != DisposableHelper.DISPOSED) {
                C0589a c0589a = (C0589a) cVar;
                if (c0589a != null) {
                    c0589a.b();
                }
                DisposableHelper.dispose(this.f73972d);
                this.f73969a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f73972d);
            this.f73969a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f73974f) {
                return;
            }
            long j4 = this.f73973e + 1;
            this.f73973e = j4;
            io.reactivex.disposables.c cVar = this.f73972d.get();
            if (cVar != null) {
                cVar.dispose();
            }
            try {
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f73970b.apply(t9), "The ObservableSource supplied is null");
                C0589a c0589a = new C0589a(this, j4, t9);
                if (this.f73972d.compareAndSet(cVar, c0589a)) {
                    e0Var.subscribe(c0589a);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                this.f73969a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73971c, cVar)) {
                this.f73971c = cVar;
                this.f73969a.onSubscribe(this);
            }
        }
    }

    public d0(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.e0<U>> oVar) {
        super(e0Var);
        this.f73968b = oVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(new io.reactivex.observers.l(g0Var), this.f73968b));
    }
}
