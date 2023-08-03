package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class LambdaObserver<T> extends AtomicReference<io.reactivex.disposables.c> implements g0<T>, io.reactivex.disposables.c, io.reactivex.observers.f {

    /* renamed from: e  reason: collision with root package name */
    private static final long f71206e = -7251123623727029452L;

    /* renamed from: a  reason: collision with root package name */
    final n7.g<? super T> f71207a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f71208b;

    /* renamed from: c  reason: collision with root package name */
    final n7.a f71209c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super io.reactivex.disposables.c> f71210d;

    public LambdaObserver(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.g<? super io.reactivex.disposables.c> gVar3) {
        this.f71207a = gVar;
        this.f71208b = gVar2;
        this.f71209c = aVar;
        this.f71210d = gVar3;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.observers.f
    public boolean hasCustomOnError() {
        return this.f71208b != io.reactivex.internal.functions.a.f71132f;
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f71209c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.f71208b.accept(th);
                return;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                return;
            }
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        if (isDisposed()) {
            return;
        }
        try {
            this.f71207a.accept(t9);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            get().dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            try {
                this.f71210d.accept(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cVar.dispose();
                onError(th);
            }
        }
    }
}
