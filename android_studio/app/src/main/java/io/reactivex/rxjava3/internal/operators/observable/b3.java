package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: ObservableScan.java */
/* loaded from: classes4.dex */
public final class b3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.c<T, T, T> f79215b;

    /* compiled from: ObservableScan.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79216a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<T, T, T> f79217b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79218c;

        /* renamed from: d  reason: collision with root package name */
        T f79219d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79220e;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.c<T, T, T> accumulator) {
            this.f79216a = actual;
            this.f79217b = accumulator;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79218c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79218c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79220e) {
                return;
            }
            this.f79220e = true;
            this.f79216a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79220e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79220e = true;
            this.f79216a.onError(t9);
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.Object] */
        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79220e) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79216a;
            T t10 = this.f79219d;
            if (t10 == null) {
                this.f79219d = t9;
                n0Var.onNext(t9);
                return;
            }
            try {
                T apply = this.f79217b.apply(t10, t9);
                Objects.requireNonNull(apply, "The value returned by the accumulator is null");
                this.f79219d = apply;
                n0Var.onNext(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79218c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79218c, d4)) {
                this.f79218c = d4;
                this.f79216a.onSubscribe(this);
            }
        }
    }

    public b3(io.reactivex.rxjava3.core.l0<T> source, q7.c<T, T, T> accumulator) {
        super(source);
        this.f79215b = accumulator;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f79215b));
    }
}
