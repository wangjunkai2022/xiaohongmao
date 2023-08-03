package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collector;

/* compiled from: ObservableCollectWithCollector.java */
/* loaded from: classes4.dex */
public final class q<T, A, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g0<T> f76386a;

    /* renamed from: b  reason: collision with root package name */
    final Collector<T, A, R> f76387b;

    /* compiled from: ObservableCollectWithCollector.java */
    /* loaded from: classes4.dex */
    static final class a<T, A, R> extends DeferredScalarDisposable<R> implements n0<T> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f76388o = -229544830565448758L;

        /* renamed from: j  reason: collision with root package name */
        final BiConsumer<A, T> f76389j;

        /* renamed from: k  reason: collision with root package name */
        final Function<A, R> f76390k;

        /* renamed from: l  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76391l;

        /* renamed from: m  reason: collision with root package name */
        boolean f76392m;

        /* renamed from: n  reason: collision with root package name */
        A f76393n;

        a(n0<? super R> downstream, A container, BiConsumer<A, T> accumulator, Function<A, R> finisher) {
            super(downstream);
            this.f76393n = container;
            this.f76389j = accumulator;
            this.f76390k = finisher;
        }

        @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.disposables.f
        public void dispose() {
            super.dispose();
            this.f76391l.dispose();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f76392m) {
                return;
            }
            this.f76392m = true;
            this.f76391l = DisposableHelper.DISPOSED;
            A a10 = this.f76393n;
            this.f76393n = null;
            try {
                R apply = this.f76390k.apply(a10);
                Objects.requireNonNull(apply, "The finisher returned a null value");
                complete(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76449b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f76392m) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76392m = true;
            this.f76391l = DisposableHelper.DISPOSED;
            this.f76393n = null;
            this.f76449b.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f76392m) {
                return;
            }
            try {
                this.f76389j.accept(this.f76393n, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76391l.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76391l, d4)) {
                this.f76391l = d4;
                this.f76449b.onSubscribe(this);
            }
        }
    }

    public q(io.reactivex.rxjava3.core.g0<T> source, Collector<T, A, R> collector) {
        this.f76386a = source;
        this.f76387b = collector;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@p7.e n0<? super R> observer) {
        try {
            this.f76386a.a(new a(observer, this.f76387b.supplier().get(), this.f76387b.accumulator(), this.f76387b.finisher()));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
