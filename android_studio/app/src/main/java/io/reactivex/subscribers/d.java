package io.reactivex.subscribers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;

/* compiled from: SafeSubscriber.java */
/* loaded from: classes4.dex */
public final class d<T> implements o<T>, org.reactivestreams.e {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f81798a;

    /* renamed from: b  reason: collision with root package name */
    org.reactivestreams.e f81799b;

    /* renamed from: c  reason: collision with root package name */
    boolean f81800c;

    public d(org.reactivestreams.d<? super T> dVar) {
        this.f81798a = dVar;
    }

    void a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f81798a.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f81798a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    void b() {
        this.f81800c = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f81798a.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f81798a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        try {
            this.f81799b.cancel();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81800c) {
            return;
        }
        this.f81800c = true;
        if (this.f81799b == null) {
            a();
            return;
        }
        try {
            this.f81798a.onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (this.f81800c) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f81800c = true;
        if (this.f81799b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f81798a.onSubscribe(EmptySubscription.INSTANCE);
                try {
                    this.f81798a.onError(new CompositeException(th, nullPointerException));
                    return;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    io.reactivex.plugins.a.Y(new CompositeException(th, nullPointerException, th2));
                    return;
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(new CompositeException(th, nullPointerException, th3));
                return;
            }
        }
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        try {
            this.f81798a.onError(th);
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            io.reactivex.plugins.a.Y(new CompositeException(th, th4));
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f81800c) {
            return;
        }
        if (this.f81799b == null) {
            b();
        } else if (t9 == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f81799b.cancel();
                onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(new CompositeException(nullPointerException, th));
            }
        } else {
            try {
                this.f81798a.onNext(t9);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f81799b.cancel();
                    onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    onError(new CompositeException(th2, th3));
                }
            }
        }
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.validate(this.f81799b, eVar)) {
            this.f81799b = eVar;
            try {
                this.f81798a.onSubscribe(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f81800c = true;
                try {
                    eVar.cancel();
                    io.reactivex.plugins.a.Y(th);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                }
            }
        }
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        try {
            this.f81799b.request(j4);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            try {
                this.f81799b.cancel();
                io.reactivex.plugins.a.Y(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                io.reactivex.plugins.a.Y(new CompositeException(th, th2));
            }
        }
    }
}
