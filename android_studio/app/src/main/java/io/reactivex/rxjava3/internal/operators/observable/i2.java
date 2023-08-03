package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;

/* compiled from: ObservableOnErrorNext.java */
/* loaded from: classes4.dex */
public final class i2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.l0<? extends T>> f79547b;

    /* compiled from: ObservableOnErrorNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79548a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.l0<? extends T>> f79549b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f79550c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        boolean f79551d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79552e;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.l0<? extends T>> nextSupplier) {
            this.f79548a = actual;
            this.f79549b = nextSupplier;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79552e) {
                return;
            }
            this.f79552e = true;
            this.f79551d = true;
            this.f79548a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79551d) {
                if (this.f79552e) {
                    io.reactivex.rxjava3.plugins.a.Y(t9);
                    return;
                } else {
                    this.f79548a.onError(t9);
                    return;
                }
            }
            this.f79551d = true;
            try {
                io.reactivex.rxjava3.core.l0<? extends T> apply = this.f79549b.apply(t9);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("Observable is null");
                    nullPointerException.initCause(t9);
                    this.f79548a.onError(nullPointerException);
                    return;
                }
                apply.a(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79548a.onError(new CompositeException(t9, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79552e) {
                return;
            }
            this.f79548a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79550c.replace(d4);
        }
    }

    public i2(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.l0<? extends T>> nextSupplier) {
        super(source);
        this.f79547b = nextSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        a aVar = new a(t9, this.f79547b);
        t9.onSubscribe(aVar.f79550c);
        this.f79141a.a(aVar);
    }
}
