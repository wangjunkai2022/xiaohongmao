package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.Objects;

/* compiled from: ObservableDistinct.java */
/* loaded from: classes4.dex */
public final class k0<T, K> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, K> f79623b;

    /* renamed from: c  reason: collision with root package name */
    final q7.s<? extends Collection<? super K>> f79624c;

    /* compiled from: ObservableDistinct.java */
    /* loaded from: classes4.dex */
    static final class a<T, K> extends io.reactivex.rxjava3.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final Collection<? super K> f79625f;

        /* renamed from: g  reason: collision with root package name */
        final q7.o<? super T, K> f79626g;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.o<? super T, K> keySelector, Collection<? super K> collection) {
            super(actual);
            this.f79626g = keySelector;
            this.f79625f = collection;
        }

        @Override // io.reactivex.rxjava3.internal.observers.a, io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f79625f.clear();
            super.clear();
        }

        @Override // io.reactivex.rxjava3.internal.observers.a, io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f76473d) {
                return;
            }
            this.f76473d = true;
            this.f79625f.clear();
            this.f76470a.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.observers.a, io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f76473d) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f76473d = true;
            this.f79625f.clear();
            this.f76470a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            if (this.f76473d) {
                return;
            }
            if (this.f76474e == 0) {
                try {
                    K apply = this.f79626g.apply(value);
                    Objects.requireNonNull(apply, "The keySelector returned a null key");
                    if (this.f79625f.add(apply)) {
                        this.f76470a.onNext(value);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    f(th);
                    return;
                }
            }
            this.f76470a.onNext(null);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll;
            Collection<? super K> collection;
            Object obj;
            do {
                poll = this.f76472c.poll();
                if (poll == null) {
                    break;
                }
                collection = this.f79625f;
                obj = (K) this.f79626g.apply(poll);
                Objects.requireNonNull(obj, "The keySelector returned a null key");
            } while (!collection.add(obj));
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public k0(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, K> keySelector, q7.s<? extends Collection<? super K>> collectionSupplier) {
        super(source);
        this.f79623b = keySelector;
        this.f79624c = collectionSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        try {
            this.f79141a.a(new a(observer, this.f79623b, (Collection) io.reactivex.rxjava3.internal.util.g.d(this.f79624c.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
