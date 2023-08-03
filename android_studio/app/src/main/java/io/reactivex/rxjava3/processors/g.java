package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.internal.util.NotificationLite;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SerializedProcessor.java */
/* loaded from: classes4.dex */
public final class g<T> extends c<T> {

    /* renamed from: b  reason: collision with root package name */
    final c<T> f81498b;

    /* renamed from: c  reason: collision with root package name */
    boolean f81499c;

    /* renamed from: d  reason: collision with root package name */
    io.reactivex.rxjava3.internal.util.a<Object> f81500d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f81501e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(final c<T> actual) {
        this.f81498b = actual;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f81498b.i(s9);
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.f
    public Throwable g9() {
        return this.f81498b.g9();
    }

    @Override // io.reactivex.rxjava3.processors.c
    public boolean h9() {
        return this.f81498b.h9();
    }

    @Override // io.reactivex.rxjava3.processors.c
    public boolean i9() {
        return this.f81498b.i9();
    }

    @Override // io.reactivex.rxjava3.processors.c
    public boolean j9() {
        return this.f81498b.j9();
    }

    void l9() {
        io.reactivex.rxjava3.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.f81500d;
                if (aVar == null) {
                    this.f81499c = false;
                    return;
                }
                this.f81500d = null;
            }
            aVar.b(this.f81498b);
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81501e) {
            return;
        }
        synchronized (this) {
            if (this.f81501e) {
                return;
            }
            this.f81501e = true;
            if (this.f81499c) {
                io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81500d;
                if (aVar == null) {
                    aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                    this.f81500d = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f81499c = true;
            this.f81498b.onComplete();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        if (this.f81501e) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        synchronized (this) {
            boolean z9 = true;
            if (!this.f81501e) {
                this.f81501e = true;
                if (this.f81499c) {
                    io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81500d;
                    if (aVar == null) {
                        aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                        this.f81500d = aVar;
                    }
                    aVar.f(NotificationLite.error(t9));
                    return;
                }
                this.f81499c = true;
                z9 = false;
            }
            if (z9) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f81498b.onError(t9);
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f81501e) {
            return;
        }
        synchronized (this) {
            if (this.f81501e) {
                return;
            }
            if (this.f81499c) {
                io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81500d;
                if (aVar == null) {
                    aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                    this.f81500d = aVar;
                }
                aVar.c(NotificationLite.next(t9));
                return;
            }
            this.f81499c = true;
            this.f81498b.onNext(t9);
            l9();
        }
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        boolean z9 = true;
        if (!this.f81501e) {
            synchronized (this) {
                if (!this.f81501e) {
                    if (this.f81499c) {
                        io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81500d;
                        if (aVar == null) {
                            aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                            this.f81500d = aVar;
                        }
                        aVar.c(NotificationLite.subscription(s9));
                        return;
                    }
                    this.f81499c = true;
                    z9 = false;
                }
            }
        }
        if (z9) {
            s9.cancel();
            return;
        }
        this.f81498b.onSubscribe(s9);
        l9();
    }
}
