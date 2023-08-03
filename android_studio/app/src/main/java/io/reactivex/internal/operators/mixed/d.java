package io.reactivex.internal.operators.mixed;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatMapMaybe.java */
/* loaded from: classes3.dex */
public final class d<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f73567b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends w<? extends R>> f73568c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f73569d;

    /* renamed from: e  reason: collision with root package name */
    final int f73570e;

    /* compiled from: FlowableConcatMapMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: p  reason: collision with root package name */
        private static final long f73571p = -9140123220065488293L;

        /* renamed from: q  reason: collision with root package name */
        static final int f73572q = 0;

        /* renamed from: r  reason: collision with root package name */
        static final int f73573r = 1;

        /* renamed from: s  reason: collision with root package name */
        static final int f73574s = 2;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73575a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends w<? extends R>> f73576b;

        /* renamed from: c  reason: collision with root package name */
        final int f73577c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73578d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f73579e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final C0574a<R> f73580f = new C0574a<>(this);

        /* renamed from: g  reason: collision with root package name */
        final o7.n<T> f73581g;

        /* renamed from: h  reason: collision with root package name */
        final ErrorMode f73582h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f73583i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f73584j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f73585k;

        /* renamed from: l  reason: collision with root package name */
        long f73586l;

        /* renamed from: m  reason: collision with root package name */
        int f73587m;

        /* renamed from: n  reason: collision with root package name */
        R f73588n;

        /* renamed from: o  reason: collision with root package name */
        volatile int f73589o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableConcatMapMaybe.java */
        /* renamed from: io.reactivex.internal.operators.mixed.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0574a<R> extends AtomicReference<io.reactivex.disposables.c> implements t<R> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73590b = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f73591a;

            C0574a(a<?, R> aVar) {
                this.f73591a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f73591a.b();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f73591a.c(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r9) {
                this.f73591a.d(r9);
            }
        }

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends w<? extends R>> oVar, int i4, ErrorMode errorMode) {
            this.f73575a = dVar;
            this.f73576b = oVar;
            this.f73577c = i4;
            this.f73582h = errorMode;
            this.f73581g = new SpscArrayQueue(i4);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f73575a;
            ErrorMode errorMode = this.f73582h;
            o7.n<T> nVar = this.f73581g;
            AtomicThrowable atomicThrowable = this.f73579e;
            AtomicLong atomicLong = this.f73578d;
            int i4 = this.f73577c;
            int i10 = i4 - (i4 >> 1);
            int i11 = 1;
            while (true) {
                if (this.f73585k) {
                    nVar.clear();
                    this.f73588n = null;
                } else {
                    int i12 = this.f73589o;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i12 != 0))) {
                        if (i12 == 0) {
                            boolean z9 = this.f73584j;
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
                                int i13 = this.f73587m + 1;
                                if (i13 == i10) {
                                    this.f73587m = 0;
                                    this.f73583i.request(i10);
                                } else {
                                    this.f73587m = i13;
                                }
                                try {
                                    w wVar = (w) io.reactivex.internal.functions.b.g(this.f73576b.apply(poll), "The mapper returned a null MaybeSource");
                                    this.f73589o = 1;
                                    wVar.b(this.f73580f);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    this.f73583i.cancel();
                                    nVar.clear();
                                    atomicThrowable.addThrowable(th);
                                    dVar.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } else if (i12 == 2) {
                            long j4 = this.f73586l;
                            if (j4 != atomicLong.get()) {
                                this.f73588n = null;
                                dVar.onNext((R) this.f73588n);
                                this.f73586l = j4 + 1;
                                this.f73589o = 0;
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
            this.f73588n = null;
            dVar.onError(atomicThrowable.terminate());
        }

        void b() {
            this.f73589o = 0;
            a();
        }

        void c(Throwable th) {
            if (this.f73579e.addThrowable(th)) {
                if (this.f73582h != ErrorMode.END) {
                    this.f73583i.cancel();
                }
                this.f73589o = 0;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73585k = true;
            this.f73583i.cancel();
            this.f73580f.a();
            if (getAndIncrement() == 0) {
                this.f73581g.clear();
                this.f73588n = null;
            }
        }

        void d(R r9) {
            this.f73588n = r9;
            this.f73589o = 2;
            a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73584j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73579e.addThrowable(th)) {
                if (this.f73582h == ErrorMode.IMMEDIATE) {
                    this.f73580f.a();
                }
                this.f73584j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (!this.f73581g.offer(t9)) {
                this.f73583i.cancel();
                onError(new MissingBackpressureException("queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73583i, eVar)) {
                this.f73583i = eVar;
                this.f73575a.onSubscribe(this);
                eVar.request(this.f73577c);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f73578d, j4);
            a();
        }
    }

    public d(io.reactivex.j<T> jVar, n7.o<? super T, ? extends w<? extends R>> oVar, ErrorMode errorMode, int i4) {
        this.f73567b = jVar;
        this.f73568c = oVar;
        this.f73569d = errorMode;
        this.f73570e = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f73567b.j6(new a(dVar, this.f73568c, this.f73570e, this.f73569d));
    }
}
