package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.o;

/* compiled from: SerializedSubscriber.java */
/* loaded from: classes4.dex */
public final class e<T> implements o<T>, org.reactivestreams.e {

    /* renamed from: g  reason: collision with root package name */
    static final int f81801g = 4;

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f81802a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f81803b;

    /* renamed from: c  reason: collision with root package name */
    org.reactivestreams.e f81804c;

    /* renamed from: d  reason: collision with root package name */
    boolean f81805d;

    /* renamed from: e  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f81806e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f81807f;

    public e(org.reactivestreams.d<? super T> dVar) {
        this(dVar, false);
    }

    void a() {
        io.reactivex.internal.util.a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.f81806e;
                if (aVar == null) {
                    this.f81805d = false;
                    return;
                }
                this.f81806e = null;
            }
        } while (!aVar.b((org.reactivestreams.d<? super T>) this.f81802a));
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        this.f81804c.cancel();
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81807f) {
            return;
        }
        synchronized (this) {
            if (this.f81807f) {
                return;
            }
            if (this.f81805d) {
                io.reactivex.internal.util.a<Object> aVar = this.f81806e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f81806e = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f81807f = true;
            this.f81805d = true;
            this.f81802a.onComplete();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (this.f81807f) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        synchronized (this) {
            boolean z9 = true;
            if (!this.f81807f) {
                if (this.f81805d) {
                    this.f81807f = true;
                    io.reactivex.internal.util.a<Object> aVar = this.f81806e;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f81806e = aVar;
                    }
                    Object error = NotificationLite.error(th);
                    if (this.f81803b) {
                        aVar.c(error);
                    } else {
                        aVar.f(error);
                    }
                    return;
                }
                this.f81807f = true;
                this.f81805d = true;
                z9 = false;
            }
            if (z9) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f81802a.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f81807f) {
            return;
        }
        if (t9 == null) {
            this.f81804c.cancel();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            if (this.f81807f) {
                return;
            }
            if (this.f81805d) {
                io.reactivex.internal.util.a<Object> aVar = this.f81806e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f81806e = aVar;
                }
                aVar.c(NotificationLite.next(t9));
                return;
            }
            this.f81805d = true;
            this.f81802a.onNext(t9);
            a();
        }
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.validate(this.f81804c, eVar)) {
            this.f81804c = eVar;
            this.f81802a.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        this.f81804c.request(j4);
    }

    public e(org.reactivestreams.d<? super T> dVar, boolean z9) {
        this.f81802a = dVar;
        this.f81803b = z9;
    }
}
