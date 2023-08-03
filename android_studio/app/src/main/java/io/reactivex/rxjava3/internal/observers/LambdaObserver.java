package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class LambdaObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements n0<T>, io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.observers.g {

    /* renamed from: e  reason: collision with root package name */
    private static final long f76465e = -7251123623727029452L;

    /* renamed from: a  reason: collision with root package name */
    final q7.g<? super T> f76466a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f76467b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f76468c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f76469d;

    public LambdaObserver(q7.g<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe) {
        this.f76466a = onNext;
        this.f76467b = onError;
        this.f76468c = onComplete;
        this.f76469d = onSubscribe;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.observers.g
    public boolean hasCustomOnError() {
        return this.f76467b != io.reactivex.rxjava3.internal.functions.a.f76185f;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f76468c.run();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.f76467b.accept(t9);
                return;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(new CompositeException(t9, th));
                return;
            }
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        if (isDisposed()) {
            return;
        }
        try {
            this.f76466a.accept(t9);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            get().dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (DisposableHelper.setOnce(this, d4)) {
            try {
                this.f76469d.accept(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                d4.dispose();
                onError(th);
            }
        }
    }
}
