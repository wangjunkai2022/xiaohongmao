package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.schedulers.k;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ComputationScheduler.java */
/* loaded from: classes4.dex */
public final class b extends h0 implements k {

    /* renamed from: e  reason: collision with root package name */
    static final C0611b f75633e;

    /* renamed from: f  reason: collision with root package name */
    private static final String f75634f = "RxComputationThreadPool";

    /* renamed from: g  reason: collision with root package name */
    static final RxThreadFactory f75635g;

    /* renamed from: h  reason: collision with root package name */
    static final String f75636h = "rx2.computation-threads";

    /* renamed from: i  reason: collision with root package name */
    static final int f75637i = l(Runtime.getRuntime().availableProcessors(), Integer.getInteger(f75636h, 0).intValue());

    /* renamed from: j  reason: collision with root package name */
    static final c f75638j;

    /* renamed from: k  reason: collision with root package name */
    private static final String f75639k = "rx2.computation-priority";

    /* renamed from: c  reason: collision with root package name */
    final ThreadFactory f75640c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<C0611b> f75641d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* loaded from: classes4.dex */
    public static final class a extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.internal.disposables.b f75642a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.disposables.b f75643b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.internal.disposables.b f75644c;

        /* renamed from: d  reason: collision with root package name */
        private final c f75645d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f75646e;

        a(c cVar) {
            this.f75645d = cVar;
            io.reactivex.internal.disposables.b bVar = new io.reactivex.internal.disposables.b();
            this.f75642a = bVar;
            io.reactivex.disposables.b bVar2 = new io.reactivex.disposables.b();
            this.f75643b = bVar2;
            io.reactivex.internal.disposables.b bVar3 = new io.reactivex.internal.disposables.b();
            this.f75644c = bVar3;
            bVar3.b(bVar);
            bVar3.b(bVar2);
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c b(@m7.e Runnable runnable) {
            if (this.f75646e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f75645d.e(runnable, 0L, TimeUnit.MILLISECONDS, this.f75642a);
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
            if (this.f75646e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f75645d.e(runnable, j4, timeUnit, this.f75643b);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f75646e) {
                return;
            }
            this.f75646e = true;
            this.f75644c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75646e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* renamed from: io.reactivex.internal.schedulers.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0611b implements k {

        /* renamed from: a  reason: collision with root package name */
        final int f75647a;

        /* renamed from: b  reason: collision with root package name */
        final c[] f75648b;

        /* renamed from: c  reason: collision with root package name */
        long f75649c;

        C0611b(int i4, ThreadFactory threadFactory) {
            this.f75647a = i4;
            this.f75648b = new c[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                this.f75648b[i10] = new c(threadFactory);
            }
        }

        @Override // io.reactivex.internal.schedulers.k
        public void a(int i4, k.a aVar) {
            int i10 = this.f75647a;
            if (i10 == 0) {
                for (int i11 = 0; i11 < i4; i11++) {
                    aVar.a(i11, b.f75638j);
                }
                return;
            }
            int i12 = ((int) this.f75649c) % i10;
            for (int i13 = 0; i13 < i4; i13++) {
                aVar.a(i13, new a(this.f75648b[i12]));
                i12++;
                if (i12 == i10) {
                    i12 = 0;
                }
            }
            this.f75649c = i12;
        }

        public c b() {
            int i4 = this.f75647a;
            if (i4 == 0) {
                return b.f75638j;
            }
            c[] cVarArr = this.f75648b;
            long j4 = this.f75649c;
            this.f75649c = 1 + j4;
            return cVarArr[(int) (j4 % i4)];
        }

        public void c() {
            for (c cVar : this.f75648b) {
                cVar.dispose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* loaded from: classes4.dex */
    public static final class c extends i {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxComputationShutdown"));
        f75638j = cVar;
        cVar.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory(f75634f, Math.max(1, Math.min(10, Integer.getInteger(f75639k, 5).intValue())), true);
        f75635g = rxThreadFactory;
        C0611b c0611b = new C0611b(0, rxThreadFactory);
        f75633e = c0611b;
        c0611b.c();
    }

    public b() {
        this(f75635g);
    }

    static int l(int i4, int i10) {
        return (i10 <= 0 || i10 > i4) ? i4 : i10;
    }

    @Override // io.reactivex.internal.schedulers.k
    public void a(int i4, k.a aVar) {
        io.reactivex.internal.functions.b.h(i4, "number > 0 required");
        this.f75641d.get().a(i4, aVar);
    }

    @Override // io.reactivex.h0
    @m7.e
    public h0.c d() {
        return new a(this.f75641d.get().b());
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c g(@m7.e Runnable runnable, long j4, TimeUnit timeUnit) {
        return this.f75641d.get().b().f(runnable, j4, timeUnit);
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c h(@m7.e Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
        return this.f75641d.get().b().g(runnable, j4, j10, timeUnit);
    }

    @Override // io.reactivex.h0
    public void i() {
        C0611b c0611b;
        C0611b c0611b2;
        do {
            c0611b = this.f75641d.get();
            c0611b2 = f75633e;
            if (c0611b == c0611b2) {
                return;
            }
        } while (!this.f75641d.compareAndSet(c0611b, c0611b2));
        c0611b.c();
    }

    @Override // io.reactivex.h0
    public void j() {
        C0611b c0611b = new C0611b(f75637i, this.f75640c);
        if (this.f75641d.compareAndSet(f75633e, c0611b)) {
            return;
        }
        c0611b.c();
    }

    public b(ThreadFactory threadFactory) {
        this.f75640c = threadFactory;
        this.f75641d = new AtomicReference<>(f75633e);
        j();
    }
}
