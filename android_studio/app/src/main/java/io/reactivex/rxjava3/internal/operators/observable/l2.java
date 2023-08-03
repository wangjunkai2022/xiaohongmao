package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservablePublishSelector.java */
/* loaded from: classes4.dex */
public final class l2<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super io.reactivex.rxjava3.core.g0<T>, ? extends io.reactivex.rxjava3.core.l0<R>> f79664b;

    /* compiled from: ObservablePublishSelector.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.subjects.e<T> f79665a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79666b;

        a(io.reactivex.rxjava3.subjects.e<T> subject, AtomicReference<io.reactivex.rxjava3.disposables.f> target) {
            this.f79665a = subject;
            this.f79666b = target;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79665a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f79665a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            this.f79665a.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79666b, d4);
        }
    }

    /* compiled from: ObservablePublishSelector.java */
    /* loaded from: classes4.dex */
    static final class b<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<R>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f79667c = 854110278590336484L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79668a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79669b;

        b(io.reactivex.rxjava3.core.n0<? super R> downstream) {
            this.f79668a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79669b.dispose();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79669b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            DisposableHelper.dispose(this);
            this.f79668a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            DisposableHelper.dispose(this);
            this.f79668a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(R value) {
            this.f79668a.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79669b, d4)) {
                this.f79669b = d4;
                this.f79668a.onSubscribe(this);
            }
        }
    }

    public l2(final io.reactivex.rxjava3.core.l0<T> source, final q7.o<? super io.reactivex.rxjava3.core.g0<T>, ? extends io.reactivex.rxjava3.core.l0<R>> selector) {
        super(source);
        this.f79664b = selector;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        io.reactivex.rxjava3.subjects.e G8 = io.reactivex.rxjava3.subjects.e.G8();
        try {
            io.reactivex.rxjava3.core.l0<R> apply = this.f79664b.apply(G8);
            Objects.requireNonNull(apply, "The selector returned a null ObservableSource");
            io.reactivex.rxjava3.core.l0<R> l0Var = apply;
            b bVar = new b(observer);
            l0Var.a(bVar);
            this.f79141a.a(new a(G8, bVar));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
