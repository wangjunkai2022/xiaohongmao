package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: SafeObserver.java */
/* loaded from: classes4.dex */
public final class l<T> implements n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    final n0<? super T> f81370a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.rxjava3.disposables.f f81371b;

    /* renamed from: c  reason: collision with root package name */
    boolean f81372c;

    public l(@p7.e n0<? super T> downstream) {
        this.f81370a = downstream;
    }

    void a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f81370a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f81370a.onError(nullPointerException);
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
        this.f81372c = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f81370a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f81370a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        this.f81371b.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f81371b.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f81372c) {
            return;
        }
        this.f81372c = true;
        if (this.f81371b == null) {
            a();
            return;
        }
        try {
            this.f81370a.onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(@p7.e Throwable t9) {
        if (this.f81372c) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81372c = true;
        if (this.f81371b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f81370a.onSubscribe(EmptyDisposable.INSTANCE);
                try {
                    this.f81370a.onError(new CompositeException(t9, nullPointerException));
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
            t9 = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
        }
        try {
            this.f81370a.onError(t9);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(t9, th3));
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(@p7.e T t9) {
        if (this.f81372c) {
            return;
        }
        if (this.f81371b == null) {
            b();
        } else if (t9 == null) {
            NullPointerException b10 = io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value.");
            try {
                this.f81371b.dispose();
                onError(b10);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                onError(new CompositeException(b10, th));
            }
        } else {
            try {
                this.f81370a.onNext(t9);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                try {
                    this.f81371b.dispose();
                    onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    onError(new CompositeException(th2, th3));
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (DisposableHelper.validate(this.f81371b, d4)) {
            this.f81371b = d4;
            try {
                this.f81370a.onSubscribe(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81372c = true;
                try {
                    d4.dispose();
                    io.reactivex.rxjava3.plugins.a.Y(th);
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    io.reactivex.rxjava3.plugins.a.Y(new CompositeException(th, th2));
                }
            }
        }
    }
}
