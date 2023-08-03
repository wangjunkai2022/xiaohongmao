package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMapCompletable.java */
/* loaded from: classes4.dex */
public final class x0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f80384b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f80385c;

    /* compiled from: ObservableFlatMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f80386i = 8443155186132538303L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80387b;

        /* renamed from: d  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f80389d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f80390e;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80392g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f80393h;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f80388c = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f80391f = new io.reactivex.rxjava3.disposables.c();

        /* compiled from: ObservableFlatMapCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.x0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0678a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f80394b = 8606673141535671828L;

            C0678a() {
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                a.this.a(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.b(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> observer, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
            this.f80387b = observer;
            this.f80389d = mapper;
            this.f80390e = delayErrors;
            lazySet(1);
        }

        void a(a<T>.C0678a inner) {
            this.f80391f.c(inner);
            onComplete();
        }

        void b(a<T>.C0678a inner, Throwable e4) {
            this.f80391f.c(inner);
            onError(e4);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80393h = true;
            this.f80392g.dispose();
            this.f80391f.dispose();
            this.f80388c.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80392g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (decrementAndGet() == 0) {
                this.f80388c.tryTerminateConsumer(this.f80387b);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f80388c.tryAddThrowableOrReport(e4)) {
                if (this.f80390e) {
                    if (decrementAndGet() == 0) {
                        this.f80388c.tryTerminateConsumer(this.f80387b);
                        return;
                    }
                    return;
                }
                this.f80393h = true;
                this.f80392g.dispose();
                this.f80391f.dispose();
                this.f80388c.tryTerminateConsumer(this.f80387b);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            try {
                io.reactivex.rxjava3.core.g apply = this.f80389d.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                io.reactivex.rxjava3.core.g gVar = apply;
                getAndIncrement();
                C0678a c0678a = new C0678a();
                if (this.f80393h || !this.f80391f.b(c0678a)) {
                    return;
                }
                gVar.d(c0678a);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80392g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80392g, d4)) {
                this.f80392g = d4;
                this.f80387b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return mode & 2;
        }
    }

    public x0(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
        super(source);
        this.f80384b = mapper;
        this.f80385c = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f80384b, this.f80385c));
    }
}
