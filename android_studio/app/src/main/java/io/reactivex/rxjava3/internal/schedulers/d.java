package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ExecutorScheduler.java */
/* loaded from: classes4.dex */
public final class d extends o0 {

    /* renamed from: e  reason: collision with root package name */
    static final o0 f81066e = io.reactivex.rxjava3.schedulers.b.h();

    /* renamed from: b  reason: collision with root package name */
    final boolean f81067b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f81068c;
    @p7.e

    /* renamed from: d  reason: collision with root package name */
    final Executor f81069d;

    /* compiled from: ExecutorScheduler.java */
    /* loaded from: classes4.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final b f81070a;

        a(b dr) {
            this.f81070a = dr;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = this.f81070a;
            bVar.f81074b.replace(d.this.f(bVar));
        }
    }

    /* compiled from: ExecutorScheduler.java */
    /* loaded from: classes4.dex */
    static final class b extends AtomicReference<Runnable> implements Runnable, io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.schedulers.a {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81072c = -4101336210206799084L;

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f81073a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f81074b;

        b(Runnable run) {
            super(run);
            this.f81073a = new SequentialDisposable();
            this.f81074b = new SequentialDisposable();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (getAndSet(null) != null) {
                this.f81073a.dispose();
                this.f81074b.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.schedulers.a
        public Runnable getWrappedRunnable() {
            Runnable runnable = get();
            return runnable != null ? runnable : io.reactivex.rxjava3.internal.functions.a.f76181b;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    runnable.run();
                    lazySet(null);
                    SequentialDisposable sequentialDisposable = this.f81073a;
                    DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                    sequentialDisposable.lazySet(disposableHelper);
                    this.f81074b.lazySet(disposableHelper);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.plugins.a.Y(th);
                    throw th;
                }
            }
        }
    }

    /* compiled from: ExecutorScheduler.java */
    /* loaded from: classes4.dex */
    public static final class c extends o0.c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final boolean f81075a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f81076b;

        /* renamed from: c  reason: collision with root package name */
        final Executor f81077c;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f81079e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f81080f = new AtomicInteger();

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f81081g = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.a<Runnable> f81078d = new io.reactivex.rxjava3.internal.queue.a<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ExecutorScheduler.java */
        /* loaded from: classes4.dex */
        public static final class a extends AtomicBoolean implements Runnable, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f81082b = -2421395018820541164L;

            /* renamed from: a  reason: collision with root package name */
            final Runnable f81083a;

            a(Runnable actual) {
                this.f81083a = actual;
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                lazySet(true);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get()) {
                    return;
                }
                try {
                    this.f81083a.run();
                } finally {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ExecutorScheduler.java */
        /* loaded from: classes4.dex */
        public static final class b extends AtomicInteger implements Runnable, io.reactivex.rxjava3.disposables.f {

            /* renamed from: d  reason: collision with root package name */
            private static final long f81084d = -3603436687413320876L;

            /* renamed from: e  reason: collision with root package name */
            static final int f81085e = 0;

            /* renamed from: f  reason: collision with root package name */
            static final int f81086f = 1;

            /* renamed from: g  reason: collision with root package name */
            static final int f81087g = 2;

            /* renamed from: h  reason: collision with root package name */
            static final int f81088h = 3;

            /* renamed from: i  reason: collision with root package name */
            static final int f81089i = 4;

            /* renamed from: a  reason: collision with root package name */
            final Runnable f81090a;

            /* renamed from: b  reason: collision with root package name */
            final io.reactivex.rxjava3.disposables.g f81091b;

            /* renamed from: c  reason: collision with root package name */
            volatile Thread f81092c;

            b(Runnable run, io.reactivex.rxjava3.disposables.g tasks) {
                this.f81090a = run;
                this.f81091b = tasks;
            }

            void a() {
                io.reactivex.rxjava3.disposables.g gVar = this.f81091b;
                if (gVar != null) {
                    gVar.c(this);
                }
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                while (true) {
                    int i4 = get();
                    if (i4 >= 2) {
                        return;
                    }
                    if (i4 == 0) {
                        if (compareAndSet(0, 4)) {
                            a();
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.f81092c;
                        if (thread != null) {
                            thread.interrupt();
                            this.f81092c = null;
                        }
                        set(4);
                        a();
                        return;
                    }
                }
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return get() >= 2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get() == 0) {
                    this.f81092c = Thread.currentThread();
                    if (compareAndSet(0, 1)) {
                        try {
                            this.f81090a.run();
                            this.f81092c = null;
                            if (compareAndSet(1, 2)) {
                                a();
                                return;
                            }
                            while (get() == 3) {
                                Thread.yield();
                            }
                            Thread.interrupted();
                            return;
                        } catch (Throwable th) {
                            try {
                                io.reactivex.rxjava3.plugins.a.Y(th);
                                throw th;
                            } catch (Throwable th2) {
                                this.f81092c = null;
                                if (!compareAndSet(1, 2)) {
                                    while (get() == 3) {
                                        Thread.yield();
                                    }
                                    Thread.interrupted();
                                } else {
                                    a();
                                }
                                throw th2;
                            }
                        }
                    }
                    this.f81092c = null;
                }
            }
        }

        /* compiled from: ExecutorScheduler.java */
        /* renamed from: io.reactivex.rxjava3.internal.schedulers.d$c$c  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0693c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final SequentialDisposable f81093a;

            /* renamed from: b  reason: collision with root package name */
            private final Runnable f81094b;

            RunnableC0693c(SequentialDisposable mar, Runnable decoratedRun) {
                this.f81093a = mar;
                this.f81094b = decoratedRun;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f81093a.replace(c.this.b(this.f81094b));
            }
        }

        public c(Executor executor, boolean interruptibleWorker, boolean fair) {
            this.f81077c = executor;
            this.f81075a = interruptibleWorker;
            this.f81076b = fair;
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f b(@p7.e Runnable run) {
            io.reactivex.rxjava3.disposables.f aVar;
            if (this.f81079e) {
                return EmptyDisposable.INSTANCE;
            }
            Runnable b02 = io.reactivex.rxjava3.plugins.a.b0(run);
            if (this.f81075a) {
                aVar = new b(b02, this.f81081g);
                this.f81081g.b(aVar);
            } else {
                aVar = new a(b02);
            }
            this.f81078d.offer(aVar);
            if (this.f81080f.getAndIncrement() == 0) {
                try {
                    this.f81077c.execute(this);
                } catch (RejectedExecutionException e4) {
                    this.f81079e = true;
                    this.f81078d.clear();
                    io.reactivex.rxjava3.plugins.a.Y(e4);
                    return EmptyDisposable.INSTANCE;
                }
            }
            return aVar;
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f c(@p7.e Runnable run, long delay, @p7.e TimeUnit unit) {
            if (delay <= 0) {
                return b(run);
            }
            if (this.f81079e) {
                return EmptyDisposable.INSTANCE;
            }
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(new RunnableC0693c(sequentialDisposable2, io.reactivex.rxjava3.plugins.a.b0(run)), this.f81081g);
            this.f81081g.b(scheduledRunnable);
            Executor executor = this.f81077c;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    scheduledRunnable.setFuture(((ScheduledExecutorService) executor).schedule((Callable) scheduledRunnable, delay, unit));
                } catch (RejectedExecutionException e4) {
                    this.f81079e = true;
                    io.reactivex.rxjava3.plugins.a.Y(e4);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                scheduledRunnable.setFuture(new io.reactivex.rxjava3.internal.schedulers.c(d.f81066e.g(scheduledRunnable, delay, unit)));
            }
            sequentialDisposable.replace(scheduledRunnable);
            return sequentialDisposable2;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f81079e) {
                return;
            }
            this.f81079e = true;
            this.f81081g.dispose();
            if (this.f81080f.getAndIncrement() == 0) {
                this.f81078d.clear();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
            if (r3.f81079e == false) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
            r1 = r3.f81080f.addAndGet(-r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
            if (r1 != 0) goto L2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void e() {
            /*
                r3 = this;
                io.reactivex.rxjava3.internal.queue.a<java.lang.Runnable> r0 = r3.f81078d
                r1 = 1
            L3:
                boolean r2 = r3.f81079e
                if (r2 == 0) goto Lb
                r0.clear()
                return
            Lb:
                java.lang.Object r2 = r0.poll()
                java.lang.Runnable r2 = (java.lang.Runnable) r2
                if (r2 != 0) goto L25
                boolean r2 = r3.f81079e
                if (r2 == 0) goto L1b
                r0.clear()
                return
            L1b:
                java.util.concurrent.atomic.AtomicInteger r2 = r3.f81080f
                int r1 = -r1
                int r1 = r2.addAndGet(r1)
                if (r1 != 0) goto L3
                return
            L25:
                r2.run()
                boolean r2 = r3.f81079e
                if (r2 == 0) goto Lb
                r0.clear()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.schedulers.d.c.e():void");
        }

        void f() {
            io.reactivex.rxjava3.internal.queue.a<Runnable> aVar = this.f81078d;
            if (this.f81079e) {
                aVar.clear();
                return;
            }
            aVar.poll().run();
            if (this.f81079e) {
                aVar.clear();
            } else if (this.f81080f.decrementAndGet() != 0) {
                this.f81077c.execute(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81079e;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f81076b) {
                f();
            } else {
                e();
            }
        }
    }

    public d(@p7.e Executor executor, boolean interruptibleWorker, boolean fair) {
        this.f81069d = executor;
        this.f81067b = interruptibleWorker;
        this.f81068c = fair;
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public o0.c d() {
        return new c(this.f81069d, this.f81067b, this.f81068c);
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f f(@p7.e Runnable run) {
        Runnable b02 = io.reactivex.rxjava3.plugins.a.b0(run);
        try {
            if (this.f81069d instanceof ExecutorService) {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(b02);
                scheduledDirectTask.setFuture(((ExecutorService) this.f81069d).submit(scheduledDirectTask));
                return scheduledDirectTask;
            } else if (this.f81067b) {
                c.b bVar = new c.b(b02, null);
                this.f81069d.execute(bVar);
                return bVar;
            } else {
                c.a aVar = new c.a(b02);
                this.f81069d.execute(aVar);
                return aVar;
            }
        } catch (RejectedExecutionException e4) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f g(@p7.e Runnable run, final long delay, final TimeUnit unit) {
        Runnable b02 = io.reactivex.rxjava3.plugins.a.b0(run);
        if (this.f81069d instanceof ScheduledExecutorService) {
            try {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(b02);
                scheduledDirectTask.setFuture(((ScheduledExecutorService) this.f81069d).schedule(scheduledDirectTask, delay, unit));
                return scheduledDirectTask;
            } catch (RejectedExecutionException e4) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        b bVar = new b(b02);
        bVar.f81073a.replace(f81066e.g(new a(bVar), delay, unit));
        return bVar;
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f h(@p7.e Runnable run, long initialDelay, long period, TimeUnit unit) {
        if (this.f81069d instanceof ScheduledExecutorService) {
            try {
                ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(io.reactivex.rxjava3.plugins.a.b0(run));
                scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) this.f81069d).scheduleAtFixedRate(scheduledDirectPeriodicTask, initialDelay, period, unit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e4) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        return super.h(run, initialDelay, period, unit);
    }
}
