package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableWindowBoundarySupplier.java */
/* loaded from: classes3.dex */
public final class v4<T, B> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends org.reactivestreams.c<B>> f72880c;

    /* renamed from: d  reason: collision with root package name */
    final int f72881d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundarySupplier.java */
    /* loaded from: classes3.dex */
    public static final class a<T, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, B> f72882b;

        /* renamed from: c  reason: collision with root package name */
        boolean f72883c;

        a(b<T, B> bVar) {
            this.f72882b = bVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72883c) {
                return;
            }
            this.f72883c = true;
            this.f72882b.c();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72883c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72883c = true;
            this.f72882b.d(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(B b10) {
            if (this.f72883c) {
                return;
            }
            this.f72883c = true;
            dispose();
            this.f72882b.e(this);
        }
    }

    /* compiled from: FlowableWindowBoundarySupplier.java */
    /* loaded from: classes3.dex */
    static final class b<T, B> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: n  reason: collision with root package name */
        private static final long f72884n = 2233020065421370272L;

        /* renamed from: o  reason: collision with root package name */
        static final a<Object, Object> f72885o = new a<>(null);

        /* renamed from: p  reason: collision with root package name */
        static final Object f72886p = new Object();

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.j<T>> f72887a;

        /* renamed from: b  reason: collision with root package name */
        final int f72888b;

        /* renamed from: h  reason: collision with root package name */
        final Callable<? extends org.reactivestreams.c<B>> f72894h;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f72896j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f72897k;

        /* renamed from: l  reason: collision with root package name */
        io.reactivex.processors.h<T> f72898l;

        /* renamed from: m  reason: collision with root package name */
        long f72899m;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<a<T, B>> f72889c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f72890d = new AtomicInteger(1);

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f72891e = new io.reactivex.internal.queue.a<>();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f72892f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f72893g = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f72895i = new AtomicLong();

        b(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, int i4, Callable<? extends org.reactivestreams.c<B>> callable) {
            this.f72887a = dVar;
            this.f72888b = i4;
            this.f72894h = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a<Object, Object> aVar = f72885o;
            io.reactivex.disposables.c cVar = (io.reactivex.disposables.c) this.f72889c.getAndSet(aVar);
            if (cVar == null || cVar == aVar) {
                return;
            }
            cVar.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super io.reactivex.j<T>> dVar = this.f72887a;
            io.reactivex.internal.queue.a<Object> aVar = this.f72891e;
            AtomicThrowable atomicThrowable = this.f72892f;
            long j4 = this.f72899m;
            int i4 = 1;
            while (this.f72890d.get() != 0) {
                io.reactivex.processors.h<T> hVar = this.f72898l;
                boolean z9 = this.f72897k;
                if (z9 && atomicThrowable.get() != null) {
                    aVar.clear();
                    Throwable terminate = atomicThrowable.terminate();
                    if (hVar != 0) {
                        this.f72898l = null;
                        hVar.onError(terminate);
                    }
                    dVar.onError(terminate);
                    return;
                }
                Object poll = aVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    Throwable terminate2 = atomicThrowable.terminate();
                    if (terminate2 == null) {
                        if (hVar != 0) {
                            this.f72898l = null;
                            hVar.onComplete();
                        }
                        dVar.onComplete();
                        return;
                    }
                    if (hVar != 0) {
                        this.f72898l = null;
                        hVar.onError(terminate2);
                    }
                    dVar.onError(terminate2);
                    return;
                } else if (z10) {
                    this.f72899m = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (poll != f72886p) {
                    hVar.onNext(poll);
                } else {
                    if (hVar != 0) {
                        this.f72898l = null;
                        hVar.onComplete();
                    }
                    if (!this.f72893g.get()) {
                        if (j4 != this.f72895i.get()) {
                            io.reactivex.processors.h<T> U8 = io.reactivex.processors.h.U8(this.f72888b, this);
                            this.f72898l = U8;
                            this.f72890d.getAndIncrement();
                            try {
                                org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72894h.call(), "The other Callable returned a null Publisher");
                                a<T, B> aVar2 = new a<>(this);
                                if (this.f72889c.compareAndSet(null, aVar2)) {
                                    cVar.i(aVar2);
                                    j4++;
                                    dVar.onNext(U8);
                                }
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                atomicThrowable.addThrowable(th);
                                this.f72897k = true;
                            }
                        } else {
                            this.f72896j.cancel();
                            a();
                            atomicThrowable.addThrowable(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                            this.f72897k = true;
                        }
                    }
                }
            }
            aVar.clear();
            this.f72898l = null;
        }

        void c() {
            this.f72896j.cancel();
            this.f72897k = true;
            b();
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72893g.compareAndSet(false, true)) {
                a();
                if (this.f72890d.decrementAndGet() == 0) {
                    this.f72896j.cancel();
                }
            }
        }

        void d(Throwable th) {
            this.f72896j.cancel();
            if (this.f72892f.addThrowable(th)) {
                this.f72897k = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void e(a<T, B> aVar) {
            this.f72889c.compareAndSet(aVar, null);
            this.f72891e.offer(f72886p);
            b();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            a();
            this.f72897k = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            a();
            if (this.f72892f.addThrowable(th)) {
                this.f72897k = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72891e.offer(t9);
            b();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72896j, eVar)) {
                this.f72896j = eVar;
                this.f72887a.onSubscribe(this);
                this.f72891e.offer(f72886p);
                b();
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f72895i, j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f72890d.decrementAndGet() == 0) {
                this.f72896j.cancel();
            }
        }
    }

    public v4(io.reactivex.j<T> jVar, Callable<? extends org.reactivestreams.c<B>> callable, int i4) {
        super(jVar);
        this.f72880c = callable;
        this.f72881d = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super io.reactivex.j<T>> dVar) {
        this.f71538b.j6(new b(dVar, this.f72881d, this.f72880c));
    }
}
