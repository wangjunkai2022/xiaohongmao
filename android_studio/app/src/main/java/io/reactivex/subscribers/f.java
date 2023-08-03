package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import io.reactivex.observers.BaseTestConsumer;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import n7.g;
import o7.l;

/* compiled from: TestSubscriber.java */
/* loaded from: classes4.dex */
public class f<T> extends BaseTestConsumer<T, f<T>> implements o<T>, org.reactivestreams.e, io.reactivex.disposables.c {

    /* renamed from: k  reason: collision with root package name */
    private final org.reactivestreams.d<? super T> f81808k;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f81809l;

    /* renamed from: m  reason: collision with root package name */
    private final AtomicReference<org.reactivestreams.e> f81810m;

    /* renamed from: n  reason: collision with root package name */
    private final AtomicLong f81811n;

    /* renamed from: o  reason: collision with root package name */
    private l<T> f81812o;

    /* compiled from: TestSubscriber.java */
    /* loaded from: classes4.dex */
    enum a implements o<Object> {
        INSTANCE;

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
        }
    }

    public f() {
        this(a.INSTANCE, Long.MAX_VALUE);
    }

    public static <T> f<T> i0() {
        return new f<>();
    }

    public static <T> f<T> j0(long j4) {
        return new f<>(j4);
    }

    public static <T> f<T> k0(org.reactivestreams.d<? super T> dVar) {
        return new f<>(dVar);
    }

    static String l0(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return "Unknown(" + i4 + ")";
                }
                return "ASYNC";
            }
            return "SYNC";
        }
        return "NONE";
    }

    final f<T> c0() {
        if (this.f81812o != null) {
            return this;
        }
        throw new AssertionError("Upstream is not fuseable.");
    }

    @Override // org.reactivestreams.e
    public final void cancel() {
        if (this.f81809l) {
            return;
        }
        this.f81809l = true;
        SubscriptionHelper.cancel(this.f81810m);
    }

    final f<T> d0(int i4) {
        int i10 = this.f75942h;
        if (i10 != i4) {
            if (this.f81812o != null) {
                throw new AssertionError("Fusion mode different. Expected: " + l0(i4) + ", actual: " + l0(i10));
            }
            throw T("Upstream is not fuseable");
        }
        return this;
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        cancel();
    }

    final f<T> e0() {
        if (this.f81812o == null) {
            return this;
        }
        throw new AssertionError("Upstream is fuseable.");
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    /* renamed from: f0 */
    public final f<T> q() {
        if (this.f81810m.get() == null) {
            if (this.f75937c.isEmpty()) {
                return this;
            }
            throw T("Not subscribed but errors found");
        }
        throw T("Subscribed!");
    }

    public final f<T> g0(g<? super f<T>> gVar) {
        try {
            gVar.accept(this);
            return this;
        } catch (Throwable th) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    /* renamed from: h0 */
    public final f<T> t() {
        if (this.f81810m.get() != null) {
            return this;
        }
        throw T("Not subscribed!");
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f81809l;
    }

    public final boolean m0() {
        return this.f81810m.get() != null;
    }

    public final boolean n0() {
        return this.f81809l;
    }

    protected void o0() {
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (!this.f75940f) {
            this.f75940f = true;
            if (this.f81810m.get() == null) {
                this.f75937c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f75939e = Thread.currentThread();
            this.f75938d++;
            this.f81808k.onComplete();
        } finally {
            this.f75935a.countDown();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (!this.f75940f) {
            this.f75940f = true;
            if (this.f81810m.get() == null) {
                this.f75937c.add(new NullPointerException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f75939e = Thread.currentThread();
            this.f75937c.add(th);
            if (th == null) {
                this.f75937c.add(new IllegalStateException("onError received a null Throwable"));
            }
            this.f81808k.onError(th);
        } finally {
            this.f75935a.countDown();
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (!this.f75940f) {
            this.f75940f = true;
            if (this.f81810m.get() == null) {
                this.f75937c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f75939e = Thread.currentThread();
        if (this.f75942h != 2) {
            this.f75936b.add(t9);
            if (t9 == null) {
                this.f75937c.add(new NullPointerException("onNext received a null value"));
            }
            this.f81808k.onNext(t9);
            return;
        }
        while (true) {
            try {
                T poll = this.f81812o.poll();
                if (poll == null) {
                    return;
                }
                this.f75936b.add(poll);
            } catch (Throwable th) {
                this.f75937c.add(th);
                this.f81812o.cancel();
                return;
            }
        }
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        this.f75939e = Thread.currentThread();
        if (eVar == null) {
            this.f75937c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f81810m.compareAndSet(null, eVar)) {
            eVar.cancel();
            if (this.f81810m.get() != SubscriptionHelper.CANCELLED) {
                this.f75937c.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + eVar));
            }
        } else {
            int i4 = this.f75941g;
            if (i4 != 0 && (eVar instanceof l)) {
                l<T> lVar = (l) eVar;
                this.f81812o = lVar;
                int requestFusion = lVar.requestFusion(i4);
                this.f75942h = requestFusion;
                if (requestFusion == 1) {
                    this.f75940f = true;
                    this.f75939e = Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.f81812o.poll();
                            if (poll != null) {
                                this.f75936b.add(poll);
                            } else {
                                this.f75938d++;
                                return;
                            }
                        } catch (Throwable th) {
                            this.f75937c.add(th);
                            return;
                        }
                    }
                }
            }
            this.f81808k.onSubscribe(eVar);
            long andSet = this.f81811n.getAndSet(0L);
            if (andSet != 0) {
                eVar.request(andSet);
            }
            o0();
        }
    }

    public final f<T> p0(long j4) {
        request(j4);
        return this;
    }

    final f<T> q0(int i4) {
        this.f75941g = i4;
        return this;
    }

    @Override // org.reactivestreams.e
    public final void request(long j4) {
        SubscriptionHelper.deferredRequest(this.f81810m, this.f81811n, j4);
    }

    public f(long j4) {
        this(a.INSTANCE, j4);
    }

    public f(org.reactivestreams.d<? super T> dVar) {
        this(dVar, Long.MAX_VALUE);
    }

    public f(org.reactivestreams.d<? super T> dVar, long j4) {
        if (j4 >= 0) {
            this.f81808k = dVar;
            this.f81810m = new AtomicReference<>();
            this.f81811n = new AtomicLong(j4);
            return;
        }
        throw new IllegalArgumentException("Negative initial request not allowed");
    }
}
