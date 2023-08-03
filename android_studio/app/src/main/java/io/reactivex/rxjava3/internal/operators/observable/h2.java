package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableOnErrorComplete.java */
/* loaded from: classes4.dex */
public final class h2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super Throwable> f79501b;

    /* compiled from: ObservableOnErrorComplete.java */
    /* loaded from: classes4.dex */
    public static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79502a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super Throwable> f79503b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79504c;

        public a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.r<? super Throwable> predicate) {
            this.f79502a = actual;
            this.f79503b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79504c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79504c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79502a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            try {
                if (this.f79503b.test(e4)) {
                    this.f79502a.onComplete();
                } else {
                    this.f79502a.onError(e4);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79502a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            this.f79502a.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79504c, d4)) {
                this.f79504c = d4;
                this.f79502a.onSubscribe(this);
            }
        }
    }

    public h2(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super Throwable> predicate) {
        super(source);
        this.f79501b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f79501b));
    }
}
