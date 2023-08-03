package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: SingleDoOnLifecycle.java */
/* loaded from: classes4.dex */
public final class s<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.p0<T> f80910a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f80911b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f80912c;

    /* compiled from: SingleDoOnLifecycle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80913a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super io.reactivex.rxjava3.disposables.f> f80914b;

        /* renamed from: c  reason: collision with root package name */
        final q7.a f80915c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80916d;

        a(io.reactivex.rxjava3.core.s0<? super T> downstream, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, q7.a onDispose) {
            this.f80913a = downstream;
            this.f80914b = onSubscribe;
            this.f80915c = onDispose;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            try {
                this.f80915c.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
            this.f80916d.dispose();
            this.f80916d = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80916d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(@p7.e Throwable e4) {
            io.reactivex.rxjava3.disposables.f fVar = this.f80916d;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                this.f80916d = disposableHelper;
                this.f80913a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            try {
                this.f80914b.accept(d4);
                if (DisposableHelper.validate(this.f80916d, d4)) {
                    this.f80916d = d4;
                    this.f80913a.onSubscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                d4.dispose();
                this.f80916d = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f80913a);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(@p7.e T t9) {
            io.reactivex.rxjava3.disposables.f fVar = this.f80916d;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                this.f80916d = disposableHelper;
                this.f80913a.onSuccess(t9);
            }
        }
    }

    public s(io.reactivex.rxjava3.core.p0<T> upstream, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, q7.a onDispose) {
        this.f80910a = upstream;
        this.f80911b = onSubscribe;
        this.f80912c = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80910a.d(new a(observer, this.f80911b, this.f80912c));
    }
}
