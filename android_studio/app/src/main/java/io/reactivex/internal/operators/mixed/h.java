package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSwitchMapSingle.java */
/* loaded from: classes3.dex */
public final class h<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f73648b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends o0<? extends R>> f73649c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f73650d;

    /* compiled from: FlowableSwitchMapSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: k  reason: collision with root package name */
        private static final long f73651k = -5402190102429853762L;

        /* renamed from: l  reason: collision with root package name */
        static final C0578a<Object> f73652l = new C0578a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73653a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends o0<? extends R>> f73654b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73655c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73656d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f73657e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<C0578a<R>> f73658f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f73659g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73660h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73661i;

        /* renamed from: j  reason: collision with root package name */
        long f73662j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableSwitchMapSingle.java */
        /* renamed from: io.reactivex.internal.operators.mixed.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0578a<R> extends AtomicReference<io.reactivex.disposables.c> implements l0<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f73663c = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f73664a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f73665b;

            C0578a(a<?, R> aVar) {
                this.f73664a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f73664a.c(this, th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r9) {
                this.f73665b = r9;
                this.f73664a.b();
            }
        }

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9) {
            this.f73653a = dVar;
            this.f73654b = oVar;
            this.f73655c = z9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0578a<Object> c0578a = f73652l;
            C0578a<Object> c0578a2 = (C0578a) this.f73658f.getAndSet(c0578a);
            if (c0578a2 == null || c0578a2 == c0578a) {
                return;
            }
            c0578a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f73653a;
            AtomicThrowable atomicThrowable = this.f73656d;
            AtomicReference<C0578a<R>> atomicReference = this.f73658f;
            AtomicLong atomicLong = this.f73657e;
            long j4 = this.f73662j;
            int i4 = 1;
            while (!this.f73661i) {
                if (atomicThrowable.get() != null && !this.f73655c) {
                    dVar.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z9 = this.f73660h;
                C0578a<R> c0578a = atomicReference.get();
                boolean z10 = c0578a == null;
                if (z9 && z10) {
                    Throwable terminate = atomicThrowable.terminate();
                    if (terminate != null) {
                        dVar.onError(terminate);
                        return;
                    } else {
                        dVar.onComplete();
                        return;
                    }
                } else if (!z10 && c0578a.f73665b != null && j4 != atomicLong.get()) {
                    atomicReference.compareAndSet(c0578a, null);
                    dVar.onNext((R) c0578a.f73665b);
                    j4++;
                } else {
                    this.f73662j = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0578a<R> c0578a, Throwable th) {
            if (this.f73658f.compareAndSet(c0578a, null) && this.f73656d.addThrowable(th)) {
                if (!this.f73655c) {
                    this.f73659g.cancel();
                    a();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73661i = true;
            this.f73659g.cancel();
            a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73660h = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73656d.addThrowable(th)) {
                if (!this.f73655c) {
                    a();
                }
                this.f73660h = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            C0578a<R> c0578a;
            C0578a<R> c0578a2 = this.f73658f.get();
            if (c0578a2 != null) {
                c0578a2.a();
            }
            try {
                o0 o0Var = (o0) io.reactivex.internal.functions.b.g(this.f73654b.apply(t9), "The mapper returned a null SingleSource");
                C0578a<R> c0578a3 = new C0578a<>(this);
                do {
                    c0578a = this.f73658f.get();
                    if (c0578a == f73652l) {
                        return;
                    }
                } while (!this.f73658f.compareAndSet(c0578a, c0578a3));
                o0Var.d(c0578a3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73659g.cancel();
                this.f73658f.getAndSet(f73652l);
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73659g, eVar)) {
                this.f73659g = eVar;
                this.f73653a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f73657e, j4);
            b();
        }
    }

    public h(io.reactivex.j<T> jVar, n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9) {
        this.f73648b = jVar;
        this.f73649c = oVar;
        this.f73650d = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f73648b.j6(new a(dVar, this.f73649c, this.f73650d));
    }
}
