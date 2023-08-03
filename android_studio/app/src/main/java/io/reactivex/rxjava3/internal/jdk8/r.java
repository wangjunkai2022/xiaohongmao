package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.p0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collector;

/* compiled from: ObservableCollectWithCollectorSingle.java */
/* loaded from: classes4.dex */
public final class r<T, A, R> extends p0<R> implements io.reactivex.rxjava3.internal.fuseable.f<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g0<T> f76394a;

    /* renamed from: b  reason: collision with root package name */
    final Collector<T, A, R> f76395b;

    /* compiled from: ObservableCollectWithCollectorSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, A, R> implements n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final s0<? super R> f76396a;

        /* renamed from: b  reason: collision with root package name */
        final BiConsumer<A, T> f76397b;

        /* renamed from: c  reason: collision with root package name */
        final Function<A, R> f76398c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76399d;

        /* renamed from: e  reason: collision with root package name */
        boolean f76400e;

        /* renamed from: f  reason: collision with root package name */
        A f76401f;

        a(s0<? super R> downstream, A container, BiConsumer<A, T> accumulator, Function<A, R> finisher) {
            this.f76396a = downstream;
            this.f76401f = container;
            this.f76397b = accumulator;
            this.f76398c = finisher;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76399d.dispose();
            this.f76399d = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76399d == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f76400e) {
                return;
            }
            this.f76400e = true;
            this.f76399d = DisposableHelper.DISPOSED;
            A a10 = this.f76401f;
            this.f76401f = null;
            try {
                R apply = this.f76398c.apply(a10);
                Objects.requireNonNull(apply, "The finisher returned a null value");
                this.f76396a.onSuccess(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76396a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f76400e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76400e = true;
            this.f76399d = DisposableHelper.DISPOSED;
            this.f76401f = null;
            this.f76396a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f76400e) {
                return;
            }
            try {
                this.f76397b.accept(this.f76401f, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76399d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76399d, d4)) {
                this.f76399d = d4;
                this.f76396a.onSubscribe(this);
            }
        }
    }

    public r(io.reactivex.rxjava3.core.g0<T> source, Collector<T, A, R> collector) {
        this.f76394a = source;
        this.f76395b = collector;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(@p7.e s0<? super R> observer) {
        try {
            this.f76394a.a(new a(observer, this.f76395b.supplier().get(), this.f76395b.accumulator(), this.f76395b.finisher()));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<R> a() {
        return new q(this.f76394a, this.f76395b);
    }
}
