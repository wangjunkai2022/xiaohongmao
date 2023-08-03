package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SchedulerWhen.java */
/* loaded from: classes4.dex */
public class m extends h0 implements io.reactivex.disposables.c {

    /* renamed from: f  reason: collision with root package name */
    static final io.reactivex.disposables.c f75726f = new g();

    /* renamed from: g  reason: collision with root package name */
    static final io.reactivex.disposables.c f75727g = io.reactivex.disposables.d.a();

    /* renamed from: c  reason: collision with root package name */
    private final h0 f75728c;

    /* renamed from: d  reason: collision with root package name */
    private final io.reactivex.processors.c<io.reactivex.j<io.reactivex.a>> f75729d;

    /* renamed from: e  reason: collision with root package name */
    private io.reactivex.disposables.c f75730e;

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static final class a implements n7.o<f, io.reactivex.a> {

        /* renamed from: a  reason: collision with root package name */
        final h0.c f75731a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SchedulerWhen.java */
        /* renamed from: io.reactivex.internal.schedulers.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0613a extends io.reactivex.a {

            /* renamed from: a  reason: collision with root package name */
            final f f75732a;

            C0613a(f fVar) {
                this.f75732a = fVar;
            }

            @Override // io.reactivex.a
            protected void I0(io.reactivex.d dVar) {
                dVar.onSubscribe(this.f75732a);
                this.f75732a.a(a.this.f75731a, dVar);
            }
        }

        a(h0.c cVar) {
            this.f75731a = cVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public io.reactivex.a apply(f fVar) {
            return new C0613a(fVar);
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static class b extends f {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f75734a;

        /* renamed from: b  reason: collision with root package name */
        private final long f75735b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f75736c;

        b(Runnable runnable, long j4, TimeUnit timeUnit) {
            this.f75734a = runnable;
            this.f75735b = j4;
            this.f75736c = timeUnit;
        }

        @Override // io.reactivex.internal.schedulers.m.f
        protected io.reactivex.disposables.c b(h0.c cVar, io.reactivex.d dVar) {
            return cVar.c(new d(this.f75734a, dVar), this.f75735b, this.f75736c);
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static class c extends f {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f75737a;

        c(Runnable runnable) {
            this.f75737a = runnable;
        }

        @Override // io.reactivex.internal.schedulers.m.f
        protected io.reactivex.disposables.c b(h0.c cVar, io.reactivex.d dVar) {
            return cVar.b(new d(this.f75737a, dVar));
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f75738a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f75739b;

        d(Runnable runnable, io.reactivex.d dVar) {
            this.f75739b = runnable;
            this.f75738a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f75739b.run();
            } finally {
                this.f75738a.onComplete();
            }
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static final class e extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f75740a = new AtomicBoolean();

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.processors.c<f> f75741b;

        /* renamed from: c  reason: collision with root package name */
        private final h0.c f75742c;

        e(io.reactivex.processors.c<f> cVar, h0.c cVar2) {
            this.f75741b = cVar;
            this.f75742c = cVar2;
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c b(@m7.e Runnable runnable) {
            c cVar = new c(runnable);
            this.f75741b.onNext(cVar);
            return cVar;
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
            b bVar = new b(runnable, j4, timeUnit);
            this.f75741b.onNext(bVar);
            return bVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f75740a.compareAndSet(false, true)) {
                this.f75741b.onComplete();
                this.f75742c.dispose();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75740a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    public static abstract class f extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.disposables.c {
        f() {
            super(m.f75726f);
        }

        void a(h0.c cVar, io.reactivex.d dVar) {
            io.reactivex.disposables.c cVar2;
            io.reactivex.disposables.c cVar3 = get();
            if (cVar3 != m.f75727g && cVar3 == (cVar2 = m.f75726f)) {
                io.reactivex.disposables.c b10 = b(cVar, dVar);
                if (compareAndSet(cVar2, b10)) {
                    return;
                }
                b10.dispose();
            }
        }

        protected abstract io.reactivex.disposables.c b(h0.c cVar, io.reactivex.d dVar);

        @Override // io.reactivex.disposables.c
        public void dispose() {
            io.reactivex.disposables.c cVar;
            io.reactivex.disposables.c cVar2 = m.f75727g;
            do {
                cVar = get();
                if (cVar == m.f75727g) {
                    return;
                }
            } while (!compareAndSet(cVar, cVar2));
            if (cVar != m.f75726f) {
                cVar.dispose();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get().isDisposed();
        }
    }

    /* compiled from: SchedulerWhen.java */
    /* loaded from: classes4.dex */
    static final class g implements io.reactivex.disposables.c {
        g() {
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m(n7.o<io.reactivex.j<io.reactivex.j<io.reactivex.a>>, io.reactivex.a> oVar, h0 h0Var) {
        this.f75728c = h0Var;
        io.reactivex.processors.c Q8 = io.reactivex.processors.h.S8().Q8();
        this.f75729d = Q8;
        try {
            this.f75730e = ((io.reactivex.a) oVar.apply(Q8)).F0();
        } catch (Throwable th) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @Override // io.reactivex.h0
    @m7.e
    public h0.c d() {
        h0.c d4 = this.f75728c.d();
        io.reactivex.processors.c<T> Q8 = io.reactivex.processors.h.S8().Q8();
        io.reactivex.j<io.reactivex.a> K3 = Q8.K3(new a(d4));
        e eVar = new e(Q8, d4);
        this.f75729d.onNext(K3);
        return eVar;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        this.f75730e.dispose();
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f75730e.isDisposed();
    }
}
