package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ConsumerSingleObserver<T> extends AtomicReference<io.reactivex.disposables.c> implements l0<T>, io.reactivex.disposables.c, io.reactivex.observers.f {

    /* renamed from: c  reason: collision with root package name */
    private static final long f71181c = -7012088219455310787L;

    /* renamed from: a  reason: collision with root package name */
    final n7.g<? super T> f71182a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f71183b;

    public ConsumerSingleObserver(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2) {
        this.f71182a = gVar;
        this.f71183b = gVar2;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.observers.f
    public boolean hasCustomOnError() {
        return this.f71183b != io.reactivex.internal.functions.a.f71132f;
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f71183b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t9) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f71182a.accept(t9);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }
}
