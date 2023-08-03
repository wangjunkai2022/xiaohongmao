package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Stream;

/* compiled from: ObservableFlatMapStream.java */
/* loaded from: classes4.dex */
public final class t<T, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g0<T> f76404a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends Stream<? extends R>> f76405b;

    /* compiled from: ObservableFlatMapStream.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: f  reason: collision with root package name */
        private static final long f76406f = -5127032662980523968L;

        /* renamed from: a  reason: collision with root package name */
        final n0<? super R> f76407a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends Stream<? extends R>> f76408b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76409c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f76410d;

        /* renamed from: e  reason: collision with root package name */
        boolean f76411e;

        a(n0<? super R> downstream, q7.o<? super T, ? extends Stream<? extends R>> mapper) {
            this.f76407a = downstream;
            this.f76408b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76410d = true;
            this.f76409c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76410d;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f76411e) {
                return;
            }
            this.f76411e = true;
            this.f76407a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(@p7.e Throwable e4) {
            if (this.f76411e) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f76411e = true;
            this.f76407a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(@p7.e T t9) {
            if (this.f76411e) {
                return;
            }
            try {
                Stream<? extends R> apply = this.f76408b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Stream");
                Stream<? extends R> stream = apply;
                Iterator<? extends R> it = stream.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (this.f76410d) {
                        this.f76411e = true;
                        break;
                    } else {
                        R next = it.next();
                        Objects.requireNonNull(next, "The Stream's Iterator.next returned a null value");
                        if (this.f76410d) {
                            this.f76411e = true;
                            break;
                        }
                        this.f76407a.onNext(next);
                        if (this.f76410d) {
                            this.f76411e = true;
                            break;
                        }
                    }
                }
                stream.close();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76409c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76409c, d4)) {
                this.f76409c = d4;
                this.f76407a.onSubscribe(this);
            }
        }
    }

    public t(io.reactivex.rxjava3.core.g0<T> source, q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        this.f76404a = source;
        this.f76405b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        io.reactivex.rxjava3.core.g0<T> g0Var = this.f76404a;
        if (g0Var instanceof q7.s) {
            Stream<? extends R> stream = null;
            try {
                Object obj = ((q7.s) g0Var).get();
                if (obj != null) {
                    Stream<? extends R> apply = this.f76405b.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null Stream");
                    stream = apply;
                }
                if (stream != null) {
                    v.B8(observer, stream);
                    return;
                } else {
                    EmptyDisposable.complete(observer);
                    return;
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        }
        g0Var.a(new a(observer, this.f76405b));
    }
}
