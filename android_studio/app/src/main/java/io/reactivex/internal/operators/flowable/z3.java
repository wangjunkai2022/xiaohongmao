package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSwitchMap.java */
/* loaded from: classes3.dex */
public final class z3<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f73122c;

    /* renamed from: d  reason: collision with root package name */
    final int f73123d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f73124e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableSwitchMap.java */
    /* loaded from: classes3.dex */
    public static final class a<T, R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<R> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f73125g = 3837284832786408377L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f73126a;

        /* renamed from: b  reason: collision with root package name */
        final long f73127b;

        /* renamed from: c  reason: collision with root package name */
        final int f73128c;

        /* renamed from: d  reason: collision with root package name */
        volatile o7.o<R> f73129d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f73130e;

        /* renamed from: f  reason: collision with root package name */
        int f73131f;

        a(b<T, R> bVar, long j4, int i4) {
            this.f73126a = bVar;
            this.f73127b = j4;
            this.f73128c = i4;
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        public void b(long j4) {
            if (this.f73131f != 1) {
                get().request(j4);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            b<T, R> bVar = this.f73126a;
            if (this.f73127b == bVar.f73144k) {
                this.f73130e = true;
                bVar.b();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            b<T, R> bVar = this.f73126a;
            if (this.f73127b == bVar.f73144k && bVar.f73139f.addThrowable(th)) {
                if (!bVar.f73137d) {
                    bVar.f73141h.cancel();
                    bVar.f73138e = true;
                }
                this.f73130e = true;
                bVar.b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(R r9) {
            b<T, R> bVar = this.f73126a;
            if (this.f73127b == bVar.f73144k) {
                if (this.f73131f == 0 && !this.f73129d.offer(r9)) {
                    onError(new MissingBackpressureException("Queue full?!"));
                } else {
                    bVar.b();
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this, eVar)) {
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f73131f = requestFusion;
                        this.f73129d = lVar;
                        this.f73130e = true;
                        this.f73126a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f73131f = requestFusion;
                        this.f73129d = lVar;
                        eVar.request(this.f73128c);
                        return;
                    }
                }
                this.f73129d = new SpscArrayQueue(this.f73128c);
                eVar.request(this.f73128c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableSwitchMap.java */
    /* loaded from: classes3.dex */
    public static final class b<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f73132l = -3491074160481096299L;

        /* renamed from: m  reason: collision with root package name */
        static final a<Object, Object> f73133m;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73134a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f73135b;

        /* renamed from: c  reason: collision with root package name */
        final int f73136c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f73137d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f73138e;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73140g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f73141h;

        /* renamed from: k  reason: collision with root package name */
        volatile long f73144k;

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<a<T, R>> f73142i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicLong f73143j = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f73139f = new AtomicThrowable();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            f73133m = aVar;
            aVar.a();
        }

        b(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, boolean z9) {
            this.f73134a = dVar;
            this.f73135b = oVar;
            this.f73136c = i4;
            this.f73137d = z9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a<Object, Object> aVar;
            a<T, R> aVar2 = this.f73142i.get();
            a<Object, Object> aVar3 = f73133m;
            if (aVar2 == aVar3 || (aVar = (a) this.f73142i.getAndSet(aVar3)) == aVar3 || aVar == null) {
                return;
            }
            aVar.a();
        }

        void b() {
            boolean z9;
            R r9;
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f73134a;
            int i4 = 1;
            while (!this.f73140g) {
                if (this.f73138e) {
                    if (this.f73137d) {
                        if (this.f73142i.get() == null) {
                            if (this.f73139f.get() != null) {
                                dVar.onError(this.f73139f.terminate());
                                return;
                            } else {
                                dVar.onComplete();
                                return;
                            }
                        }
                    } else if (this.f73139f.get() != null) {
                        a();
                        dVar.onError(this.f73139f.terminate());
                        return;
                    } else if (this.f73142i.get() == null) {
                        dVar.onComplete();
                        return;
                    }
                }
                a<T, R> aVar = this.f73142i.get();
                o7.o<R> oVar = aVar != null ? aVar.f73129d : null;
                if (oVar != null) {
                    if (aVar.f73130e) {
                        if (!this.f73137d) {
                            if (this.f73139f.get() != null) {
                                a();
                                dVar.onError(this.f73139f.terminate());
                                return;
                            } else if (oVar.isEmpty()) {
                                this.f73142i.compareAndSet(aVar, null);
                            }
                        } else if (oVar.isEmpty()) {
                            this.f73142i.compareAndSet(aVar, null);
                        }
                    }
                    long j4 = this.f73143j.get();
                    long j10 = 0;
                    while (true) {
                        z9 = false;
                        if (j10 != j4) {
                            if (!this.f73140g) {
                                boolean z10 = aVar.f73130e;
                                try {
                                    r9 = oVar.poll();
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    aVar.a();
                                    this.f73139f.addThrowable(th);
                                    r9 = (Object) null;
                                    z10 = true;
                                }
                                boolean z11 = r9 == null;
                                if (aVar != this.f73142i.get()) {
                                    break;
                                }
                                if (z10) {
                                    if (!this.f73137d) {
                                        if (this.f73139f.get() == null) {
                                            if (z11) {
                                                this.f73142i.compareAndSet(aVar, null);
                                                break;
                                            }
                                        } else {
                                            dVar.onError(this.f73139f.terminate());
                                            return;
                                        }
                                    } else if (z11) {
                                        this.f73142i.compareAndSet(aVar, null);
                                        break;
                                    }
                                }
                                if (z11) {
                                    break;
                                }
                                dVar.onNext(r9);
                                j10++;
                            } else {
                                return;
                            }
                        } else {
                            break;
                        }
                    }
                    z9 = true;
                    if (j10 != 0 && !this.f73140g) {
                        if (j4 != Long.MAX_VALUE) {
                            this.f73143j.addAndGet(-j10);
                        }
                        aVar.b(j10);
                    }
                    if (z9) {
                        continue;
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f73140g) {
                return;
            }
            this.f73140g = true;
            this.f73141h.cancel();
            a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f73138e) {
                return;
            }
            this.f73138e = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (!this.f73138e && this.f73139f.addThrowable(th)) {
                if (!this.f73137d) {
                    a();
                }
                this.f73138e = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            a<T, R> aVar;
            if (this.f73138e) {
                return;
            }
            long j4 = this.f73144k + 1;
            this.f73144k = j4;
            a<T, R> aVar2 = this.f73142i.get();
            if (aVar2 != null) {
                aVar2.a();
            }
            try {
                org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f73135b.apply(t9), "The publisher returned is null");
                a<T, R> aVar3 = new a<>(this, j4, this.f73136c);
                do {
                    aVar = this.f73142i.get();
                    if (aVar == f73133m) {
                        return;
                    }
                } while (!this.f73142i.compareAndSet(aVar, aVar3));
                cVar.i(aVar3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73141h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73141h, eVar)) {
                this.f73141h = eVar;
                this.f73134a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f73143j, j4);
                if (this.f73144k == 0) {
                    this.f73141h.request(Long.MAX_VALUE);
                } else {
                    b();
                }
            }
        }
    }

    public z3(io.reactivex.j<T> jVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, boolean z9) {
        super(jVar);
        this.f73122c = oVar;
        this.f73123d = i4;
        this.f73124e = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        if (j3.b(this.f71538b, dVar, this.f73122c)) {
            return;
        }
        this.f71538b.j6(new b(dVar, this.f73122c, this.f73123d, this.f73124e));
    }
}
