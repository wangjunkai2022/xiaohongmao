package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: ObservableScanSeed.java */
/* loaded from: classes4.dex */
public final class c3<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.c<R, ? super T, R> f79268b;

    /* renamed from: c  reason: collision with root package name */
    final q7.s<R> f79269c;

    /* compiled from: ObservableScanSeed.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79270a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<R, ? super T, R> f79271b;

        /* renamed from: c  reason: collision with root package name */
        R f79272c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79273d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79274e;

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.c<R, ? super T, R> accumulator, R value) {
            this.f79270a = actual;
            this.f79271b = accumulator;
            this.f79272c = value;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79273d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79273d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79274e) {
                return;
            }
            this.f79274e = true;
            this.f79270a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79274e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79274e = true;
            this.f79270a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79274e) {
                return;
            }
            try {
                R apply = this.f79271b.apply(this.f79272c, t9);
                Objects.requireNonNull(apply, "The accumulator returned a null value");
                this.f79272c = apply;
                this.f79270a.onNext(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79273d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79273d, d4)) {
                this.f79273d = d4;
                this.f79270a.onSubscribe(this);
                this.f79270a.onNext((R) this.f79272c);
            }
        }
    }

    public c3(io.reactivex.rxjava3.core.l0<T> source, q7.s<R> seedSupplier, q7.c<R, ? super T, R> accumulator) {
        super(source);
        this.f79268b = accumulator;
        this.f79269c = seedSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super R> t9) {
        try {
            R r9 = this.f79269c.get();
            Objects.requireNonNull(r9, "The seed supplied is null");
            this.f79141a.a(new a(t9, this.f79268b, r9));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, t9);
        }
    }
}
