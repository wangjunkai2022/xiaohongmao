package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.p0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.Optional;

/* compiled from: SingleMapOptional.java */
/* loaded from: classes4.dex */
public final class h0<T, R> extends io.reactivex.rxjava3.core.v<R> {

    /* renamed from: a  reason: collision with root package name */
    final p0<T> f76339a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, Optional<? extends R>> f76340b;

    /* compiled from: SingleMapOptional.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f76341a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76342b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76343c;

        a(io.reactivex.rxjava3.core.y<? super R> downstream, q7.o<? super T, Optional<? extends R>> mapper) {
            this.f76341a = downstream;
            this.f76342b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            io.reactivex.rxjava3.disposables.f fVar = this.f76343c;
            this.f76343c = DisposableHelper.DISPOSED;
            fVar.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76343c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76341a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76343c, d4)) {
                this.f76343c = d4;
                this.f76341a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                Optional<? extends R> apply = this.f76342b.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null item");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    this.f76341a.onSuccess((R) optional.get());
                } else {
                    this.f76341a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76341a.onError(th);
            }
        }
    }

    public h0(p0<T> source, q7.o<? super T, Optional<? extends R>> mapper) {
        this.f76339a = source;
        this.f76340b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        this.f76339a.d(new a(observer, this.f76340b));
    }
}
