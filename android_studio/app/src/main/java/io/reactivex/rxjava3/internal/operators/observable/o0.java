package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableDoOnEach.java */
/* loaded from: classes4.dex */
public final class o0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super T> f79865b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super Throwable> f79866c;

    /* renamed from: d  reason: collision with root package name */
    final q7.a f79867d;

    /* renamed from: e  reason: collision with root package name */
    final q7.a f79868e;

    /* compiled from: ObservableDoOnEach.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79869a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super T> f79870b;

        /* renamed from: c  reason: collision with root package name */
        final q7.g<? super Throwable> f79871c;

        /* renamed from: d  reason: collision with root package name */
        final q7.a f79872d;

        /* renamed from: e  reason: collision with root package name */
        final q7.a f79873e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79874f;

        /* renamed from: g  reason: collision with root package name */
        boolean f79875g;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.g<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.a onAfterTerminate) {
            this.f79869a = actual;
            this.f79870b = onNext;
            this.f79871c = onError;
            this.f79872d = onComplete;
            this.f79873e = onAfterTerminate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79874f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79874f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79875g) {
                return;
            }
            try {
                this.f79872d.run();
                this.f79875g = true;
                this.f79869a.onComplete();
                try {
                    this.f79873e.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79875g) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79875g = true;
            try {
                this.f79871c.accept(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                t9 = new CompositeException(t9, th);
            }
            this.f79869a.onError(t9);
            try {
                this.f79873e.run();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                io.reactivex.rxjava3.plugins.a.Y(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79875g) {
                return;
            }
            try {
                this.f79870b.accept(t9);
                this.f79869a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79874f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79874f, d4)) {
                this.f79874f = d4;
                this.f79869a.onSubscribe(this);
            }
        }
    }

    public o0(io.reactivex.rxjava3.core.l0<T> source, q7.g<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.a onAfterTerminate) {
        super(source);
        this.f79865b = onNext;
        this.f79866c = onError;
        this.f79867d = onComplete;
        this.f79868e = onAfterTerminate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f79865b, this.f79866c, this.f79867d, this.f79868e));
    }
}
