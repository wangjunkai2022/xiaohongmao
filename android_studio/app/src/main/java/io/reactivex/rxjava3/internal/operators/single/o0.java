package io.reactivex.rxjava3.internal.operators.single;

import java.util.Objects;

/* compiled from: SingleMap.java */
/* loaded from: classes4.dex */
public final class o0<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80884a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends R> f80885b;

    /* compiled from: SingleMap.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super R> f80886a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends R> f80887b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.rxjava3.core.s0<? super R> t9, q7.o<? super T, ? extends R> mapper) {
            this.f80886a = t9;
            this.f80887b = mapper;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80886a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80886a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                R apply = this.f80887b.apply(value);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                this.f80886a.onSuccess(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    public o0(io.reactivex.rxjava3.core.v0<? extends T> source, q7.o<? super T, ? extends R> mapper) {
        this.f80884a = source;
        this.f80885b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super R> t9) {
        this.f80884a.d(new a(t9, this.f80885b));
    }
}
