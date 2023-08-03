package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableTakeLast.java */
/* loaded from: classes4.dex */
public final class e4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f77112c;

    /* compiled from: FlowableTakeLast.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77113h = 7240042530241604978L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77114a;

        /* renamed from: b  reason: collision with root package name */
        final int f77115b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77116c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f77117d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f77118e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f77119f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f77120g = new AtomicInteger();

        a(org.reactivestreams.d<? super T> actual, int count) {
            this.f77114a = actual;
            this.f77115b = count;
        }

        void a() {
            if (this.f77120g.getAndIncrement() == 0) {
                org.reactivestreams.d<? super T> dVar = this.f77114a;
                long j4 = this.f77119f.get();
                while (!this.f77118e) {
                    if (this.f77117d) {
                        long j10 = 0;
                        while (j10 != j4) {
                            if (this.f77118e) {
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
                        if (isEmpty()) {
                            dVar.onComplete();
                            return;
                        } else if (j10 != 0) {
                            j4 = io.reactivex.rxjava3.internal.util.b.e(this.f77119f, j10);
                        }
                    }
                    if (this.f77120g.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77118e = true;
            this.f77116c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77117d = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77114a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77115b == size()) {
                poll();
            }
            offer(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77116c, s9)) {
                this.f77116c = s9;
                this.f77114a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77119f, n9);
                a();
            }
        }
    }

    public e4(io.reactivex.rxjava3.core.m<T> source, int count) {
        super(source);
        this.f77112c = count;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77112c));
    }
}
