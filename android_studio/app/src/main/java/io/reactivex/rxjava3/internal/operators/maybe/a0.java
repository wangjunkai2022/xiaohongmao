package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeFilterSingle.java */
/* loaded from: classes4.dex */
public final class a0<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f78453a;

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f78454b;

    /* compiled from: MaybeFilterSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78455a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f78456b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78457c;

        a(io.reactivex.rxjava3.core.y<? super T> actual, q7.r<? super T> predicate) {
            this.f78455a = actual;
            this.f78456b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            io.reactivex.rxjava3.disposables.f fVar = this.f78457c;
            this.f78457c = DisposableHelper.DISPOSED;
            fVar.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78457c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78455a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78457c, d4)) {
                this.f78457c = d4;
                this.f78455a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                if (this.f78456b.test(value)) {
                    this.f78455a.onSuccess(value);
                } else {
                    this.f78455a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78455a.onError(th);
            }
        }
    }

    public a0(io.reactivex.rxjava3.core.v0<T> source, q7.r<? super T> predicate) {
        this.f78453a = source;
        this.f78454b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78453a.d(new a(observer, this.f78454b));
    }
}
