package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: DisposableLambdaObserver.java */
/* loaded from: classes4.dex */
public final class h<T> implements n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    final n0<? super T> f76486a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f76487b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f76488c;

    /* renamed from: d  reason: collision with root package name */
    io.reactivex.rxjava3.disposables.f f76489d;

    public h(n0<? super T> actual, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, q7.a onDispose) {
        this.f76486a = actual;
        this.f76487b = onSubscribe;
        this.f76488c = onDispose;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        io.reactivex.rxjava3.disposables.f fVar = this.f76489d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (fVar != disposableHelper) {
            this.f76489d = disposableHelper;
            try {
                this.f76488c.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
            fVar.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f76489d.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        io.reactivex.rxjava3.disposables.f fVar = this.f76489d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (fVar != disposableHelper) {
            this.f76489d = disposableHelper;
            this.f76486a.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.disposables.f fVar = this.f76489d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (fVar != disposableHelper) {
            this.f76489d = disposableHelper;
            this.f76486a.onError(t9);
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        this.f76486a.onNext(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        try {
            this.f76487b.accept(d4);
            if (DisposableHelper.validate(this.f76489d, d4)) {
                this.f76489d = d4;
                this.f76486a.onSubscribe(this);
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            d4.dispose();
            this.f76489d = DisposableHelper.DISPOSED;
            EmptyDisposable.error(th, this.f76486a);
        }
    }
}
