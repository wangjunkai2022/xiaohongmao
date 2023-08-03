package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSequenceEqual.java */
/* loaded from: classes3.dex */
public final class m3<T> extends io.reactivex.j<Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f72271b;

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f72272c;

    /* renamed from: d  reason: collision with root package name */
    final n7.d<? super T, ? super T> f72273d;

    /* renamed from: e  reason: collision with root package name */
    final int f72274e;

    /* compiled from: FlowableSequenceEqual.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends DeferredScalarSubscription<Boolean> implements b {

        /* renamed from: t  reason: collision with root package name */
        private static final long f72275t = -6178010334400373240L;

        /* renamed from: m  reason: collision with root package name */
        final n7.d<? super T, ? super T> f72276m;

        /* renamed from: n  reason: collision with root package name */
        final c<T> f72277n;

        /* renamed from: o  reason: collision with root package name */
        final c<T> f72278o;

        /* renamed from: p  reason: collision with root package name */
        final AtomicThrowable f72279p;

        /* renamed from: q  reason: collision with root package name */
        final AtomicInteger f72280q;

        /* renamed from: r  reason: collision with root package name */
        T f72281r;

        /* renamed from: s  reason: collision with root package name */
        T f72282s;

        a(org.reactivestreams.d<? super Boolean> dVar, int i4, n7.d<? super T, ? super T> dVar2) {
            super(dVar);
            this.f72276m = dVar2;
            this.f72280q = new AtomicInteger();
            this.f72277n = new c<>(this, i4);
            this.f72278o = new c<>(this, i4);
            this.f72279p = new AtomicThrowable();
        }

        @Override // io.reactivex.internal.operators.flowable.m3.b
        public void a(Throwable th) {
            if (this.f72279p.addThrowable(th)) {
                b();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.m3.b
        public void b() {
            if (this.f72280q.getAndIncrement() != 0) {
                return;
            }
            int i4 = 1;
            do {
                o7.o<T> oVar = this.f72277n.f72288e;
                o7.o<T> oVar2 = this.f72278o.f72288e;
                if (oVar != null && oVar2 != null) {
                    while (!isCancelled()) {
                        if (this.f72279p.get() != null) {
                            j();
                            this.f75876b.onError(this.f72279p.terminate());
                            return;
                        }
                        boolean z9 = this.f72277n.f72289f;
                        T t9 = this.f72281r;
                        if (t9 == null) {
                            try {
                                t9 = oVar.poll();
                                this.f72281r = t9;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                j();
                                this.f72279p.addThrowable(th);
                                this.f75876b.onError(this.f72279p.terminate());
                                return;
                            }
                        }
                        boolean z10 = t9 == null;
                        boolean z11 = this.f72278o.f72289f;
                        T t10 = this.f72282s;
                        if (t10 == null) {
                            try {
                                t10 = oVar2.poll();
                                this.f72282s = t10;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                j();
                                this.f72279p.addThrowable(th2);
                                this.f75876b.onError(this.f72279p.terminate());
                                return;
                            }
                        }
                        boolean z12 = t10 == null;
                        if (z9 && z11 && z10 && z12) {
                            complete(Boolean.TRUE);
                            return;
                        } else if (z9 && z11 && z10 != z12) {
                            j();
                            complete(Boolean.FALSE);
                            return;
                        } else if (!z10 && !z12) {
                            try {
                                if (!this.f72276m.a(t9, t10)) {
                                    j();
                                    complete(Boolean.FALSE);
                                    return;
                                }
                                this.f72281r = null;
                                this.f72282s = null;
                                this.f72277n.c();
                                this.f72278o.c();
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                j();
                                this.f72279p.addThrowable(th3);
                                this.f75876b.onError(this.f72279p.terminate());
                                return;
                            }
                        }
                    }
                    this.f72277n.b();
                    this.f72278o.b();
                    return;
                } else if (isCancelled()) {
                    this.f72277n.b();
                    this.f72278o.b();
                    return;
                } else if (this.f72279p.get() != null) {
                    j();
                    this.f75876b.onError(this.f72279p.terminate());
                    return;
                }
                i4 = this.f72280q.addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72277n.a();
            this.f72278o.a();
            if (this.f72280q.getAndIncrement() == 0) {
                this.f72277n.b();
                this.f72278o.b();
            }
        }

        void j() {
            this.f72277n.a();
            this.f72277n.b();
            this.f72278o.a();
            this.f72278o.b();
        }

        void k(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2) {
            cVar.i(this.f72277n);
            cVar2.i(this.f72278o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableSequenceEqual.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(Throwable th);

        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableSequenceEqual.java */
    /* loaded from: classes3.dex */
    public static final class c<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f72283h = 4804128302091633067L;

        /* renamed from: a  reason: collision with root package name */
        final b f72284a;

        /* renamed from: b  reason: collision with root package name */
        final int f72285b;

        /* renamed from: c  reason: collision with root package name */
        final int f72286c;

        /* renamed from: d  reason: collision with root package name */
        long f72287d;

        /* renamed from: e  reason: collision with root package name */
        volatile o7.o<T> f72288e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f72289f;

        /* renamed from: g  reason: collision with root package name */
        int f72290g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(b bVar, int i4) {
            this.f72284a = bVar;
            this.f72286c = i4 - (i4 >> 2);
            this.f72285b = i4;
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            o7.o<T> oVar = this.f72288e;
            if (oVar != null) {
                oVar.clear();
            }
        }

        public void c() {
            if (this.f72290g != 1) {
                long j4 = this.f72287d + 1;
                if (j4 >= this.f72286c) {
                    this.f72287d = 0L;
                    get().request(j4);
                    return;
                }
                this.f72287d = j4;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72289f = true;
            this.f72284a.b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72284a.a(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72290g == 0 && !this.f72288e.offer(t9)) {
                onError(new MissingBackpressureException());
            } else {
                this.f72284a.b();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this, eVar)) {
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f72290g = requestFusion;
                        this.f72288e = lVar;
                        this.f72289f = true;
                        this.f72284a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f72290g = requestFusion;
                        this.f72288e = lVar;
                        eVar.request(this.f72285b);
                        return;
                    }
                }
                this.f72288e = new SpscArrayQueue(this.f72285b);
                eVar.request(this.f72285b);
            }
        }
    }

    public m3(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, n7.d<? super T, ? super T> dVar, int i4) {
        this.f72271b = cVar;
        this.f72272c = cVar2;
        this.f72273d = dVar;
        this.f72274e = i4;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super Boolean> dVar) {
        a aVar = new a(dVar, this.f72274e, this.f72273d);
        dVar.onSubscribe(aVar);
        aVar.k(this.f72271b, this.f72272c);
    }
}
