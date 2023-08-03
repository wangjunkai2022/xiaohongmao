package io.reactivex.internal.operators.mixed;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSwitchMapCompletable.java */
/* loaded from: classes3.dex */
public final class o<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f73740a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f73741b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f73742c;

    /* compiled from: ObservableSwitchMapCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements g0<T>, io.reactivex.disposables.c {

        /* renamed from: h  reason: collision with root package name */
        static final C0582a f73743h = new C0582a(null);

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f73744a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f73745b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73746c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73747d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0582a> f73748e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f73749f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.c f73750g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableSwitchMapCompletable.java */
        /* renamed from: io.reactivex.internal.operators.mixed.o$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0582a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73751b = -8003404460084760287L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f73752a;

            C0582a(a<?> aVar) {
                this.f73752a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f73752a.b(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f73752a.c(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.d dVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9) {
            this.f73744a = dVar;
            this.f73745b = oVar;
            this.f73746c = z9;
        }

        void a() {
            AtomicReference<C0582a> atomicReference = this.f73748e;
            C0582a c0582a = f73743h;
            C0582a andSet = atomicReference.getAndSet(c0582a);
            if (andSet == null || andSet == c0582a) {
                return;
            }
            andSet.a();
        }

        void b(C0582a c0582a) {
            if (this.f73748e.compareAndSet(c0582a, null) && this.f73749f) {
                Throwable terminate = this.f73747d.terminate();
                if (terminate == null) {
                    this.f73744a.onComplete();
                } else {
                    this.f73744a.onError(terminate);
                }
            }
        }

        void c(C0582a c0582a, Throwable th) {
            if (this.f73748e.compareAndSet(c0582a, null) && this.f73747d.addThrowable(th)) {
                if (this.f73746c) {
                    if (this.f73749f) {
                        this.f73744a.onError(this.f73747d.terminate());
                        return;
                    }
                    return;
                }
                dispose();
                Throwable terminate = this.f73747d.terminate();
                if (terminate != io.reactivex.internal.util.g.f75916a) {
                    this.f73744a.onError(terminate);
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73750g.dispose();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73748e.get() == f73743h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73749f = true;
            if (this.f73748e.get() == null) {
                Throwable terminate = this.f73747d.terminate();
                if (terminate == null) {
                    this.f73744a.onComplete();
                } else {
                    this.f73744a.onError(terminate);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73747d.addThrowable(th)) {
                if (this.f73746c) {
                    onComplete();
                    return;
                }
                a();
                Throwable terminate = this.f73747d.terminate();
                if (terminate != io.reactivex.internal.util.g.f75916a) {
                    this.f73744a.onError(terminate);
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            C0582a c0582a;
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f73745b.apply(t9), "The mapper returned a null CompletableSource");
                C0582a c0582a2 = new C0582a(this);
                do {
                    c0582a = this.f73748e.get();
                    if (c0582a == f73743h) {
                        return;
                    }
                } while (!this.f73748e.compareAndSet(c0582a, c0582a2));
                if (c0582a != null) {
                    c0582a.a();
                }
                gVar.d(c0582a2);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73750g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73750g, cVar)) {
                this.f73750g = cVar;
                this.f73744a.onSubscribe(this);
            }
        }
    }

    public o(z<T> zVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9) {
        this.f73740a = zVar;
        this.f73741b = oVar;
        this.f73742c = z9;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        if (r.a(this.f73740a, this.f73741b, dVar)) {
            return;
        }
        this.f73740a.subscribe(new a(dVar, this.f73741b, this.f73742c));
    }
}
