package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: ObservableCollect.java */
/* loaded from: classes4.dex */
public final class r<T, U> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final q7.s<? extends U> f79999b;

    /* renamed from: c  reason: collision with root package name */
    final q7.b<? super U, ? super T> f80000c;

    /* compiled from: ObservableCollect.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super U> f80001a;

        /* renamed from: b  reason: collision with root package name */
        final q7.b<? super U, ? super T> f80002b;

        /* renamed from: c  reason: collision with root package name */
        final U f80003c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80004d;

        /* renamed from: e  reason: collision with root package name */
        boolean f80005e;

        a(io.reactivex.rxjava3.core.n0<? super U> actual, U u9, q7.b<? super U, ? super T> collector) {
            this.f80001a = actual;
            this.f80002b = collector;
            this.f80003c = u9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80004d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80004d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80005e) {
                return;
            }
            this.f80005e = true;
            this.f80001a.onNext((U) this.f80003c);
            this.f80001a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80005e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80005e = true;
            this.f80001a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80005e) {
                return;
            }
            try {
                this.f80002b.accept((U) this.f80003c, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80004d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80004d, d4)) {
                this.f80004d = d4;
                this.f80001a.onSubscribe(this);
            }
        }
    }

    public r(io.reactivex.rxjava3.core.l0<T> source, q7.s<? extends U> initialSupplier, q7.b<? super U, ? super T> collector) {
        super(source);
        this.f79999b = initialSupplier;
        this.f80000c = collector;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super U> t9) {
        try {
            U u9 = this.f79999b.get();
            Objects.requireNonNull(u9, "The initialSupplier returned a null value");
            this.f79141a.a(new a(t9, u9, this.f80000c));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, t9);
        }
    }
}
