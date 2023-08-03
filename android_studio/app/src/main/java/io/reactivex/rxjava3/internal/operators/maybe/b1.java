package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeOnErrorComplete.java */
/* loaded from: classes4.dex */
public final class b1<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super Throwable> f78478b;

    /* compiled from: MaybeOnErrorComplete.java */
    /* loaded from: classes4.dex */
    public static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78479a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super Throwable> f78480b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78481c;

        public a(io.reactivex.rxjava3.core.y<? super T> actual, q7.r<? super Throwable> predicate) {
            this.f78479a = actual;
            this.f78480b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78481c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78481c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78479a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                if (this.f78480b.test(e4)) {
                    this.f78479a.onComplete();
                } else {
                    this.f78479a.onError(e4);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78479a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78481c, d4)) {
                this.f78481c = d4;
                this.f78479a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78479a.onSuccess(value);
        }
    }

    public b1(io.reactivex.rxjava3.core.b0<T> source, q7.r<? super Throwable> predicate) {
        super(source);
        this.f78478b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78478b));
    }
}
