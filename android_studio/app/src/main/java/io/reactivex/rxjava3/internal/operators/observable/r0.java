package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableElementAtMaybe.java */
/* loaded from: classes4.dex */
public final class r0<T> extends io.reactivex.rxjava3.core.v<T> implements io.reactivex.rxjava3.internal.fuseable.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f80006a;

    /* renamed from: b  reason: collision with root package name */
    final long f80007b;

    /* compiled from: ObservableElementAtMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f80008a;

        /* renamed from: b  reason: collision with root package name */
        final long f80009b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80010c;

        /* renamed from: d  reason: collision with root package name */
        long f80011d;

        /* renamed from: e  reason: collision with root package name */
        boolean f80012e;

        a(io.reactivex.rxjava3.core.y<? super T> actual, long index) {
            this.f80008a = actual;
            this.f80009b = index;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80010c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80010c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80012e) {
                return;
            }
            this.f80012e = true;
            this.f80008a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80012e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80012e = true;
            this.f80008a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80012e) {
                return;
            }
            long j4 = this.f80011d;
            if (j4 == this.f80009b) {
                this.f80012e = true;
                this.f80010c.dispose();
                this.f80008a.onSuccess(t9);
                return;
            }
            this.f80011d = j4 + 1;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80010c, d4)) {
                this.f80010c = d4;
                this.f80008a.onSubscribe(this);
            }
        }
    }

    public r0(io.reactivex.rxjava3.core.l0<T> source, long index) {
        this.f80006a = source;
        this.f80007b = index;
    }

    @Override // io.reactivex.rxjava3.core.v
    public void U1(io.reactivex.rxjava3.core.y<? super T> t9) {
        this.f80006a.a(new a(t9, this.f80007b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<T> a() {
        return io.reactivex.rxjava3.plugins.a.R(new q0(this.f80006a, this.f80007b, null, false));
    }
}
