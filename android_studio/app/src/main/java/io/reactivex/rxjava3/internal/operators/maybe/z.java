package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeFilter.java */
/* loaded from: classes4.dex */
public final class z<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f78824b;

    /* compiled from: MaybeFilter.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78825a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f78826b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78827c;

        a(io.reactivex.rxjava3.core.y<? super T> actual, q7.r<? super T> predicate) {
            this.f78825a = actual;
            this.f78826b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            io.reactivex.rxjava3.disposables.f fVar = this.f78827c;
            this.f78827c = DisposableHelper.DISPOSED;
            fVar.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78827c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78825a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78825a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78827c, d4)) {
                this.f78827c = d4;
                this.f78825a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                if (this.f78826b.test(value)) {
                    this.f78825a.onSuccess(value);
                } else {
                    this.f78825a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78825a.onError(th);
            }
        }
    }

    public z(io.reactivex.rxjava3.core.b0<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f78824b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78824b));
    }
}
