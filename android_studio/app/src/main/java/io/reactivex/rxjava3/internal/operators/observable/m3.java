package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableSkipWhile.java */
/* loaded from: classes4.dex */
public final class m3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f79762b;

    /* compiled from: ObservableSkipWhile.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79763a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f79764b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79765c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79766d;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.r<? super T> predicate) {
            this.f79763a = actual;
            this.f79764b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79765c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79765c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79763a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79763a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79766d) {
                this.f79763a.onNext(t9);
                return;
            }
            try {
                if (this.f79764b.test(t9)) {
                    return;
                }
                this.f79766d = true;
                this.f79763a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79765c.dispose();
                this.f79763a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79765c, d4)) {
                this.f79765c = d4;
                this.f79763a.onSubscribe(this);
            }
        }
    }

    public m3(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f79762b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f79762b));
    }
}
