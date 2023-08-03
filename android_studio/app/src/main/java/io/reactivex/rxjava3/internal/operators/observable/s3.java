package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableTakeLastOne.java */
/* loaded from: classes4.dex */
public final class s3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableTakeLastOne.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80094a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80095b;

        /* renamed from: c  reason: collision with root package name */
        T f80096c;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f80094a = downstream;
        }

        void a() {
            T t9 = this.f80096c;
            if (t9 != null) {
                this.f80096c = null;
                this.f80094a.onNext(t9);
            }
            this.f80094a.onComplete();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80096c = null;
            this.f80095b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80095b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80096c = null;
            this.f80094a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80096c = t9;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80095b, d4)) {
                this.f80095b = d4;
                this.f80094a.onSubscribe(this);
            }
        }
    }

    public s3(io.reactivex.rxjava3.core.l0<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer));
    }
}
