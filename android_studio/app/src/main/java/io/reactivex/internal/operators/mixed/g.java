package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSwitchMapMaybe.java */
/* loaded from: classes3.dex */
public final class g<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f73630b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends w<? extends R>> f73631c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f73632d;

    /* compiled from: FlowableSwitchMapMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: k  reason: collision with root package name */
        private static final long f73633k = -5402190102429853762L;

        /* renamed from: l  reason: collision with root package name */
        static final C0577a<Object> f73634l = new C0577a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73635a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends w<? extends R>> f73636b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73637c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73638d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f73639e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<C0577a<R>> f73640f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f73641g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73642h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73643i;

        /* renamed from: j  reason: collision with root package name */
        long f73644j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableSwitchMapMaybe.java */
        /* renamed from: io.reactivex.internal.operators.mixed.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0577a<R> extends AtomicReference<io.reactivex.disposables.c> implements t<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f73645c = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f73646a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f73647b;

            C0577a(a<?, R> aVar) {
                this.f73646a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f73646a.c(this);
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f73646a.d(this, th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r9) {
                this.f73647b = r9;
                this.f73646a.b();
            }
        }

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9) {
            this.f73635a = dVar;
            this.f73636b = oVar;
            this.f73637c = z9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0577a<Object> c0577a = f73634l;
            C0577a<Object> c0577a2 = (C0577a) this.f73640f.getAndSet(c0577a);
            if (c0577a2 == null || c0577a2 == c0577a) {
                return;
            }
            c0577a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f73635a;
            AtomicThrowable atomicThrowable = this.f73638d;
            AtomicReference<C0577a<R>> atomicReference = this.f73640f;
            AtomicLong atomicLong = this.f73639e;
            long j4 = this.f73644j;
            int i4 = 1;
            while (!this.f73643i) {
                if (atomicThrowable.get() != null && !this.f73637c) {
                    dVar.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z9 = this.f73642h;
                C0577a<R> c0577a = atomicReference.get();
                boolean z10 = c0577a == null;
                if (z9 && z10) {
                    Throwable terminate = atomicThrowable.terminate();
                    if (terminate != null) {
                        dVar.onError(terminate);
                        return;
                    } else {
                        dVar.onComplete();
                        return;
                    }
                } else if (!z10 && c0577a.f73647b != null && j4 != atomicLong.get()) {
                    atomicReference.compareAndSet(c0577a, null);
                    dVar.onNext((R) c0577a.f73647b);
                    j4++;
                } else {
                    this.f73644j = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0577a<R> c0577a) {
            if (this.f73640f.compareAndSet(c0577a, null)) {
                b();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73643i = true;
            this.f73641g.cancel();
            a();
        }

        void d(C0577a<R> c0577a, Throwable th) {
            if (this.f73640f.compareAndSet(c0577a, null) && this.f73638d.addThrowable(th)) {
                if (!this.f73637c) {
                    this.f73641g.cancel();
                    a();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73642h = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73638d.addThrowable(th)) {
                if (!this.f73637c) {
                    a();
                }
                this.f73642h = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            C0577a<R> c0577a;
            C0577a<R> c0577a2 = this.f73640f.get();
            if (c0577a2 != null) {
                c0577a2.a();
            }
            try {
                w wVar = (w) io.reactivex.internal.functions.b.g(this.f73636b.apply(t9), "The mapper returned a null MaybeSource");
                C0577a<R> c0577a3 = new C0577a<>(this);
                do {
                    c0577a = this.f73640f.get();
                    if (c0577a == f73634l) {
                        return;
                    }
                } while (!this.f73640f.compareAndSet(c0577a, c0577a3));
                wVar.b(c0577a3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73641g.cancel();
                this.f73640f.getAndSet(f73634l);
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73641g, eVar)) {
                this.f73641g = eVar;
                this.f73635a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f73639e, j4);
            b();
        }
    }

    public g(io.reactivex.j<T> jVar, n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9) {
        this.f73630b = jVar;
        this.f73631c = oVar;
        this.f73632d = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f73630b.j6(new a(dVar, this.f73631c, this.f73632d));
    }
}
