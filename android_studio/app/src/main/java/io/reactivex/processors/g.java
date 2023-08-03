package io.reactivex.processors;

import io.reactivex.internal.util.NotificationLite;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SerializedProcessor.java */
/* loaded from: classes4.dex */
public final class g<T> extends c<T> {

    /* renamed from: b  reason: collision with root package name */
    final c<T> f76089b;

    /* renamed from: c  reason: collision with root package name */
    boolean f76090c;

    /* renamed from: d  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f76091d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f76092e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(c<T> cVar) {
        this.f76089b = cVar;
    }

    @Override // io.reactivex.processors.c
    @m7.f
    public Throwable M8() {
        return this.f76089b.M8();
    }

    @Override // io.reactivex.processors.c
    public boolean N8() {
        return this.f76089b.N8();
    }

    @Override // io.reactivex.processors.c
    public boolean O8() {
        return this.f76089b.O8();
    }

    @Override // io.reactivex.processors.c
    public boolean P8() {
        return this.f76089b.P8();
    }

    void R8() {
        io.reactivex.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.f76091d;
                if (aVar == null) {
                    this.f76090c = false;
                    return;
                }
                this.f76091d = null;
            }
            aVar.b(this.f76089b);
        }
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f76089b.i(dVar);
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f76092e) {
            return;
        }
        synchronized (this) {
            if (this.f76092e) {
                return;
            }
            this.f76092e = true;
            if (this.f76090c) {
                io.reactivex.internal.util.a<Object> aVar = this.f76091d;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f76091d = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f76090c = true;
            this.f76089b.onComplete();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (this.f76092e) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        synchronized (this) {
            boolean z9 = true;
            if (!this.f76092e) {
                this.f76092e = true;
                if (this.f76090c) {
                    io.reactivex.internal.util.a<Object> aVar = this.f76091d;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f76091d = aVar;
                    }
                    aVar.f(NotificationLite.error(th));
                    return;
                }
                this.f76090c = true;
                z9 = false;
            }
            if (z9) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f76089b.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f76092e) {
            return;
        }
        synchronized (this) {
            if (this.f76092e) {
                return;
            }
            if (this.f76090c) {
                io.reactivex.internal.util.a<Object> aVar = this.f76091d;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f76091d = aVar;
                }
                aVar.c(NotificationLite.next(t9));
                return;
            }
            this.f76090c = true;
            this.f76089b.onNext(t9);
            R8();
        }
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        boolean z9 = true;
        if (!this.f76092e) {
            synchronized (this) {
                if (!this.f76092e) {
                    if (this.f76090c) {
                        io.reactivex.internal.util.a<Object> aVar = this.f76091d;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f76091d = aVar;
                        }
                        aVar.c(NotificationLite.subscription(eVar));
                        return;
                    }
                    this.f76090c = true;
                    z9 = false;
                }
            }
        }
        if (z9) {
            eVar.cancel();
            return;
        }
        this.f76089b.onSubscribe(eVar);
        R8();
    }
}
