package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: MaybeDoOnLifecycle.java */
/* loaded from: classes4.dex */
public final class t<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f78751b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f78752c;

    /* compiled from: MaybeDoOnLifecycle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78753a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super io.reactivex.rxjava3.disposables.f> f78754b;

        /* renamed from: c  reason: collision with root package name */
        final q7.a f78755c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78756d;

        a(io.reactivex.rxjava3.core.y<? super T> downstream, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, q7.a onDispose) {
            this.f78753a = downstream;
            this.f78754b = onSubscribe;
            this.f78755c = onDispose;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            try {
                this.f78755c.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
            this.f78756d.dispose();
            this.f78756d = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78756d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            io.reactivex.rxjava3.disposables.f fVar = this.f78756d;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                this.f78756d = disposableHelper;
                this.f78753a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(@p7.e Throwable e4) {
            io.reactivex.rxjava3.disposables.f fVar = this.f78756d;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                this.f78756d = disposableHelper;
                this.f78753a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            try {
                this.f78754b.accept(d4);
                if (DisposableHelper.validate(this.f78756d, d4)) {
                    this.f78756d = d4;
                    this.f78753a.onSubscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                d4.dispose();
                this.f78756d = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f78753a);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(@p7.e T t9) {
            io.reactivex.rxjava3.disposables.f fVar = this.f78756d;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                this.f78756d = disposableHelper;
                this.f78753a.onSuccess(t9);
            }
        }
    }

    public t(io.reactivex.rxjava3.core.v<T> upstream, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, q7.a onDispose) {
        super(upstream);
        this.f78751b = onSubscribe;
        this.f78752c = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78751b, this.f78752c));
    }
}
