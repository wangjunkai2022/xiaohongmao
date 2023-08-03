package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
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
public final class d extends h0 {

    /* renamed from: e  reason: collision with root package name */
    static final h0 f75651e = io.reactivex.schedulers.b.g();

    /* renamed from: c  reason: collision with root package name */
    final boolean f75652c;
    @m7.e

    /* renamed from: d  reason: collision with root package name */
    final Executor f75653d;

    /* compiled from: ExecutorScheduler.java */
    /* loaded from: classes4.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final b f75654a;

        a(b bVar) {
            this.f75654a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = this.f75654a;
            bVar.f75658b.replace(d.this.f(bVar));
        }
    }

    /* compiled from: ExecutorScheduler.java */
    /* loaded from: classes4.dex */
    static final class b extends AtomicReference<Runnable> implements Runnable, io.reactivex.disposables.c, io.reactivex.schedulers.a {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75656c = -4101336210206799084L;

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f75657a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f75658b;

        b(Runnable runnable) {
            super(runnable);
            this.f75657a = new SequentialDisposable();
            this.f75658b = new SequentialDisposable();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (getAndSet(null) != null) {
                this.f75657a.dispose();
                this.f75658b.dispose();
            }
        }

        @Override // io.reactivex.schedulers.a
        public Runnable getWrappedRunnable() {
            Runnable runnable = get();
            return runnable != null ? runnable : io.reactivex.internal.functions.a.f71128b;
        }

        @Override // io.reactivex.disposables.c
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
                    SequentialDisposable sequentialDisposable = this.f75657a;
                    DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                    sequentialDisposable.lazySet(disposableHelper);
                    this.f75658b.lazySet(disposableHelper);
                } catch (Throwable th) {
                    lazySet(null);
                    this.f75657a.lazySet(DisposableHelper.DISPOSED);
                    this.f75658b.lazySet(DisposableHelper.DISPOSED);
                    throw th;
                }
            }
        }
    }

    /* compiled from: ExecutorScheduler.java */
    /* loaded from: classes4.dex */
    public static final class c extends h0.c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final boolean f75659a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f75660b;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f75662d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f75663e = new AtomicInteger();

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.disposables.b f75664f = new io.reactivex.disposables.b();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Runnable> f75661c = new io.reactivex.internal.queue.a<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ExecutorScheduler.java */
        /* loaded from: classes4.dex */
        public static final class a extends AtomicBoolean implements Runnable, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f75665b = -2421395018820541164L;

            /* renamed from: a  reason: collision with root package name */
            final Runnable f75666a;

            a(Runnable runnable) {
                this.f75666a = runnable;
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                lazySet(true);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get()) {
                    return;
                }
                try {
                    this.f75666a.run();
                } finally {
                    lazySet(true);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ExecutorScheduler.java */
        /* loaded from: classes4.dex */
        public static final class b extends AtomicInteger implements Runnable, io.reactivex.disposables.c {

            /* renamed from: d  reason: collision with root package name */
            private static final long f75667d = -3603436687413320876L;

            /* renamed from: e  reason: collision with root package name */
            static final int f75668e = 0;

            /* renamed from: f  reason: collision with root package name */
            static final int f75669f = 1;

            /* renamed from: g  reason: collision with root package name */
            static final int f75670g = 2;

            /* renamed from: h  reason: collision with root package name */
            static final int f75671h = 3;

            /* renamed from: i  reason: collision with root package name */
            static final int f75672i = 4;

            /* renamed from: a  reason: collision with root package name */
            final Runnable f75673a;

            /* renamed from: b  reason: collision with root package name */
            final io.reactivex.internal.disposables.a f75674b;

            /* renamed from: c  reason: collision with root package name */
            volatile Thread f75675c;

            b(Runnable runnable, io.reactivex.internal.disposables.a aVar) {
                this.f75673a = runnable;
                this.f75674b = aVar;
            }

            void a() {
                io.reactivex.internal.disposables.a aVar = this.f75674b;
                if (aVar != null) {
                    aVar.c(this);
                }
            }

            @Override // io.reactivex.disposables.c
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
                        Thread thread = this.f75675c;
                        if (thread != null) {
                            thread.interrupt();
                            this.f75675c = null;
                        }
                        set(4);
                        a();
                        return;
                    }
                }
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return get() >= 2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get() == 0) {
                    this.f75675c = Thread.currentThread();
                    if (compareAndSet(0, 1)) {
                        try {
                            this.f75673a.run();
                            this.f75675c = null;
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
                            this.f75675c = null;
                            if (!compareAndSet(1, 2)) {
                                while (get() == 3) {
                                    Thread.yield();
                                }
                                Thread.interrupted();
                            } else {
                                a();
                            }
                            throw th;
                        }
                    }
                    this.f75675c = null;
                }
            }
        }

        /* compiled from: ExecutorScheduler.java */
        /* renamed from: io.reactivex.internal.schedulers.d$c$c  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0612c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final SequentialDisposable f75676a;

            /* renamed from: b  reason: collision with root package name */
            private final Runnable f75677b;

            RunnableC0612c(SequentialDisposable sequentialDisposable, Runnable runnable) {
                this.f75676a = sequentialDisposable;
                this.f75677b = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f75676a.replace(c.this.b(this.f75677b));
            }
        }

        public c(Executor executor, boolean z9) {
            this.f75660b = executor;
            this.f75659a = z9;
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c b(@m7.e Runnable runnable) {
            io.reactivex.disposables.c aVar;
            if (this.f75662d) {
                return EmptyDisposable.INSTANCE;
            }
            Runnable b02 = io.reactivex.plugins.a.b0(runnable);
            if (this.f75659a) {
                aVar = new b(b02, this.f75664f);
                this.f75664f.b(aVar);
            } else {
                aVar = new a(b02);
            }
            this.f75661c.offer(aVar);
            if (this.f75663e.getAndIncrement() == 0) {
                try {
                    this.f75660b.execute(this);
                } catch (RejectedExecutionException e4) {
                    this.f75662d = true;
                    this.f75661c.clear();
                    io.reactivex.plugins.a.Y(e4);
                    return EmptyDisposable.INSTANCE;
                }
            }
            return aVar;
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
            if (j4 <= 0) {
                return b(runnable);
            }
            if (this.f75662d) {
                return EmptyDisposable.INSTANCE;
            }
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(new RunnableC0612c(sequentialDisposable2, io.reactivex.plugins.a.b0(runnable)), this.f75664f);
            this.f75664f.b(scheduledRunnable);
            Executor executor = this.f75660b;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    scheduledRunnable.setFuture(((ScheduledExecutorService) executor).schedule((Callable) scheduledRunnable, j4, timeUnit));
                } catch (RejectedExecutionException e4) {
                    this.f75662d = true;
                    io.reactivex.plugins.a.Y(e4);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                scheduledRunnable.setFuture(new io.reactivex.internal.schedulers.c(d.f75651e.g(scheduledRunnable, j4, timeUnit)));
            }
            sequentialDisposable.replace(scheduledRunnable);
            return sequentialDisposable2;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f75662d) {
                return;
            }
            this.f75662d = true;
            this.f75664f.dispose();
            if (this.f75663e.getAndIncrement() == 0) {
                this.f75661c.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75662d;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
            if (r3.f75662d == false) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
            r1 = r3.f75663e.addAndGet(-r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
            if (r1 != 0) goto L2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
            return;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r3 = this;
                io.reactivex.internal.queue.a<java.lang.Runnable> r0 = r3.f75661c
                r1 = 1
            L3:
                boolean r2 = r3.f75662d
                if (r2 == 0) goto Lb
                r0.clear()
                return
            Lb:
                java.lang.Object r2 = r0.poll()
                java.lang.Runnable r2 = (java.lang.Runnable) r2
                if (r2 != 0) goto L25
                boolean r2 = r3.f75662d
                if (r2 == 0) goto L1b
                r0.clear()
                return
            L1b:
                java.util.concurrent.atomic.AtomicInteger r2 = r3.f75663e
                int r1 = -r1
                int r1 = r2.addAndGet(r1)
                if (r1 != 0) goto L3
                return
            L25:
                r2.run()
                boolean r2 = r3.f75662d
                if (r2 == 0) goto Lb
                r0.clear()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.schedulers.d.c.run():void");
        }
    }

    public d(@m7.e Executor executor, boolean z9) {
        this.f75653d = executor;
        this.f75652c = z9;
    }

    @Override // io.reactivex.h0
    @m7.e
    public h0.c d() {
        return new c(this.f75653d, this.f75652c);
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c f(@m7.e Runnable runnable) {
        Runnable b02 = io.reactivex.plugins.a.b0(runnable);
        try {
            if (this.f75653d instanceof ExecutorService) {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(b02);
                scheduledDirectTask.setFuture(((ExecutorService) this.f75653d).submit(scheduledDirectTask));
                return scheduledDirectTask;
            } else if (this.f75652c) {
                c.b bVar = new c.b(b02, null);
                this.f75653d.execute(bVar);
                return bVar;
            } else {
                c.a aVar = new c.a(b02);
                this.f75653d.execute(aVar);
                return aVar;
            }
        } catch (RejectedExecutionException e4) {
            io.reactivex.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c g(@m7.e Runnable runnable, long j4, TimeUnit timeUnit) {
        Runnable b02 = io.reactivex.plugins.a.b0(runnable);
        if (this.f75653d instanceof ScheduledExecutorService) {
            try {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(b02);
                scheduledDirectTask.setFuture(((ScheduledExecutorService) this.f75653d).schedule(scheduledDirectTask, j4, timeUnit));
                return scheduledDirectTask;
            } catch (RejectedExecutionException e4) {
                io.reactivex.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        b bVar = new b(b02);
        bVar.f75657a.replace(f75651e.g(new a(bVar), j4, timeUnit));
        return bVar;
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c h(@m7.e Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
        if (this.f75653d instanceof ScheduledExecutorService) {
            try {
                ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(io.reactivex.plugins.a.b0(runnable));
                scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) this.f75653d).scheduleAtFixedRate(scheduledDirectPeriodicTask, j4, j10, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e4) {
                io.reactivex.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        return super.h(runnable, j4, j10, timeUnit);
    }
}
