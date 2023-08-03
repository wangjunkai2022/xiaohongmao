package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: TestSubscriber.java */
/* loaded from: classes4.dex */
public class f<T> extends io.reactivex.rxjava3.observers.a<T, f<T>> implements r<T>, org.reactivestreams.e {

    /* renamed from: i  reason: collision with root package name */
    private final org.reactivestreams.d<? super T> f81658i;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f81659j;

    /* renamed from: k  reason: collision with root package name */
    private final AtomicReference<org.reactivestreams.e> f81660k;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicLong f81661l;

    /* compiled from: TestSubscriber.java */
    /* loaded from: classes4.dex */
    enum a implements r<Object> {
        INSTANCE;

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
        }
    }

    public f() {
        this(a.INSTANCE, Long.MAX_VALUE);
    }

    @p7.e
    public static <T> f<T> D() {
        return new f<>();
    }

    @p7.e
    public static <T> f<T> E(long initialRequested) {
        return new f<>(initialRequested);
    }

    public static <T> f<T> F(@p7.e org.reactivestreams.d<? super T> delegate) {
        return new f<>(delegate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.observers.a
    /* renamed from: C */
    public final f<T> l() {
        if (this.f81660k.get() != null) {
            return this;
        }
        throw y("Not subscribed!");
    }

    public final boolean G() {
        return this.f81660k.get() != null;
    }

    public final boolean H() {
        return this.f81659j;
    }

    protected void I() {
    }

    public final f<T> J(long n9) {
        request(n9);
        return this;
    }

    @Override // org.reactivestreams.e
    public final void cancel() {
        if (this.f81659j) {
            return;
        }
        this.f81659j = true;
        SubscriptionHelper.cancel(this.f81660k);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.observers.a, io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        cancel();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.observers.a, io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return this.f81659j;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (!this.f81354f) {
            this.f81354f = true;
            if (this.f81660k.get() == null) {
                this.f81351c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f81353e = Thread.currentThread();
            this.f81352d++;
            this.f81658i.onComplete();
        } finally {
            this.f81349a.countDown();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(@p7.e Throwable t9) {
        if (!this.f81354f) {
            this.f81354f = true;
            if (this.f81660k.get() == null) {
                this.f81351c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f81353e = Thread.currentThread();
            if (t9 == null) {
                this.f81351c.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.f81351c.add(t9);
            }
            this.f81658i.onError(t9);
        } finally {
            this.f81349a.countDown();
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(@p7.e T t9) {
        if (!this.f81354f) {
            this.f81354f = true;
            if (this.f81660k.get() == null) {
                this.f81351c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f81353e = Thread.currentThread();
        this.f81350b.add(t9);
        if (t9 == null) {
            this.f81351c.add(new NullPointerException("onNext received a null value"));
        }
        this.f81658i.onNext(t9);
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(@p7.e org.reactivestreams.e s9) {
        this.f81353e = Thread.currentThread();
        if (s9 == null) {
            this.f81351c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f81660k.compareAndSet(null, s9)) {
            s9.cancel();
            if (this.f81660k.get() != SubscriptionHelper.CANCELLED) {
                List<Throwable> list = this.f81351c;
                list.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + s9));
            }
        } else {
            this.f81658i.onSubscribe(s9);
            long andSet = this.f81661l.getAndSet(0L);
            if (andSet != 0) {
                s9.request(andSet);
            }
            I();
        }
    }

    @Override // org.reactivestreams.e
    public final void request(long n9) {
        SubscriptionHelper.deferredRequest(this.f81660k, this.f81661l, n9);
    }

    public f(long initialRequest) {
        this(a.INSTANCE, initialRequest);
    }

    public f(@p7.e org.reactivestreams.d<? super T> downstream) {
        this(downstream, Long.MAX_VALUE);
    }

    public f(@p7.e org.reactivestreams.d<? super T> actual, long initialRequest) {
        if (initialRequest >= 0) {
            this.f81658i = actual;
            this.f81660k = new AtomicReference<>();
            this.f81661l = new AtomicLong(initialRequest);
            return;
        }
        throw new IllegalArgumentException("Negative initial request not allowed");
    }
}
