package com.google.common.util.concurrent;

import com.google.common.util.concurrent.d;
import com.google.common.util.concurrent.f0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: MoreExecutors.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class x0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MoreExecutors.java */
    /* loaded from: classes2.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BlockingQueue f35375a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ q0 f35376b;

        a(BlockingQueue blockingQueue, q0 q0Var) {
            this.f35375a = blockingQueue;
            this.f35376b = q0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35375a.add(this.f35376b);
        }
    }

    /* compiled from: MoreExecutors.java */
    /* loaded from: classes2.dex */
    static class b implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Executor f35377a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.i0 f35378b;

        b(Executor executor, com.google.common.base.i0 i0Var) {
            this.f35377a = executor;
            this.f35378b = i0Var;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f35377a.execute(p.d(runnable, this.f35378b));
        }
    }

    /* compiled from: MoreExecutors.java */
    /* loaded from: classes2.dex */
    static class c extends o1 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.i0 f35379b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(ExecutorService executorService, com.google.common.base.i0 i0Var) {
            super(executorService);
            this.f35379b = i0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.o1
        public Runnable a(Runnable runnable) {
            return p.d(runnable, this.f35379b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.o1
        public <T> Callable<T> b(Callable<T> callable) {
            return p.e(callable, this.f35379b);
        }
    }

    /* compiled from: MoreExecutors.java */
    /* loaded from: classes2.dex */
    static class d extends p1 {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.i0 f35380c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(ScheduledExecutorService scheduledExecutorService, com.google.common.base.i0 i0Var) {
            super(scheduledExecutorService);
            this.f35380c = i0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.o1
        public Runnable a(Runnable runnable) {
            return p.d(runnable, this.f35380c);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.o1
        public <T> Callable<T> b(Callable<T> callable) {
            return p.e(callable, this.f35380c);
        }
    }

    /* compiled from: MoreExecutors.java */
    /* loaded from: classes2.dex */
    static class e implements Executor {

        /* renamed from: a  reason: collision with root package name */
        boolean f35381a = true;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Executor f35382b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.google.common.util.concurrent.d f35383c;

        /* compiled from: MoreExecutors.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f35384a;

            a(Runnable runnable) {
                this.f35384a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f35381a = false;
                this.f35384a.run();
            }
        }

        e(Executor executor, com.google.common.util.concurrent.d dVar) {
            this.f35382b = executor;
            this.f35383c = dVar;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                this.f35382b.execute(new a(runnable));
            } catch (RejectedExecutionException e4) {
                if (this.f35381a) {
                    this.f35383c.N(e4);
                }
            }
        }
    }

    /* compiled from: MoreExecutors.java */
    @h3.c
    @h3.d
    /* loaded from: classes2.dex */
    static class f {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MoreExecutors.java */
        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ExecutorService f35386a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f35387b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ TimeUnit f35388c;

            a(ExecutorService executorService, long j4, TimeUnit timeUnit) {
                this.f35386a = executorService;
                this.f35387b = j4;
                this.f35388c = timeUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f35386a.shutdown();
                    this.f35386a.awaitTermination(this.f35387b, this.f35388c);
                } catch (InterruptedException unused) {
                }
            }
        }

        f() {
        }

        final void a(ExecutorService executorService, long j4, TimeUnit timeUnit) {
            com.google.common.base.a0.E(executorService);
            com.google.common.base.a0.E(timeUnit);
            b(x0.n("DelayedShutdownHook-for-" + executorService, new a(executorService, j4, timeUnit)));
        }

        @h3.d
        void b(Thread thread) {
            Runtime.getRuntime().addShutdownHook(thread);
        }

        final ExecutorService c(ThreadPoolExecutor threadPoolExecutor) {
            return d(threadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        final ExecutorService d(ThreadPoolExecutor threadPoolExecutor, long j4, TimeUnit timeUnit) {
            x0.v(threadPoolExecutor);
            ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
            a(threadPoolExecutor, j4, timeUnit);
            return unconfigurableExecutorService;
        }

        final ScheduledExecutorService e(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            return f(scheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        final ScheduledExecutorService f(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j4, TimeUnit timeUnit) {
            x0.v(scheduledThreadPoolExecutor);
            ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
            a(scheduledThreadPoolExecutor, j4, timeUnit);
            return unconfigurableScheduledExecutorService;
        }
    }

    /* compiled from: MoreExecutors.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class h extends com.google.common.util.concurrent.g {

        /* renamed from: a  reason: collision with root package name */
        private final ExecutorService f35393a;

        h(ExecutorService executorService) {
            this.f35393a = (ExecutorService) com.google.common.base.a0.E(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j4, TimeUnit timeUnit) throws InterruptedException {
            return this.f35393a.awaitTermination(j4, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f35393a.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.f35393a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.f35393a.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.f35393a.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.f35393a.shutdownNow();
        }
    }

    /* compiled from: MoreExecutors.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static final class i extends h implements v0 {

        /* renamed from: b  reason: collision with root package name */
        final ScheduledExecutorService f35394b;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MoreExecutors.java */
        /* loaded from: classes2.dex */
        public static final class a<V> extends f0.a<V> implements s0<V> {

            /* renamed from: b  reason: collision with root package name */
            private final ScheduledFuture<?> f35395b;

            public a(q0<V> q0Var, ScheduledFuture<?> scheduledFuture) {
                super(q0Var);
                this.f35395b = scheduledFuture;
            }

            @Override // java.lang.Comparable
            /* renamed from: O */
            public int compareTo(Delayed delayed) {
                return this.f35395b.compareTo(delayed);
            }

            @Override // com.google.common.util.concurrent.e0, java.util.concurrent.Future
            public boolean cancel(boolean z9) {
                boolean cancel = super.cancel(z9);
                if (cancel) {
                    this.f35395b.cancel(z9);
                }
                return cancel;
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.f35395b.getDelay(timeUnit);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MoreExecutors.java */
        @h3.c
        /* loaded from: classes2.dex */
        public static final class b extends d.j<Void> implements Runnable {

            /* renamed from: i  reason: collision with root package name */
            private final Runnable f35396i;

            public b(Runnable runnable) {
                this.f35396i = (Runnable) com.google.common.base.a0.E(runnable);
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f35396i.run();
                } catch (Throwable th) {
                    N(th);
                    throw com.google.common.base.k0.q(th);
                }
            }
        }

        i(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f35394b = (ScheduledExecutorService) com.google.common.base.a0.E(scheduledExecutorService);
        }

        @Override // com.google.common.util.concurrent.v0, java.util.concurrent.ScheduledExecutorService
        public s0<?> scheduleAtFixedRate(Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f35394b.scheduleAtFixedRate(bVar, j4, j10, timeUnit));
        }

        @Override // com.google.common.util.concurrent.v0, java.util.concurrent.ScheduledExecutorService
        public s0<?> scheduleWithFixedDelay(Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f35394b.scheduleWithFixedDelay(bVar, j4, j10, timeUnit));
        }

        @Override // com.google.common.util.concurrent.v0, java.util.concurrent.ScheduledExecutorService
        public s0<?> schedule(Runnable runnable, long j4, TimeUnit timeUnit) {
            l1 Z = l1.Z(runnable, null);
            return new a(Z, this.f35394b.schedule(Z, j4, timeUnit));
        }

        @Override // com.google.common.util.concurrent.v0, java.util.concurrent.ScheduledExecutorService
        public <V> s0<V> schedule(Callable<V> callable, long j4, TimeUnit timeUnit) {
            l1 a02 = l1.a0(callable);
            return new a(a02, this.f35394b.schedule(a02, j4, timeUnit));
        }
    }

    private x0() {
    }

    @h3.c
    @h3.a
    public static void b(ExecutorService executorService, long j4, TimeUnit timeUnit) {
        new f().a(executorService, j4, timeUnit);
    }

    public static Executor c() {
        return t.INSTANCE;
    }

    @h3.c
    @h3.a
    public static ExecutorService d(ThreadPoolExecutor threadPoolExecutor) {
        return new f().c(threadPoolExecutor);
    }

    @h3.c
    @h3.a
    public static ExecutorService e(ThreadPoolExecutor threadPoolExecutor, long j4, TimeUnit timeUnit) {
        return new f().d(threadPoolExecutor, j4, timeUnit);
    }

    @h3.c
    @h3.a
    public static ScheduledExecutorService f(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        return new f().e(scheduledThreadPoolExecutor);
    }

    @h3.c
    @h3.a
    public static ScheduledExecutorService g(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j4, TimeUnit timeUnit) {
        return new f().f(scheduledThreadPoolExecutor, j4, timeUnit);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b7 A[SYNTHETIC] */
    @h3.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static <T> T h(com.google.common.util.concurrent.u0 r16, java.util.Collection<? extends java.util.concurrent.Callable<T>> r17, boolean r18, long r19, java.util.concurrent.TimeUnit r21) throws java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            r1 = r16
            com.google.common.base.a0.E(r16)
            com.google.common.base.a0.E(r21)
            int r0 = r17.size()
            r2 = 1
            if (r0 <= 0) goto L11
            r3 = 1
            goto L12
        L11:
            r3 = 0
        L12:
            com.google.common.base.a0.d(r3)
            java.util.ArrayList r3 = com.google.common.collect.b3.u(r0)
            java.util.concurrent.LinkedBlockingQueue r4 = com.google.common.collect.v3.k()
            r5 = r19
            r7 = r21
            long r5 = r7.toNanos(r5)
            if (r18 == 0) goto L2f
            long r7 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2c
            goto L31
        L2c:
            r0 = move-exception
            goto Lbb
        L2f:
            r7 = 0
        L31:
            java.util.Iterator r9 = r17.iterator()     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r10 = r9.next()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Callable r10 = (java.util.concurrent.Callable) r10     // Catch: java.lang.Throwable -> L2c
            com.google.common.util.concurrent.q0 r10 = u(r1, r10, r4)     // Catch: java.lang.Throwable -> L2c
            r3.add(r10)     // Catch: java.lang.Throwable -> L2c
            int r0 = r0 + (-1)
            r10 = 0
            r12 = r10
            r11 = 1
        L47:
            java.lang.Object r13 = r4.poll()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
            if (r13 != 0) goto L8d
            if (r0 <= 0) goto L63
            int r0 = r0 + (-1)
            java.lang.Object r14 = r9.next()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Callable r14 = (java.util.concurrent.Callable) r14     // Catch: java.lang.Throwable -> L2c
            com.google.common.util.concurrent.q0 r14 = u(r1, r14, r4)     // Catch: java.lang.Throwable -> L2c
            r3.add(r14)     // Catch: java.lang.Throwable -> L2c
            int r11 = r11 + 1
            goto L8d
        L63:
            if (r11 != 0) goto L6d
            if (r12 != 0) goto L6c
            java.util.concurrent.ExecutionException r12 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L2c
            r12.<init>(r10)     // Catch: java.lang.Throwable -> L2c
        L6c:
            throw r12     // Catch: java.lang.Throwable -> L2c
        L6d:
            if (r18 == 0) goto L87
            java.util.concurrent.TimeUnit r13 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r13 = r4.poll(r5, r13)     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
            if (r13 == 0) goto L81
            long r14 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2c
            long r7 = r14 - r7
            long r5 = r5 - r7
            goto L8e
        L81:
            java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException     // Catch: java.lang.Throwable -> L2c
            r0.<init>()     // Catch: java.lang.Throwable -> L2c
            throw r0     // Catch: java.lang.Throwable -> L2c
        L87:
            java.lang.Object r13 = r4.take()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
        L8d:
            r14 = r7
        L8e:
            r6 = r5
            r5 = r0
            if (r13 == 0) goto Lb7
            int r11 = r11 + (-1)
            java.lang.Object r0 = r13.get()     // Catch: java.lang.Throwable -> L2c java.lang.RuntimeException -> Lad java.util.concurrent.ExecutionException -> Lb5
            java.util.Iterator r1 = r3.iterator()
        L9c:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto Lac
            java.lang.Object r3 = r1.next()
            java.util.concurrent.Future r3 = (java.util.concurrent.Future) r3
            r3.cancel(r2)
            goto L9c
        Lac:
            return r0
        Lad:
            r0 = move-exception
            r8 = r0
            java.util.concurrent.ExecutionException r12 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L2c
            r12.<init>(r8)     // Catch: java.lang.Throwable -> L2c
            goto Lb7
        Lb5:
            r0 = move-exception
            r12 = r0
        Lb7:
            r0 = r5
            r5 = r6
            r7 = r14
            goto L47
        Lbb:
            java.util.Iterator r1 = r3.iterator()
        Lbf:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto Lcf
            java.lang.Object r3 = r1.next()
            java.util.concurrent.Future r3 = (java.util.concurrent.Future) r3
            r3.cancel(r2)
            goto Lbf
        Lcf:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.x0.h(com.google.common.util.concurrent.u0, java.util.Collection, boolean, long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @h3.c
    private static boolean i() {
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            return false;
        }
        try {
            return Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    @h3.c
    public static u0 j(ExecutorService executorService) {
        if (executorService instanceof u0) {
            return (u0) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new i((ScheduledExecutorService) executorService) : new h(executorService);
    }

    @h3.c
    public static v0 k(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof v0 ? (v0) scheduledExecutorService : new i(scheduledExecutorService);
    }

    @h3.c
    public static u0 l() {
        return new g(null);
    }

    @h3.c
    @h3.a
    public static Executor m(Executor executor) {
        return new c1(executor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public static Thread n(String str, Runnable runnable) {
        com.google.common.base.a0.E(str);
        com.google.common.base.a0.E(runnable);
        Thread newThread = o().newThread(runnable);
        try {
            newThread.setName(str);
        } catch (SecurityException unused) {
        }
        return newThread;
    }

    @h3.c
    @h3.a
    public static ThreadFactory o() {
        if (!i()) {
            return Executors.defaultThreadFactory();
        }
        try {
            return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException e4) {
            e = e4;
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e);
        } catch (IllegalAccessException e10) {
            e = e10;
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e);
        } catch (NoSuchMethodException e11) {
            e = e11;
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e);
        } catch (InvocationTargetException e12) {
            throw com.google.common.base.k0.q(e12.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor p(Executor executor, com.google.common.util.concurrent.d<?> dVar) {
        com.google.common.base.a0.E(executor);
        com.google.common.base.a0.E(dVar);
        return executor == c() ? executor : new e(executor, dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public static Executor q(Executor executor, com.google.common.base.i0<String> i0Var) {
        com.google.common.base.a0.E(executor);
        com.google.common.base.a0.E(i0Var);
        return i() ? executor : new b(executor, i0Var);
    }

    @h3.c
    static ExecutorService r(ExecutorService executorService, com.google.common.base.i0<String> i0Var) {
        com.google.common.base.a0.E(executorService);
        com.google.common.base.a0.E(i0Var);
        return i() ? executorService : new c(executorService, i0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public static ScheduledExecutorService s(ScheduledExecutorService scheduledExecutorService, com.google.common.base.i0<String> i0Var) {
        com.google.common.base.a0.E(scheduledExecutorService);
        com.google.common.base.a0.E(i0Var);
        return i() ? scheduledExecutorService : new d(scheduledExecutorService, i0Var);
    }

    @CanIgnoreReturnValue
    @h3.c
    @h3.a
    public static boolean t(ExecutorService executorService, long j4, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j4) / 2;
        executorService.shutdown();
        try {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            if (!executorService.awaitTermination(nanos, timeUnit2)) {
                executorService.shutdownNow();
                executorService.awaitTermination(nanos, timeUnit2);
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }

    @h3.c
    private static <T> q0<T> u(u0 u0Var, Callable<T> callable, BlockingQueue<Future<T>> blockingQueue) {
        q0<T> submit = u0Var.submit((Callable) callable);
        submit.addListener(new a(blockingQueue, submit), c());
        return submit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @h3.c
    public static void v(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setThreadFactory(new i1().e(true).h(threadPoolExecutor.getThreadFactory()).b());
    }

    /* compiled from: MoreExecutors.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static final class g extends com.google.common.util.concurrent.g {

        /* renamed from: a  reason: collision with root package name */
        private final Object f35390a;
        @GuardedBy(org.aspectj.lang.c.f91028k)

        /* renamed from: b  reason: collision with root package name */
        private int f35391b;
        @GuardedBy(org.aspectj.lang.c.f91028k)

        /* renamed from: c  reason: collision with root package name */
        private boolean f35392c;

        private g() {
            this.f35390a = new Object();
            this.f35391b = 0;
            this.f35392c = false;
        }

        private void a() {
            synchronized (this.f35390a) {
                int i4 = this.f35391b - 1;
                this.f35391b = i4;
                if (i4 == 0) {
                    this.f35390a.notifyAll();
                }
            }
        }

        private void b() {
            synchronized (this.f35390a) {
                if (!this.f35392c) {
                    this.f35391b++;
                } else {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j4, TimeUnit timeUnit) throws InterruptedException {
            long nanos = timeUnit.toNanos(j4);
            synchronized (this.f35390a) {
                while (true) {
                    if (this.f35392c && this.f35391b == 0) {
                        return true;
                    }
                    if (nanos <= 0) {
                        return false;
                    }
                    long nanoTime = System.nanoTime();
                    TimeUnit.NANOSECONDS.timedWait(this.f35390a, nanos);
                    nanos -= System.nanoTime() - nanoTime;
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            b();
            try {
                runnable.run();
            } finally {
                a();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            boolean z9;
            synchronized (this.f35390a) {
                z9 = this.f35392c;
            }
            return z9;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            boolean z9;
            synchronized (this.f35390a) {
                z9 = this.f35392c && this.f35391b == 0;
            }
            return z9;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            synchronized (this.f35390a) {
                this.f35392c = true;
                if (this.f35391b == 0) {
                    this.f35390a.notifyAll();
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }

        /* synthetic */ g(a aVar) {
            this();
        }
    }
}
