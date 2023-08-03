package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableOnBackpressureLatest.java */
/* loaded from: classes4.dex */
public final class q2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableOnBackpressureLatest.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77819h = 163080509307634843L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77820a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f77821b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f77822c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f77823d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f77824e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f77825f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<T> f77826g = new AtomicReference<>();

        a(org.reactivestreams.d<? super T> downstream) {
            this.f77820a = downstream;
        }

        boolean a(boolean d4, boolean empty, org.reactivestreams.d<?> a10, AtomicReference<T> q9) {
            if (this.f77824e) {
                q9.lazySet(null);
                return true;
            } else if (d4) {
                Throwable th = this.f77823d;
                if (th != null) {
                    q9.lazySet(null);
                    a10.onError(th);
                    return true;
                } else if (empty) {
                    a10.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f77820a;
            AtomicLong atomicLong = this.f77825f;
            AtomicReference<T> atomicReference = this.f77826g;
            int i4 = 1;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == atomicLong.get()) {
                        break;
                    }
                    boolean z9 = this.f77822c;
                    Object obj = (T) atomicReference.getAndSet(null);
                    boolean z10 = obj == null;
                    if (a(z9, z10, dVar, atomicReference)) {
                        return;
                    }
                    if (z10) {
                        break;
                    }
                    dVar.onNext(obj);
                    j4++;
                }
                if (j4 == atomicLong.get()) {
                    if (a(this.f77822c, atomicReference.get() == null, dVar, atomicReference)) {
                        return;
                    }
                }
                if (j4 != 0) {
                    io.reactivex.rxjava3.internal.util.b.e(atomicLong, j4);
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f77824e) {
                return;
            }
            this.f77824e = true;
            this.f77821b.cancel();
            if (getAndIncrement() == 0) {
                this.f77826g.lazySet(null);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77822c = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77823d = t9;
            this.f77822c = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77826g.lazySet(t9);
            b();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77821b, s9)) {
                this.f77821b = s9;
                this.f77820a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77825f, n9);
                b();
            }
        }
    }

    public q2(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9));
    }
}
