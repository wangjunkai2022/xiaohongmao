package io.reactivex.rxjava3.internal.operators.completable;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: CompletableTimeout.java */
/* loaded from: classes4.dex */
public final class o0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76692a;

    /* renamed from: b  reason: collision with root package name */
    final long f76693b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f76694c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f76695d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76696e;

    /* compiled from: CompletableTimeout.java */
    /* loaded from: classes4.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f76697a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76698b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76699c;

        /* compiled from: CompletableTimeout.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.completable.o0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0624a implements io.reactivex.rxjava3.core.d {
            C0624a() {
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                a.this.f76698b.dispose();
                a.this.f76699c.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.f76698b.dispose();
                a.this.f76699c.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                a.this.f76698b.b(d4);
            }
        }

        a(AtomicBoolean once, io.reactivex.rxjava3.disposables.c set, io.reactivex.rxjava3.core.d observer) {
            this.f76697a = once;
            this.f76698b = set;
            this.f76699c = observer;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f76697a.compareAndSet(false, true)) {
                this.f76698b.e();
                io.reactivex.rxjava3.core.g gVar = o0.this.f76696e;
                if (gVar == null) {
                    io.reactivex.rxjava3.core.d dVar = this.f76699c;
                    o0 o0Var = o0.this;
                    dVar.onError(new TimeoutException(io.reactivex.rxjava3.internal.util.g.h(o0Var.f76693b, o0Var.f76694c)));
                    return;
                }
                gVar.d(new C0624a());
            }
        }
    }

    /* compiled from: CompletableTimeout.java */
    /* loaded from: classes4.dex */
    static final class b implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.disposables.c f76702a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f76703b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.d f76704c;

        b(io.reactivex.rxjava3.disposables.c set, AtomicBoolean once, io.reactivex.rxjava3.core.d observer) {
            this.f76702a = set;
            this.f76703b = once;
            this.f76704c = observer;
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (this.f76703b.compareAndSet(false, true)) {
                this.f76702a.dispose();
                this.f76704c.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f76703b.compareAndSet(false, true)) {
                this.f76702a.dispose();
                this.f76704c.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76702a.b(d4);
        }
    }

    public o0(io.reactivex.rxjava3.core.g source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, io.reactivex.rxjava3.core.g other) {
        this.f76692a = source;
        this.f76693b = timeout;
        this.f76694c = unit;
        this.f76695d = scheduler;
        this.f76696e = other;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(final io.reactivex.rxjava3.core.d observer) {
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        observer.onSubscribe(cVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        cVar.b(this.f76695d.g(new a(atomicBoolean, cVar, observer), this.f76693b, this.f76694c));
        this.f76692a.d(new b(cVar, atomicBoolean, observer));
    }
}
