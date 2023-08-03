package io.reactivex.internal.operators.mixed;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatMapSingle.java */
/* loaded from: classes3.dex */
public final class e<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f73592b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends o0<? extends R>> f73593c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f73594d;

    /* renamed from: e  reason: collision with root package name */
    final int f73595e;

    /* compiled from: FlowableConcatMapSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: p  reason: collision with root package name */
        private static final long f73596p = -9140123220065488293L;

        /* renamed from: q  reason: collision with root package name */
        static final int f73597q = 0;

        /* renamed from: r  reason: collision with root package name */
        static final int f73598r = 1;

        /* renamed from: s  reason: collision with root package name */
        static final int f73599s = 2;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73600a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends o0<? extends R>> f73601b;

        /* renamed from: c  reason: collision with root package name */
        final int f73602c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73603d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f73604e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final C0575a<R> f73605f = new C0575a<>(this);

        /* renamed from: g  reason: collision with root package name */
        final o7.n<T> f73606g;

        /* renamed from: h  reason: collision with root package name */
        final ErrorMode f73607h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f73608i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f73609j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f73610k;

        /* renamed from: l  reason: collision with root package name */
        long f73611l;

        /* renamed from: m  reason: collision with root package name */
        int f73612m;

        /* renamed from: n  reason: collision with root package name */
        R f73613n;

        /* renamed from: o  reason: collision with root package name */
        volatile int f73614o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableConcatMapSingle.java */
        /* renamed from: io.reactivex.internal.operators.mixed.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0575a<R> extends AtomicReference<io.reactivex.disposables.c> implements l0<R> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73615b = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f73616a;

            C0575a(a<?, R> aVar) {
                this.f73616a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f73616a.b(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r9) {
                this.f73616a.c(r9);
            }
        }

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends o0<? extends R>> oVar, int i4, ErrorMode errorMode) {
            this.f73600a = dVar;
            this.f73601b = oVar;
            this.f73602c = i4;
            this.f73607h = errorMode;
            this.f73606g = new SpscArrayQueue(i4);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f73600a;
            ErrorMode errorMode = this.f73607h;
            o7.n<T> nVar = this.f73606g;
            AtomicThrowable atomicThrowable = this.f73604e;
            AtomicLong atomicLong = this.f73603d;
            int i4 = this.f73602c;
            int i10 = i4 - (i4 >> 1);
            int i11 = 1;
            while (true) {
                if (this.f73610k) {
                    nVar.clear();
                    this.f73613n = null;
                } else {
                    int i12 = this.f73614o;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i12 != 0))) {
                        if (i12 == 0) {
                            boolean z9 = this.f73609j;
                            T poll = nVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                Throwable terminate = atomicThrowable.terminate();
                                if (terminate == null) {
                                    dVar.onComplete();
                                    return;
                                } else {
                                    dVar.onError(terminate);
                                    return;
                                }
                            } else if (!z10) {
                                int i13 = this.f73612m + 1;
                                if (i13 == i10) {
                                    this.f73612m = 0;
                                    this.f73608i.request(i10);
                                } else {
                                    this.f73612m = i13;
                                }
                                try {
                                    o0 o0Var = (o0) io.reactivex.internal.functions.b.g(this.f73601b.apply(poll), "The mapper returned a null SingleSource");
                                    this.f73614o = 1;
                                    o0Var.d(this.f73605f);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    this.f73608i.cancel();
                                    nVar.clear();
                                    atomicThrowable.addThrowable(th);
                                    dVar.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } else if (i12 == 2) {
                            long j4 = this.f73611l;
                            if (j4 != atomicLong.get()) {
                                this.f73613n = null;
                                dVar.onNext((R) this.f73613n);
                                this.f73611l = j4 + 1;
                                this.f73614o = 0;
                            }
                        }
                    }
                }
                i11 = addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f73613n = null;
            dVar.onError(atomicThrowable.terminate());
        }

        void b(Throwable th) {
            if (this.f73604e.addThrowable(th)) {
                if (this.f73607h != ErrorMode.END) {
                    this.f73608i.cancel();
                }
                this.f73614o = 0;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void c(R r9) {
            this.f73613n = r9;
            this.f73614o = 2;
            a();
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73610k = true;
            this.f73608i.cancel();
            this.f73605f.a();
            if (getAndIncrement() == 0) {
                this.f73606g.clear();
                this.f73613n = null;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73609j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73604e.addThrowable(th)) {
                if (this.f73607h == ErrorMode.IMMEDIATE) {
                    this.f73605f.a();
                }
                this.f73609j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (!this.f73606g.offer(t9)) {
                this.f73608i.cancel();
                onError(new MissingBackpressureException("queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73608i, eVar)) {
                this.f73608i = eVar;
                this.f73600a.onSubscribe(this);
                eVar.request(this.f73602c);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f73603d, j4);
            a();
        }
    }

    public e(io.reactivex.j<T> jVar, n7.o<? super T, ? extends o0<? extends R>> oVar, ErrorMode errorMode, int i4) {
        this.f73592b = jVar;
        this.f73593c = oVar;
        this.f73594d = errorMode;
        this.f73595e = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f73592b.j6(new a(dVar, this.f73593c, this.f73595e, this.f73594d));
    }
}
