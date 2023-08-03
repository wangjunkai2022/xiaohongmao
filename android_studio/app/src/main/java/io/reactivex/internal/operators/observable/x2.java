package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSampleWithObservable.java */
/* loaded from: classes3.dex */
public final class x2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<?> f74999b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f75000c;

    /* compiled from: ObservableSampleWithObservable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends c<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f75001h = -3029755663834015785L;

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f75002f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f75003g;

        a(io.reactivex.g0<? super T> g0Var, io.reactivex.e0<?> e0Var) {
            super(g0Var, e0Var);
            this.f75002f = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.observable.x2.c
        void b() {
            this.f75003g = true;
            if (this.f75002f.getAndIncrement() == 0) {
                c();
                this.f75006a.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.observable.x2.c
        void e() {
            if (this.f75002f.getAndIncrement() == 0) {
                do {
                    boolean z9 = this.f75003g;
                    c();
                    if (z9) {
                        this.f75006a.onComplete();
                        return;
                    }
                } while (this.f75002f.decrementAndGet() != 0);
            }
        }
    }

    /* compiled from: ObservableSampleWithObservable.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends c<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f75004f = -3029755663834015785L;

        b(io.reactivex.g0<? super T> g0Var, io.reactivex.e0<?> e0Var) {
            super(g0Var, e0Var);
        }

        @Override // io.reactivex.internal.operators.observable.x2.c
        void b() {
            this.f75006a.onComplete();
        }

        @Override // io.reactivex.internal.operators.observable.x2.c
        void e() {
            c();
        }
    }

    /* compiled from: ObservableSampleWithObservable.java */
    /* loaded from: classes3.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f75005e = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75006a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e0<?> f75007b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75008c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f75009d;

        c(io.reactivex.g0<? super T> g0Var, io.reactivex.e0<?> e0Var) {
            this.f75006a = g0Var;
            this.f75007b = e0Var;
        }

        public void a() {
            this.f75009d.dispose();
            b();
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f75006a.onNext(andSet);
            }
        }

        public void d(Throwable th) {
            this.f75009d.dispose();
            this.f75006a.onError(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f75008c);
            this.f75009d.dispose();
        }

        abstract void e();

        boolean h(io.reactivex.disposables.c cVar) {
            return DisposableHelper.setOnce(this.f75008c, cVar);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75008c.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this.f75008c);
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f75008c);
            this.f75006a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            lazySet(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75009d, cVar)) {
                this.f75009d = cVar;
                this.f75006a.onSubscribe(this);
                if (this.f75008c.get() == null) {
                    this.f75007b.subscribe(new d(this));
                }
            }
        }
    }

    /* compiled from: ObservableSampleWithObservable.java */
    /* loaded from: classes3.dex */
    static final class d<T> implements io.reactivex.g0<Object> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f75010a;

        d(c<T> cVar) {
            this.f75010a = cVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f75010a.a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f75010a.d(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            this.f75010a.e();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75010a.h(cVar);
        }
    }

    public x2(io.reactivex.e0<T> e0Var, io.reactivex.e0<?> e0Var2, boolean z9) {
        super(e0Var);
        this.f74999b = e0Var2;
        this.f75000c = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        if (this.f75000c) {
            this.f73827a.subscribe(new a(lVar, this.f74999b));
        } else {
            this.f73827a.subscribe(new b(lVar, this.f74999b));
        }
    }
}
