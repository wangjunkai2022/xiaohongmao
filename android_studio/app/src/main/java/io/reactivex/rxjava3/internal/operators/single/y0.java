package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleTimeout.java */
/* loaded from: classes4.dex */
public final class y0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80979a;

    /* renamed from: b  reason: collision with root package name */
    final long f80980b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f80981c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80982d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80983e;

    /* compiled from: SingleTimeout.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, Runnable, io.reactivex.rxjava3.disposables.f {

        /* renamed from: g  reason: collision with root package name */
        private static final long f80984g = 37497744973048446L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80985a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f80986b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0689a<T> f80987c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.core.v0<? extends T> f80988d;

        /* renamed from: e  reason: collision with root package name */
        final long f80989e;

        /* renamed from: f  reason: collision with root package name */
        final TimeUnit f80990f;

        /* compiled from: SingleTimeout.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.single.y0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0689a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f80991b = 2071387740092105509L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.s0<? super T> f80992a;

            C0689a(io.reactivex.rxjava3.core.s0<? super T> downstream) {
                this.f80992a = downstream;
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f80992a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(T t9) {
                this.f80992a.onSuccess(t9);
            }
        }

        a(io.reactivex.rxjava3.core.s0<? super T> actual, io.reactivex.rxjava3.core.v0<? extends T> other, long timeout, TimeUnit unit) {
            this.f80985a = actual;
            this.f80988d = other;
            this.f80989e = timeout;
            this.f80990f = unit;
            if (other != null) {
                this.f80987c = new C0689a<>(actual);
            } else {
                this.f80987c = null;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f80986b);
            C0689a<T> c0689a = this.f80987c;
            if (c0689a != null) {
                DisposableHelper.dispose(c0689a);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper && compareAndSet(fVar, disposableHelper)) {
                DisposableHelper.dispose(this.f80986b);
                this.f80985a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper || !compareAndSet(fVar, disposableHelper)) {
                return;
            }
            DisposableHelper.dispose(this.f80986b);
            this.f80985a.onSuccess(t9);
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper || !compareAndSet(fVar, disposableHelper)) {
                return;
            }
            if (fVar != null) {
                fVar.dispose();
            }
            io.reactivex.rxjava3.core.v0<? extends T> v0Var = this.f80988d;
            if (v0Var == null) {
                this.f80985a.onError(new TimeoutException(io.reactivex.rxjava3.internal.util.g.h(this.f80989e, this.f80990f)));
                return;
            }
            this.f80988d = null;
            v0Var.d(this.f80987c);
        }
    }

    public y0(io.reactivex.rxjava3.core.v0<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, io.reactivex.rxjava3.core.v0<? extends T> other) {
        this.f80979a = source;
        this.f80980b = timeout;
        this.f80981c = unit;
        this.f80982d = scheduler;
        this.f80983e = other;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        a aVar = new a(observer, this.f80983e, this.f80980b, this.f80981c);
        observer.onSubscribe(aVar);
        DisposableHelper.replace(aVar.f80986b, this.f80982d.g(aVar, this.f80980b, this.f80981c));
        this.f80979a.d(aVar);
    }
}
