package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeDoAfterSuccess.java */
/* loaded from: classes4.dex */
public final class q<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super T> f78721b;

    /* compiled from: MaybeDoAfterSuccess.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78722a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super T> f78723b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78724c;

        a(io.reactivex.rxjava3.core.y<? super T> actual, q7.g<? super T> onAfterSuccess) {
            this.f78722a = actual;
            this.f78723b = onAfterSuccess;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78724c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78724c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78722a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78722a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78724c, d4)) {
                this.f78724c = d4;
                this.f78722a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            this.f78722a.onSuccess(t9);
            try {
                this.f78723b.accept(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }

    public q(io.reactivex.rxjava3.core.b0<T> source, q7.g<? super T> onAfterSuccess) {
        super(source);
        this.f78721b = onAfterSuccess;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78721b));
    }
}
