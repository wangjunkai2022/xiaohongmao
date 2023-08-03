package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableTakeLast.java */
/* loaded from: classes3.dex */
public final class b4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f71627c;

    /* compiled from: FlowableTakeLast.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f71628h = 7240042530241604978L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71629a;

        /* renamed from: b  reason: collision with root package name */
        final int f71630b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f71631c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f71632d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f71633e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f71634f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f71635g = new AtomicInteger();

        a(org.reactivestreams.d<? super T> dVar, int i4) {
            this.f71629a = dVar;
            this.f71630b = i4;
        }

        void a() {
            if (this.f71635g.getAndIncrement() == 0) {
                org.reactivestreams.d<? super T> dVar = this.f71629a;
                long j4 = this.f71634f.get();
                while (!this.f71633e) {
                    if (this.f71632d) {
                        long j10 = 0;
                        while (j10 != j4) {
                            if (this.f71633e) {
                                return;
                            }
                            Object obj = (T) poll();
                            if (obj == null) {
                                dVar.onComplete();
                                return;
                            } else {
                                dVar.onNext(obj);
                                j10++;
                            }
                        }
                        if (j10 != 0 && j4 != Long.MAX_VALUE) {
                            j4 = this.f71634f.addAndGet(-j10);
                        }
                    }
                    if (this.f71635g.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71633e = true;
            this.f71631c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71632d = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71629a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71630b == size()) {
                poll();
            }
            offer(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71631c, eVar)) {
                this.f71631c = eVar;
                this.f71629a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f71634f, j4);
                a();
            }
        }
    }

    public b4(io.reactivex.j<T> jVar, int i4) {
        super(jVar);
        this.f71627c = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f71627c));
    }
}
