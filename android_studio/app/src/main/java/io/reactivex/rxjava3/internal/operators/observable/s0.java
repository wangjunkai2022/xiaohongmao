package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: ObservableElementAtSingle.java */
/* loaded from: classes4.dex */
public final class s0<T> extends io.reactivex.rxjava3.core.p0<T> implements io.reactivex.rxjava3.internal.fuseable.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f80072a;

    /* renamed from: b  reason: collision with root package name */
    final long f80073b;

    /* renamed from: c  reason: collision with root package name */
    final T f80074c;

    /* compiled from: ObservableElementAtSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80075a;

        /* renamed from: b  reason: collision with root package name */
        final long f80076b;

        /* renamed from: c  reason: collision with root package name */
        final T f80077c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80078d;

        /* renamed from: e  reason: collision with root package name */
        long f80079e;

        /* renamed from: f  reason: collision with root package name */
        boolean f80080f;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, long index, T defaultValue) {
            this.f80075a = actual;
            this.f80076b = index;
            this.f80077c = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80078d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80078d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80080f) {
                return;
            }
            this.f80080f = true;
            T t9 = this.f80077c;
            if (t9 != null) {
                this.f80075a.onSuccess(t9);
            } else {
                this.f80075a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80080f) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80080f = true;
            this.f80075a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80080f) {
                return;
            }
            long j4 = this.f80079e;
            if (j4 == this.f80076b) {
                this.f80080f = true;
                this.f80078d.dispose();
                this.f80075a.onSuccess(t9);
                return;
            }
            this.f80079e = j4 + 1;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80078d, d4)) {
                this.f80078d = d4;
                this.f80075a.onSubscribe(this);
            }
        }
    }

    public s0(io.reactivex.rxjava3.core.l0<T> source, long index, T defaultValue) {
        this.f80072a = source;
        this.f80073b = index;
        this.f80074c = defaultValue;
    }

    @Override // io.reactivex.rxjava3.core.p0
    public void M1(io.reactivex.rxjava3.core.s0<? super T> t9) {
        this.f80072a.a(new a(t9, this.f80073b, this.f80074c));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<T> a() {
        return io.reactivex.rxjava3.plugins.a.R(new q0(this.f80072a, this.f80073b, this.f80074c, true));
    }
}
