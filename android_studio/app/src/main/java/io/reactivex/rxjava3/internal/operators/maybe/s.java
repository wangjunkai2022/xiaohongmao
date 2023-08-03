package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeDoOnEvent.java */
/* loaded from: classes4.dex */
public final class s<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.b<? super T, ? super Throwable> f78740b;

    /* compiled from: MaybeDoOnEvent.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78741a;

        /* renamed from: b  reason: collision with root package name */
        final q7.b<? super T, ? super Throwable> f78742b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78743c;

        a(io.reactivex.rxjava3.core.y<? super T> actual, q7.b<? super T, ? super Throwable> onEvent) {
            this.f78741a = actual;
            this.f78742b = onEvent;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78743c.dispose();
            this.f78743c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78743c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78743c = DisposableHelper.DISPOSED;
            try {
                this.f78742b.accept(null, null);
                this.f78741a.onComplete();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78741a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78743c = DisposableHelper.DISPOSED;
            try {
                this.f78742b.accept(null, e4);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                e4 = new CompositeException(e4, th);
            }
            this.f78741a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78743c, d4)) {
                this.f78743c = d4;
                this.f78741a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78743c = DisposableHelper.DISPOSED;
            try {
                this.f78742b.accept(value, null);
                this.f78741a.onSuccess(value);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78741a.onError(th);
            }
        }
    }

    public s(io.reactivex.rxjava3.core.b0<T> source, q7.b<? super T, ? super Throwable> onEvent) {
        super(source);
        this.f78740b = onEvent;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78740b));
    }
}
