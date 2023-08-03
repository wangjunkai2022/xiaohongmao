package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: ObservableReduceSeedSingle.java */
/* loaded from: classes4.dex */
public final class p2<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79922a;

    /* renamed from: b  reason: collision with root package name */
    final R f79923b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<R, ? super T, R> f79924c;

    /* compiled from: ObservableReduceSeedSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super R> f79925a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<R, ? super T, R> f79926b;

        /* renamed from: c  reason: collision with root package name */
        R f79927c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79928d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.rxjava3.core.s0<? super R> actual, q7.c<R, ? super T, R> reducer, R value) {
            this.f79925a = actual;
            this.f79927c = value;
            this.f79926b = reducer;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79928d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79928d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            R r9 = this.f79927c;
            if (r9 != null) {
                this.f79927c = null;
                this.f79925a.onSuccess(r9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f79927c != null) {
                this.f79927c = null;
                this.f79925a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            R r9 = this.f79927c;
            if (r9 != null) {
                try {
                    R apply = this.f79926b.apply(r9, value);
                    Objects.requireNonNull(apply, "The reducer returned a null value");
                    this.f79927c = apply;
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f79928d.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79928d, d4)) {
                this.f79928d = d4;
                this.f79925a.onSubscribe(this);
            }
        }
    }

    public p2(io.reactivex.rxjava3.core.l0<T> source, R seed, q7.c<R, ? super T, R> reducer) {
        this.f79922a = source;
        this.f79923b = seed;
        this.f79924c = reducer;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        this.f79922a.a(new a(observer, this.f79924c, this.f79923b));
    }
}
