package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: MaybePeek.java */
/* loaded from: classes4.dex */
public final class e1<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f78542b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super T> f78543c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super Throwable> f78544d;

    /* renamed from: e  reason: collision with root package name */
    final q7.a f78545e;

    /* renamed from: f  reason: collision with root package name */
    final q7.a f78546f;

    /* renamed from: g  reason: collision with root package name */
    final q7.a f78547g;

    /* compiled from: MaybePeek.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78548a;

        /* renamed from: b  reason: collision with root package name */
        final e1<T> f78549b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78550c;

        a(io.reactivex.rxjava3.core.y<? super T> actual, e1<T> parent) {
            this.f78548a = actual;
            this.f78549b = parent;
        }

        void a() {
            try {
                this.f78549b.f78546f.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }

        void b(Throwable e4) {
            try {
                this.f78549b.f78544d.accept(e4);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                e4 = new CompositeException(e4, th);
            }
            this.f78550c = DisposableHelper.DISPOSED;
            this.f78548a.onError(e4);
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            try {
                this.f78549b.f78547g.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
            this.f78550c.dispose();
            this.f78550c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78550c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            io.reactivex.rxjava3.disposables.f fVar = this.f78550c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper) {
                return;
            }
            try {
                this.f78549b.f78545e.run();
                this.f78550c = disposableHelper;
                this.f78548a.onComplete();
                a();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                b(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f78550c == DisposableHelper.DISPOSED) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            } else {
                b(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78550c, d4)) {
                try {
                    this.f78549b.f78542b.accept(d4);
                    this.f78550c = d4;
                    this.f78548a.onSubscribe(this);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    d4.dispose();
                    this.f78550c = DisposableHelper.DISPOSED;
                    EmptyDisposable.error(th, this.f78548a);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            io.reactivex.rxjava3.disposables.f fVar = this.f78550c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper) {
                return;
            }
            try {
                this.f78549b.f78543c.accept(value);
                this.f78550c = disposableHelper;
                this.f78548a.onSuccess(value);
                a();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                b(th);
            }
        }
    }

    public e1(io.reactivex.rxjava3.core.b0<T> source, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribeCall, q7.g<? super T> onSuccessCall, q7.g<? super Throwable> onErrorCall, q7.a onCompleteCall, q7.a onAfterTerminate, q7.a onDispose) {
        super(source);
        this.f78542b = onSubscribeCall;
        this.f78543c = onSuccessCall;
        this.f78544d = onErrorCall;
        this.f78545e = onCompleteCall;
        this.f78546f = onAfterTerminate;
        this.f78547g = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this));
    }
}
