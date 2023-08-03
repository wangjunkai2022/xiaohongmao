package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Collection;

/* compiled from: ObservableToListSingle.java */
/* loaded from: classes4.dex */
public final class e4<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.core.p0<U> implements io.reactivex.rxjava3.internal.fuseable.f<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79402a;

    /* renamed from: b  reason: collision with root package name */
    final q7.s<U> f79403b;

    /* compiled from: ObservableToListSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super U> f79404a;

        /* renamed from: b  reason: collision with root package name */
        U f79405b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79406c;

        a(io.reactivex.rxjava3.core.s0<? super U> actual, U collection) {
            this.f79404a = actual;
            this.f79405b = collection;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79406c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79406c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            U u9 = this.f79405b;
            this.f79405b = null;
            this.f79404a.onSuccess(u9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79405b = null;
            this.f79404a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79405b.add(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79406c, d4)) {
                this.f79406c = d4;
                this.f79404a.onSubscribe(this);
            }
        }
    }

    public e4(io.reactivex.rxjava3.core.l0<T> source, final int defaultCapacityHint) {
        this.f79402a = source;
        this.f79403b = io.reactivex.rxjava3.internal.functions.a.f(defaultCapacityHint);
    }

    @Override // io.reactivex.rxjava3.core.p0
    public void M1(io.reactivex.rxjava3.core.s0<? super U> t9) {
        try {
            this.f79402a.a(new a(t9, (Collection) io.reactivex.rxjava3.internal.util.g.d(this.f79403b.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, t9);
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<U> a() {
        return io.reactivex.rxjava3.plugins.a.R(new d4(this.f79402a, this.f79403b));
    }

    public e4(io.reactivex.rxjava3.core.l0<T> source, q7.s<U> collectionSupplier) {
        this.f79402a = source;
        this.f79403b = collectionSupplier;
    }
}
