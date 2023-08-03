package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: ObservableCollectSingle.java */
/* loaded from: classes4.dex */
public final class s<T, U> extends io.reactivex.rxjava3.core.p0<U> implements io.reactivex.rxjava3.internal.fuseable.f<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f80064a;

    /* renamed from: b  reason: collision with root package name */
    final q7.s<? extends U> f80065b;

    /* renamed from: c  reason: collision with root package name */
    final q7.b<? super U, ? super T> f80066c;

    /* compiled from: ObservableCollectSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super U> f80067a;

        /* renamed from: b  reason: collision with root package name */
        final q7.b<? super U, ? super T> f80068b;

        /* renamed from: c  reason: collision with root package name */
        final U f80069c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80070d;

        /* renamed from: e  reason: collision with root package name */
        boolean f80071e;

        a(io.reactivex.rxjava3.core.s0<? super U> actual, U u9, q7.b<? super U, ? super T> collector) {
            this.f80067a = actual;
            this.f80068b = collector;
            this.f80069c = u9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80070d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80070d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80071e) {
                return;
            }
            this.f80071e = true;
            this.f80067a.onSuccess((U) this.f80069c);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80071e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80071e = true;
            this.f80067a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80071e) {
                return;
            }
            try {
                this.f80068b.accept((U) this.f80069c, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80070d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80070d, d4)) {
                this.f80070d = d4;
                this.f80067a.onSubscribe(this);
            }
        }
    }

    public s(io.reactivex.rxjava3.core.l0<T> source, q7.s<? extends U> initialSupplier, q7.b<? super U, ? super T> collector) {
        this.f80064a = source;
        this.f80065b = initialSupplier;
        this.f80066c = collector;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super U> t9) {
        try {
            U u9 = this.f80065b.get();
            Objects.requireNonNull(u9, "The initialSupplier returned a null value");
            this.f80064a.a(new a(t9, u9, this.f80066c));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, t9);
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<U> a() {
        return io.reactivex.rxjava3.plugins.a.R(new r(this.f80064a, this.f80065b, this.f80066c));
    }
}
