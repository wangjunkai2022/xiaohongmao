package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.internal.util.g;

/* compiled from: SerializedSubscriber.java */
/* loaded from: classes4.dex */
public final class e<T> implements r<T>, org.reactivestreams.e {

    /* renamed from: g  reason: collision with root package name */
    static final int f81651g = 4;

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f81652a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f81653b;

    /* renamed from: c  reason: collision with root package name */
    org.reactivestreams.e f81654c;

    /* renamed from: d  reason: collision with root package name */
    boolean f81655d;

    /* renamed from: e  reason: collision with root package name */
    io.reactivex.rxjava3.internal.util.a<Object> f81656e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f81657f;

    public e(org.reactivestreams.d<? super T> downstream) {
        this(downstream, false);
    }

    void a() {
        io.reactivex.rxjava3.internal.util.a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.f81656e;
                if (aVar == null) {
                    this.f81655d = false;
                    return;
                }
                this.f81656e = null;
            }
        } while (!aVar.b((org.reactivestreams.d<? super T>) this.f81652a));
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        this.f81654c.cancel();
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81657f) {
            return;
        }
        synchronized (this) {
            if (this.f81657f) {
                return;
            }
            if (this.f81655d) {
                io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81656e;
                if (aVar == null) {
                    aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                    this.f81656e = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f81657f = true;
            this.f81655d = true;
            this.f81652a.onComplete();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        if (this.f81657f) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        synchronized (this) {
            boolean z9 = true;
            if (!this.f81657f) {
                if (this.f81655d) {
                    this.f81657f = true;
                    io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81656e;
                    if (aVar == null) {
                        aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                        this.f81656e = aVar;
                    }
                    Object error = NotificationLite.error(t9);
                    if (this.f81653b) {
                        aVar.c(error);
                    } else {
                        aVar.f(error);
                    }
                    return;
                }
                this.f81657f = true;
                this.f81655d = true;
                z9 = false;
            }
            if (z9) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f81652a.onError(t9);
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(@p7.e T t9) {
        if (this.f81657f) {
            return;
        }
        if (t9 == null) {
            this.f81654c.cancel();
            onError(g.b("onNext called with a null value."));
            return;
        }
        synchronized (this) {
            if (this.f81657f) {
                return;
            }
            if (this.f81655d) {
                io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81656e;
                if (aVar == null) {
                    aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                    this.f81656e = aVar;
                }
                aVar.c(NotificationLite.next(t9));
                return;
            }
            this.f81655d = true;
            this.f81652a.onNext(t9);
            a();
        }
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(@p7.e org.reactivestreams.e s9) {
        if (SubscriptionHelper.validate(this.f81654c, s9)) {
            this.f81654c = s9;
            this.f81652a.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        this.f81654c.request(n9);
    }

    public e(@p7.e org.reactivestreams.d<? super T> actual, boolean delayError) {
        this.f81652a = actual;
        this.f81653b = delayError;
    }
}
