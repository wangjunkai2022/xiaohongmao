package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class ForEachWhileObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: e  reason: collision with root package name */
    private static final long f76454e = -4403180040475402120L;

    /* renamed from: a  reason: collision with root package name */
    final q7.r<? super T> f76455a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f76456b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f76457c;

    /* renamed from: d  reason: collision with root package name */
    boolean f76458d;

    public ForEachWhileObserver(q7.r<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete) {
        this.f76455a = onNext;
        this.f76456b = onError;
        this.f76457c = onComplete;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f76458d) {
            return;
        }
        this.f76458d = true;
        try {
            this.f76457c.run();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        if (this.f76458d) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f76458d = true;
        try {
            this.f76456b.accept(t9);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(t9, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        if (this.f76458d) {
            return;
        }
        try {
            if (this.f76455a.test(t9)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this, d4);
    }
}
