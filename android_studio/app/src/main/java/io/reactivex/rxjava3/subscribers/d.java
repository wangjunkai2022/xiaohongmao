package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.g;

/* compiled from: SafeSubscriber.java */
/* loaded from: classes4.dex */
public final class d<T> implements r<T>, org.reactivestreams.e {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f81648a;

    /* renamed from: b  reason: collision with root package name */
    org.reactivestreams.e f81649b;

    /* renamed from: c  reason: collision with root package name */
    boolean f81650c;

    public d(@p7.e org.reactivestreams.d<? super T> downstream) {
        this.f81648a = downstream;
    }

    void a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f81648a.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f81648a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    void b() {
        this.f81650c = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f81648a.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f81648a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        try {
            this.f81649b.cancel();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81650c) {
            return;
        }
        this.f81650c = true;
        if (this.f81649b == null) {
            a();
            return;
        }
        try {
            this.f81648a.onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onError(@p7.e Throwable t9) {
        if (this.f81650c) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81650c = true;
        if (this.f81649b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f81648a.onSubscribe(EmptySubscription.INSTANCE);
                try {
                    this.f81648a.onError(new CompositeException(t9, nullPointerException));
                    return;
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(new CompositeException(t9, nullPointerException, th));
                    return;
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                io.reactivex.rxjava3.plugins.a.Y(new CompositeException(t9, nullPointerException, th2));
                return;
            }
        }
        if (t9 == null) {
            t9 = g.b("onError called with a null Throwable.");
        }
        try {
            this.f81648a.onError(t9);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(t9, th3));
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(@p7.e T t9) {
        if (this.f81650c) {
            return;
        }
        if (this.f81649b == null) {
            b();
        } else if (t9 == null) {
            NullPointerException b10 = g.b("onNext called with a null Throwable.");
            try {
                this.f81649b.cancel();
                onError(b10);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                onError(new CompositeException(b10, th));
            }
        } else {
            try {
                this.f81648a.onNext(t9);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                try {
                    this.f81649b.cancel();
                    onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    onError(new CompositeException(th2, th3));
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(@p7.e org.reactivestreams.e s9) {
        if (SubscriptionHelper.validate(this.f81649b, s9)) {
            this.f81649b = s9;
            try {
                this.f81648a.onSubscribe(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81650c = true;
                try {
                    s9.cancel();
                    io.reactivex.rxjava3.plugins.a.Y(th);
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    io.reactivex.rxjava3.plugins.a.Y(new CompositeException(th, th2));
                }
            }
        }
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        try {
            this.f81649b.request(n9);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            try {
                this.f81649b.cancel();
                io.reactivex.rxjava3.plugins.a.Y(th);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                io.reactivex.rxjava3.plugins.a.Y(new CompositeException(th, th2));
            }
        }
    }
}
