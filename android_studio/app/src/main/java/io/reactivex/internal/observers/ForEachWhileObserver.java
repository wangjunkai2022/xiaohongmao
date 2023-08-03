package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import n7.r;

/* loaded from: classes3.dex */
public final class ForEachWhileObserver<T> extends AtomicReference<io.reactivex.disposables.c> implements g0<T>, io.reactivex.disposables.c {

    /* renamed from: e  reason: collision with root package name */
    private static final long f71195e = -4403180040475402120L;

    /* renamed from: a  reason: collision with root package name */
    final r<? super T> f71196a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f71197b;

    /* renamed from: c  reason: collision with root package name */
    final n7.a f71198c;

    /* renamed from: d  reason: collision with root package name */
    boolean f71199d;

    public ForEachWhileObserver(r<? super T> rVar, n7.g<? super Throwable> gVar, n7.a aVar) {
        this.f71196a = rVar;
        this.f71197b = gVar;
        this.f71198c = aVar;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f71199d) {
            return;
        }
        this.f71199d = true;
        try {
            this.f71198c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f71199d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f71199d = true;
        try {
            this.f71197b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        if (this.f71199d) {
            return;
        }
        try {
            if (this.f71196a.test(t9)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
