package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWithLatestFrom.java */
/* loaded from: classes4.dex */
public final class m4<T, U, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.c<? super T, ? super U, ? extends R> f79767b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends U> f79768c;

    /* compiled from: ObservableWithLatestFrom.java */
    /* loaded from: classes4.dex */
    static final class a<T, U, R> extends AtomicReference<U> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f79769e = -312246233408980075L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79770a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<? super T, ? super U, ? extends R> f79771b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79772c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79773d = new AtomicReference<>();

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.c<? super T, ? super U, ? extends R> combiner) {
            this.f79770a = actual;
            this.f79771b = combiner;
        }

        public void a(Throwable e4) {
            DisposableHelper.dispose(this.f79772c);
            this.f79770a.onError(e4);
        }

        public boolean b(io.reactivex.rxjava3.disposables.f o9) {
            return DisposableHelper.setOnce(this.f79773d, o9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79772c);
            DisposableHelper.dispose(this.f79773d);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f79772c.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            DisposableHelper.dispose(this.f79773d);
            this.f79770a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            DisposableHelper.dispose(this.f79773d);
            this.f79770a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            U u9 = get();
            if (u9 != null) {
                try {
                    R apply = this.f79771b.apply(t9, u9);
                    Objects.requireNonNull(apply, "The combiner returned a null value");
                    this.f79770a.onNext(apply);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    dispose();
                    this.f79770a.onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79772c, d4);
        }
    }

    /* compiled from: ObservableWithLatestFrom.java */
    /* loaded from: classes4.dex */
    final class b implements io.reactivex.rxjava3.core.n0<U> {

        /* renamed from: a  reason: collision with root package name */
        private final a<T, U, R> f79774a;

        b(a<T, U, R> parent) {
            this.f79774a = parent;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79774a.a(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(U t9) {
            this.f79774a.lazySet(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79774a.b(d4);
        }
    }

    public m4(io.reactivex.rxjava3.core.l0<T> source, q7.c<? super T, ? super U, ? extends R> combiner, io.reactivex.rxjava3.core.l0<? extends U> other) {
        super(source);
        this.f79767b = combiner;
        this.f79768c = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super R> t9) {
        io.reactivex.rxjava3.observers.m mVar = new io.reactivex.rxjava3.observers.m(t9);
        a aVar = new a(mVar, this.f79767b);
        mVar.onSubscribe(aVar);
        this.f79768c.a(new b(aVar));
        this.f79141a.a(aVar);
    }
}
