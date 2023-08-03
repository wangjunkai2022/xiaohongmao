package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: MaybeMap.java */
/* loaded from: classes4.dex */
public final class w0<T, R> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends R> f78800b;

    /* compiled from: MaybeMap.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f78801a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends R> f78802b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78803c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.rxjava3.core.y<? super R> actual, q7.o<? super T, ? extends R> mapper) {
            this.f78801a = actual;
            this.f78802b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            io.reactivex.rxjava3.disposables.f fVar = this.f78803c;
            this.f78803c = DisposableHelper.DISPOSED;
            fVar.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78803c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78801a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78801a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78803c, d4)) {
                this.f78803c = d4;
                this.f78801a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                R apply = this.f78802b.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null item");
                this.f78801a.onSuccess(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78801a.onError(th);
            }
        }
    }

    public w0(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super T, ? extends R> mapper) {
        super(source);
        this.f78800b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        this.f78452a.b(new a(observer, this.f78800b));
    }
}
