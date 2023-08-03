package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class MaybeCallbackObserver<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c, io.reactivex.observers.f {

    /* renamed from: d  reason: collision with root package name */
    private static final long f73167d = -6076952298809384986L;

    /* renamed from: a  reason: collision with root package name */
    final n7.g<? super T> f73168a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f73169b;

    /* renamed from: c  reason: collision with root package name */
    final n7.a f73170c;

    public MaybeCallbackObserver(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar) {
        this.f73168a = gVar;
        this.f73169b = gVar2;
        this.f73170c = aVar;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.observers.f
    public boolean hasCustomOnError() {
        return this.f73169b != io.reactivex.internal.functions.a.f71132f;
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.t
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f73170c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.t
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f73169b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.t
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // io.reactivex.t
    public void onSuccess(T t9) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f73168a.accept(t9);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }
}
