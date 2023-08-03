package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.Optional;

/* compiled from: MaybeMapOptional.java */
/* loaded from: classes4.dex */
public final class p<T, R> extends io.reactivex.rxjava3.core.v<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v<T> f76381a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, Optional<? extends R>> f76382b;

    /* compiled from: MaybeMapOptional.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f76383a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76384b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76385c;

        a(io.reactivex.rxjava3.core.y<? super R> downstream, q7.o<? super T, Optional<? extends R>> mapper) {
            this.f76383a = downstream;
            this.f76384b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            io.reactivex.rxjava3.disposables.f fVar = this.f76385c;
            this.f76385c = DisposableHelper.DISPOSED;
            fVar.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76385c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76383a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76383a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76385c, d4)) {
                this.f76385c = d4;
                this.f76383a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                Optional<? extends R> apply = this.f76384b.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null item");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    this.f76383a.onSuccess((R) optional.get());
                } else {
                    this.f76383a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76383a.onError(th);
            }
        }
    }

    public p(io.reactivex.rxjava3.core.v<T> source, q7.o<? super T, Optional<? extends R>> mapper) {
        this.f76381a = source;
        this.f76382b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        this.f76381a.b(new a(observer, this.f76382b));
    }
}
