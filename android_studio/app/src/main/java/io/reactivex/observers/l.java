package io.reactivex.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;

/* compiled from: SerializedObserver.java */
/* loaded from: classes4.dex */
public final class l<T> implements g0<T>, io.reactivex.disposables.c {

    /* renamed from: g  reason: collision with root package name */
    static final int f75962g = 4;

    /* renamed from: a  reason: collision with root package name */
    final g0<? super T> f75963a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f75964b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.disposables.c f75965c;

    /* renamed from: d  reason: collision with root package name */
    boolean f75966d;

    /* renamed from: e  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f75967e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f75968f;

    public l(@m7.e g0<? super T> g0Var) {
        this(g0Var, false);
    }

    void a() {
        io.reactivex.internal.util.a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.f75967e;
                if (aVar == null) {
                    this.f75966d = false;
                    return;
                }
                this.f75967e = null;
            }
        } while (!aVar.a((g0<? super T>) this.f75963a));
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        this.f75965c.dispose();
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f75965c.isDisposed();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f75968f) {
            return;
        }
        synchronized (this) {
            if (this.f75968f) {
                return;
            }
            if (this.f75966d) {
                io.reactivex.internal.util.a<Object> aVar = this.f75967e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f75967e = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f75968f = true;
            this.f75966d = true;
            this.f75963a.onComplete();
        }
    }

    @Override // io.reactivex.g0
    public void onError(@m7.e Throwable th) {
        if (this.f75968f) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        synchronized (this) {
            boolean z9 = true;
            if (!this.f75968f) {
                if (this.f75966d) {
                    this.f75968f = true;
                    io.reactivex.internal.util.a<Object> aVar = this.f75967e;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f75967e = aVar;
                    }
                    Object error = NotificationLite.error(th);
                    if (this.f75964b) {
                        aVar.c(error);
                    } else {
                        aVar.f(error);
                    }
                    return;
                }
                this.f75968f = true;
                this.f75966d = true;
                z9 = false;
            }
            if (z9) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f75963a.onError(th);
            }
        }
    }

    @Override // io.reactivex.g0
    public void onNext(@m7.e T t9) {
        if (this.f75968f) {
            return;
        }
        if (t9 == null) {
            this.f75965c.dispose();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            if (this.f75968f) {
                return;
            }
            if (this.f75966d) {
                io.reactivex.internal.util.a<Object> aVar = this.f75967e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f75967e = aVar;
                }
                aVar.c(NotificationLite.next(t9));
                return;
            }
            this.f75966d = true;
            this.f75963a.onNext(t9);
            a();
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (DisposableHelper.validate(this.f75965c, cVar)) {
            this.f75965c = cVar;
            this.f75963a.onSubscribe(this);
        }
    }

    public l(@m7.e g0<? super T> g0Var, boolean z9) {
        this.f75963a = g0Var;
        this.f75964b = z9;
    }
}
