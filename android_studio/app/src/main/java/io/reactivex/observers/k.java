package io.reactivex.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: SafeObserver.java */
/* loaded from: classes4.dex */
public final class k<T> implements g0<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final g0<? super T> f75959a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.disposables.c f75960b;

    /* renamed from: c  reason: collision with root package name */
    boolean f75961c;

    public k(@m7.e g0<? super T> g0Var) {
        this.f75959a = g0Var;
    }

    void a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f75959a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f75959a.onError(nullPointerException);
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
        this.f75961c = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f75959a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f75959a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        this.f75960b.dispose();
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f75960b.isDisposed();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f75961c) {
            return;
        }
        this.f75961c = true;
        if (this.f75960b == null) {
            a();
            return;
        }
        try {
            this.f75959a.onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.g0
    public void onError(@m7.e Throwable th) {
        if (this.f75961c) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f75961c = true;
        if (this.f75960b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f75959a.onSubscribe(EmptyDisposable.INSTANCE);
                try {
                    this.f75959a.onError(new CompositeException(th, nullPointerException));
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
            this.f75959a.onError(th);
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            io.reactivex.plugins.a.Y(new CompositeException(th, th4));
        }
    }

    @Override // io.reactivex.g0
    public void onNext(@m7.e T t9) {
        if (this.f75961c) {
            return;
        }
        if (this.f75960b == null) {
            b();
        } else if (t9 == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f75960b.dispose();
                onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(new CompositeException(nullPointerException, th));
            }
        } else {
            try {
                this.f75959a.onNext(t9);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f75960b.dispose();
                    onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    onError(new CompositeException(th2, th3));
                }
            }
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (DisposableHelper.validate(this.f75960b, cVar)) {
            this.f75960b = cVar;
            try {
                this.f75959a.onSubscribe(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75961c = true;
                try {
                    cVar.dispose();
                    io.reactivex.plugins.a.Y(th);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                }
            }
        }
    }
}
