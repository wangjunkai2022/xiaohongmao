package io.reactivex.internal.operators.completable;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: CompletableTimeout.java */
/* loaded from: classes3.dex */
public final class m0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71417a;

    /* renamed from: b  reason: collision with root package name */
    final long f71418b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f71419c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f71420d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.g f71421e;

    /* compiled from: CompletableTimeout.java */
    /* loaded from: classes3.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f71422a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.b f71423b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.d f71424c;

        /* compiled from: CompletableTimeout.java */
        /* renamed from: io.reactivex.internal.operators.completable.m0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0546a implements io.reactivex.d {
            C0546a() {
            }

            @Override // io.reactivex.d
            public void onComplete() {
                a.this.f71423b.dispose();
                a.this.f71424c.onComplete();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                a.this.f71423b.dispose();
                a.this.f71424c.onError(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                a.this.f71423b.b(cVar);
            }
        }

        a(AtomicBoolean atomicBoolean, io.reactivex.disposables.b bVar, io.reactivex.d dVar) {
            this.f71422a = atomicBoolean;
            this.f71423b = bVar;
            this.f71424c = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f71422a.compareAndSet(false, true)) {
                this.f71423b.e();
                io.reactivex.g gVar = m0.this.f71421e;
                if (gVar == null) {
                    io.reactivex.d dVar = this.f71424c;
                    m0 m0Var = m0.this;
                    dVar.onError(new TimeoutException(io.reactivex.internal.util.g.e(m0Var.f71418b, m0Var.f71419c)));
                    return;
                }
                gVar.d(new C0546a());
            }
        }
    }

    /* compiled from: CompletableTimeout.java */
    /* loaded from: classes3.dex */
    static final class b implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.disposables.b f71427a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f71428b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.d f71429c;

        b(io.reactivex.disposables.b bVar, AtomicBoolean atomicBoolean, io.reactivex.d dVar) {
            this.f71427a = bVar;
            this.f71428b = atomicBoolean;
            this.f71429c = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f71428b.compareAndSet(false, true)) {
                this.f71427a.dispose();
                this.f71429c.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f71428b.compareAndSet(false, true)) {
                this.f71427a.dispose();
                this.f71429c.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71427a.b(cVar);
        }
    }

    public m0(io.reactivex.g gVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, io.reactivex.g gVar2) {
        this.f71417a = gVar;
        this.f71418b = j4;
        this.f71419c = timeUnit;
        this.f71420d = h0Var;
        this.f71421e = gVar2;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        dVar.onSubscribe(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        bVar.b(this.f71420d.g(new a(atomicBoolean, bVar, dVar), this.f71418b, this.f71419c));
        this.f71417a.d(new b(bVar, atomicBoolean, dVar));
    }
}
