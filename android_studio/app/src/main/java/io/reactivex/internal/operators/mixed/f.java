package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSwitchMapCompletable.java */
/* loaded from: classes3.dex */
public final class f<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f73617a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f73618b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f73619c;

    /* compiled from: FlowableSwitchMapCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: h  reason: collision with root package name */
        static final C0576a f73620h = new C0576a(null);

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f73621a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f73622b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73623c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73624d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0576a> f73625e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f73626f;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f73627g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableSwitchMapCompletable.java */
        /* renamed from: io.reactivex.internal.operators.mixed.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0576a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73628b = -8003404460084760287L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f73629a;

            C0576a(a<?> aVar) {
                this.f73629a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f73629a.b(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f73629a.c(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.d dVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9) {
            this.f73621a = dVar;
            this.f73622b = oVar;
            this.f73623c = z9;
        }

        void a() {
            AtomicReference<C0576a> atomicReference = this.f73625e;
            C0576a c0576a = f73620h;
            C0576a andSet = atomicReference.getAndSet(c0576a);
            if (andSet == null || andSet == c0576a) {
                return;
            }
            andSet.a();
        }

        void b(C0576a c0576a) {
            if (this.f73625e.compareAndSet(c0576a, null) && this.f73626f) {
                Throwable terminate = this.f73624d.terminate();
                if (terminate == null) {
                    this.f73621a.onComplete();
                } else {
                    this.f73621a.onError(terminate);
                }
            }
        }

        void c(C0576a c0576a, Throwable th) {
            if (this.f73625e.compareAndSet(c0576a, null) && this.f73624d.addThrowable(th)) {
                if (this.f73623c) {
                    if (this.f73626f) {
                        this.f73621a.onError(this.f73624d.terminate());
                        return;
                    }
                    return;
                }
                dispose();
                Throwable terminate = this.f73624d.terminate();
                if (terminate != io.reactivex.internal.util.g.f75916a) {
                    this.f73621a.onError(terminate);
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73627g.cancel();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73625e.get() == f73620h;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73626f = true;
            if (this.f73625e.get() == null) {
                Throwable terminate = this.f73624d.terminate();
                if (terminate == null) {
                    this.f73621a.onComplete();
                } else {
                    this.f73621a.onError(terminate);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73624d.addThrowable(th)) {
                if (this.f73623c) {
                    onComplete();
                    return;
                }
                a();
                Throwable terminate = this.f73624d.terminate();
                if (terminate != io.reactivex.internal.util.g.f75916a) {
                    this.f73621a.onError(terminate);
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            C0576a c0576a;
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f73622b.apply(t9), "The mapper returned a null CompletableSource");
                C0576a c0576a2 = new C0576a(this);
                do {
                    c0576a = this.f73625e.get();
                    if (c0576a == f73620h) {
                        return;
                    }
                } while (!this.f73625e.compareAndSet(c0576a, c0576a2));
                if (c0576a != null) {
                    c0576a.a();
                }
                gVar.d(c0576a2);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73627g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73627g, eVar)) {
                this.f73627g = eVar;
                this.f73621a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public f(io.reactivex.j<T> jVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9) {
        this.f73617a = jVar;
        this.f73618b = oVar;
        this.f73619c = z9;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f73617a.j6(new a(dVar, this.f73618b, this.f73619c));
    }
}
