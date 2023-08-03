package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.schedulers.k;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ComputationScheduler.java */
/* loaded from: classes4.dex */
public final class b extends o0 implements k {

    /* renamed from: d  reason: collision with root package name */
    static final C0692b f81048d;

    /* renamed from: e  reason: collision with root package name */
    private static final String f81049e = "RxComputationThreadPool";

    /* renamed from: f  reason: collision with root package name */
    static final RxThreadFactory f81050f;

    /* renamed from: g  reason: collision with root package name */
    static final String f81051g = "rx3.computation-threads";

    /* renamed from: h  reason: collision with root package name */
    static final int f81052h = l(Runtime.getRuntime().availableProcessors(), Integer.getInteger(f81051g, 0).intValue());

    /* renamed from: i  reason: collision with root package name */
    static final c f81053i;

    /* renamed from: j  reason: collision with root package name */
    private static final String f81054j = "rx3.computation-priority";

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f81055b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<C0692b> f81056c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* loaded from: classes4.dex */
    public static final class a extends o0.c {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.internal.disposables.a f81057a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.rxjava3.disposables.c f81058b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.internal.disposables.a f81059c;

        /* renamed from: d  reason: collision with root package name */
        private final c f81060d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f81061e;

        a(c poolWorker) {
            this.f81060d = poolWorker;
            io.reactivex.rxjava3.internal.disposables.a aVar = new io.reactivex.rxjava3.internal.disposables.a();
            this.f81057a = aVar;
            io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
            this.f81058b = cVar;
            io.reactivex.rxjava3.internal.disposables.a aVar2 = new io.reactivex.rxjava3.internal.disposables.a();
            this.f81059c = aVar2;
            aVar2.b(aVar);
            aVar2.b(cVar);
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f b(@p7.e Runnable action) {
            if (this.f81061e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f81060d.e(action, 0L, TimeUnit.MILLISECONDS, this.f81057a);
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f c(@p7.e Runnable action, long delayTime, @p7.e TimeUnit unit) {
            if (this.f81061e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f81060d.e(action, delayTime, unit, this.f81058b);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f81061e) {
                return;
            }
            this.f81061e = true;
            this.f81059c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81061e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* renamed from: io.reactivex.rxjava3.internal.schedulers.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0692b implements k {

        /* renamed from: a  reason: collision with root package name */
        final int f81062a;

        /* renamed from: b  reason: collision with root package name */
        final c[] f81063b;

        /* renamed from: c  reason: collision with root package name */
        long f81064c;

        C0692b(int maxThreads, ThreadFactory threadFactory) {
            this.f81062a = maxThreads;
            this.f81063b = new c[maxThreads];
            for (int i4 = 0; i4 < maxThreads; i4++) {
                this.f81063b[i4] = new c(threadFactory);
            }
        }

        @Override // io.reactivex.rxjava3.internal.schedulers.k
        public void a(int number, k.a callback) {
            int i4 = this.f81062a;
            if (i4 == 0) {
                for (int i10 = 0; i10 < number; i10++) {
                    callback.a(i10, b.f81053i);
                }
                return;
            }
            int i11 = ((int) this.f81064c) % i4;
            for (int i12 = 0; i12 < number; i12++) {
                callback.a(i12, new a(this.f81063b[i11]));
                i11++;
                if (i11 == i4) {
                    i11 = 0;
                }
            }
            this.f81064c = i11;
        }

        public c b() {
            int i4 = this.f81062a;
            if (i4 == 0) {
                return b.f81053i;
            }
            c[] cVarArr = this.f81063b;
            long j4 = this.f81064c;
            this.f81064c = 1 + j4;
            return cVarArr[(int) (j4 % i4)];
        }

        public void c() {
            for (c cVar : this.f81063b) {
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
        f81053i = cVar;
        cVar.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory(f81049e, Math.max(1, Math.min(10, Integer.getInteger(f81054j, 5).intValue())), true);
        f81050f = rxThreadFactory;
        C0692b c0692b = new C0692b(0, rxThreadFactory);
        f81048d = c0692b;
        c0692b.c();
    }

    public b() {
        this(f81050f);
    }

    static int l(int cpuCount, int paramThreads) {
        return (paramThreads <= 0 || paramThreads > cpuCount) ? cpuCount : paramThreads;
    }

    @Override // io.reactivex.rxjava3.internal.schedulers.k
    public void a(int number, k.a callback) {
        io.reactivex.rxjava3.internal.functions.b.b(number, "number > 0 required");
        this.f81056c.get().a(number, callback);
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public o0.c d() {
        return new a(this.f81056c.get().b());
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f g(@p7.e Runnable run, long delay, TimeUnit unit) {
        return this.f81056c.get().b().f(run, delay, unit);
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f h(@p7.e Runnable run, long initialDelay, long period, TimeUnit unit) {
        return this.f81056c.get().b().g(run, initialDelay, period, unit);
    }

    @Override // io.reactivex.rxjava3.core.o0
    public void i() {
        AtomicReference<C0692b> atomicReference = this.f81056c;
        C0692b c0692b = f81048d;
        C0692b andSet = atomicReference.getAndSet(c0692b);
        if (andSet != c0692b) {
            andSet.c();
        }
    }

    @Override // io.reactivex.rxjava3.core.o0
    public void j() {
        C0692b c0692b = new C0692b(f81052h, this.f81055b);
        if (this.f81056c.compareAndSet(f81048d, c0692b)) {
            return;
        }
        c0692b.c();
    }

    public b(ThreadFactory threadFactory) {
        this.f81055b = threadFactory;
        this.f81056c = new AtomicReference<>(f81048d);
        j();
    }
}
