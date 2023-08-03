package io.reactivex.rxjava3.internal.operators.single;

/* compiled from: SingleContains.java */
/* loaded from: classes4.dex */
public final class c<T> extends io.reactivex.rxjava3.core.p0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80734a;

    /* renamed from: b  reason: collision with root package name */
    final Object f80735b;

    /* renamed from: c  reason: collision with root package name */
    final q7.d<Object, Object> f80736c;

    /* compiled from: SingleContains.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.s0<? super Boolean> f80737a;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
            this.f80737a = observer;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80737a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80737a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T v9) {
            try {
                c cVar = c.this;
                this.f80737a.onSuccess(Boolean.valueOf(cVar.f80736c.a(v9, cVar.f80735b)));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80737a.onError(th);
            }
        }
    }

    public c(io.reactivex.rxjava3.core.v0<T> source, Object value, q7.d<Object, Object> comparer) {
        this.f80734a = source;
        this.f80735b = value;
        this.f80736c = comparer;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        this.f80734a.d(new a(observer));
    }
}
