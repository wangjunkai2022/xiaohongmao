package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;

/* compiled from: SerializedObserver.java */
/* loaded from: classes4.dex */
public final class m<T> implements n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: g  reason: collision with root package name */
    static final int f81373g = 4;

    /* renamed from: a  reason: collision with root package name */
    final n0<? super T> f81374a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f81375b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.rxjava3.disposables.f f81376c;

    /* renamed from: d  reason: collision with root package name */
    boolean f81377d;

    /* renamed from: e  reason: collision with root package name */
    io.reactivex.rxjava3.internal.util.a<Object> f81378e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f81379f;

    public m(@p7.e n0<? super T> downstream) {
        this(downstream, false);
    }

    void a() {
        io.reactivex.rxjava3.internal.util.a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.f81378e;
                if (aVar == null) {
                    this.f81377d = false;
                    return;
                }
                this.f81378e = null;
            }
        } while (!aVar.a((n0<? super T>) this.f81374a));
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        this.f81379f = true;
        this.f81376c.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f81376c.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f81379f) {
            return;
        }
        synchronized (this) {
            if (this.f81379f) {
                return;
            }
            if (this.f81377d) {
                io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81378e;
                if (aVar == null) {
                    aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                    this.f81378e = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f81379f = true;
            this.f81377d = true;
            this.f81374a.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(@p7.e Throwable t9) {
        if (this.f81379f) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        synchronized (this) {
            boolean z9 = true;
            if (!this.f81379f) {
                if (this.f81377d) {
                    this.f81379f = true;
                    io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81378e;
                    if (aVar == null) {
                        aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                        this.f81378e = aVar;
                    }
                    Object error = NotificationLite.error(t9);
                    if (this.f81375b) {
                        aVar.c(error);
                    } else {
                        aVar.f(error);
                    }
                    return;
                }
                this.f81379f = true;
                this.f81377d = true;
                z9 = false;
            }
            if (z9) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f81374a.onError(t9);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(@p7.e T t9) {
        if (this.f81379f) {
            return;
        }
        if (t9 == null) {
            this.f81376c.dispose();
            onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
            return;
        }
        synchronized (this) {
            if (this.f81379f) {
                return;
            }
            if (this.f81377d) {
                io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81378e;
                if (aVar == null) {
                    aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                    this.f81378e = aVar;
                }
                aVar.c(NotificationLite.next(t9));
                return;
            }
            this.f81377d = true;
            this.f81374a.onNext(t9);
            a();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (DisposableHelper.validate(this.f81376c, d4)) {
            this.f81376c = d4;
            this.f81374a.onSubscribe(this);
        }
    }

    public m(@p7.e n0<? super T> actual, boolean delayError) {
        this.f81374a = actual;
        this.f81375b = delayError;
    }
}
