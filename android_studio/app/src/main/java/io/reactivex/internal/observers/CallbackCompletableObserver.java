package io.reactivex.internal.observers;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class CallbackCompletableObserver extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c, n7.g<Throwable>, io.reactivex.observers.f {

    /* renamed from: c  reason: collision with root package name */
    private static final long f71178c = -4361286194466301354L;

    /* renamed from: a  reason: collision with root package name */
    final n7.g<? super Throwable> f71179a;

    /* renamed from: b  reason: collision with root package name */
    final n7.a f71180b;

    public CallbackCompletableObserver(n7.a aVar) {
        this.f71179a = this;
        this.f71180b = aVar;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.observers.f
    public boolean hasCustomOnError() {
        return this.f71179a != this;
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.d
    public void onComplete() {
        try {
            this.f71180b.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        try {
            this.f71179a.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(th2);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // n7.g
    public void accept(Throwable th) {
        io.reactivex.plugins.a.Y(new OnErrorNotImplementedException(th));
    }

    public CallbackCompletableObserver(n7.g<? super Throwable> gVar, n7.a aVar) {
        this.f71179a = gVar;
        this.f71180b = aVar;
    }
}
