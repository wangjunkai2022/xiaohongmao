package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: ObservableReduceMaybe.java */
/* loaded from: classes4.dex */
public final class o2<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79878a;

    /* renamed from: b  reason: collision with root package name */
    final q7.c<T, T, T> f79879b;

    /* compiled from: ObservableReduceMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f79880a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<T, T, T> f79881b;

        /* renamed from: c  reason: collision with root package name */
        boolean f79882c;

        /* renamed from: d  reason: collision with root package name */
        T f79883d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79884e;

        a(io.reactivex.rxjava3.core.y<? super T> observer, q7.c<T, T, T> reducer) {
            this.f79880a = observer;
            this.f79881b = reducer;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79884e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79884e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79882c) {
                return;
            }
            this.f79882c = true;
            T t9 = this.f79883d;
            this.f79883d = null;
            if (t9 != null) {
                this.f79880a.onSuccess(t9);
            } else {
                this.f79880a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f79882c) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f79882c = true;
            this.f79883d = null;
            this.f79880a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            if (this.f79882c) {
                return;
            }
            T t9 = this.f79883d;
            if (t9 == null) {
                this.f79883d = value;
                return;
            }
            try {
                T apply = this.f79881b.apply(t9, value);
                Objects.requireNonNull(apply, "The reducer returned a null value");
                this.f79883d = apply;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79884e.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79884e, d4)) {
                this.f79884e = d4;
                this.f79880a.onSubscribe(this);
            }
        }
    }

    public o2(io.reactivex.rxjava3.core.l0<T> source, q7.c<T, T, T> reducer) {
        this.f79878a = source;
        this.f79879b = reducer;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f79878a.a(new a(observer, this.f79879b));
    }
}
