package com.google.common.util.concurrent;

import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SequentialExecutor.java */
@h3.c
/* loaded from: classes2.dex */
public final class c1 implements Executor {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f35046f = Logger.getLogger(c1.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final Executor f35047a;
    @GuardedBy("queue")

    /* renamed from: b  reason: collision with root package name */
    private final Deque<Runnable> f35048b = new ArrayDeque();
    @GuardedBy("queue")

    /* renamed from: c  reason: collision with root package name */
    private c f35049c = c.IDLE;
    @GuardedBy("queue")

    /* renamed from: d  reason: collision with root package name */
    private long f35050d = 0;

    /* renamed from: e  reason: collision with root package name */
    private final b f35051e = new b(this, null);

    /* compiled from: SequentialExecutor.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f35052a;

        a(Runnable runnable) {
            this.f35052a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35052a.run();
        }
    }

    /* compiled from: SequentialExecutor.java */
    /* loaded from: classes2.dex */
    private final class b implements Runnable {
        private b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
            if (r1 == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0050, code lost:
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
            r3.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0055, code lost:
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
            r4 = com.google.common.util.concurrent.c1.f35046f;
            r5 = java.util.logging.Level.SEVERE;
            r4.log(r5, "Exception while executing runnable " + r3, (java.lang.Throwable) r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void a() {
            /*
                r8 = this;
                r0 = 0
                r1 = 0
            L2:
                com.google.common.util.concurrent.c1 r2 = com.google.common.util.concurrent.c1.this     // Catch: java.lang.Throwable -> L74
                java.util.Deque r2 = com.google.common.util.concurrent.c1.a(r2)     // Catch: java.lang.Throwable -> L74
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L74
                if (r0 != 0) goto L2b
                com.google.common.util.concurrent.c1 r0 = com.google.common.util.concurrent.c1.this     // Catch: java.lang.Throwable -> L71
                com.google.common.util.concurrent.c1$c r0 = com.google.common.util.concurrent.c1.b(r0)     // Catch: java.lang.Throwable -> L71
                com.google.common.util.concurrent.c1$c r3 = com.google.common.util.concurrent.c1.c.RUNNING     // Catch: java.lang.Throwable -> L71
                if (r0 != r3) goto L20
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L71
                if (r1 == 0) goto L1f
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L1f:
                return
            L20:
                com.google.common.util.concurrent.c1 r0 = com.google.common.util.concurrent.c1.this     // Catch: java.lang.Throwable -> L71
                com.google.common.util.concurrent.c1.d(r0)     // Catch: java.lang.Throwable -> L71
                com.google.common.util.concurrent.c1 r0 = com.google.common.util.concurrent.c1.this     // Catch: java.lang.Throwable -> L71
                com.google.common.util.concurrent.c1.c(r0, r3)     // Catch: java.lang.Throwable -> L71
                r0 = 1
            L2b:
                com.google.common.util.concurrent.c1 r3 = com.google.common.util.concurrent.c1.this     // Catch: java.lang.Throwable -> L71
                java.util.Deque r3 = com.google.common.util.concurrent.c1.a(r3)     // Catch: java.lang.Throwable -> L71
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L71
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L71
                if (r3 != 0) goto L4b
                com.google.common.util.concurrent.c1 r0 = com.google.common.util.concurrent.c1.this     // Catch: java.lang.Throwable -> L71
                com.google.common.util.concurrent.c1$c r3 = com.google.common.util.concurrent.c1.c.IDLE     // Catch: java.lang.Throwable -> L71
                com.google.common.util.concurrent.c1.c(r0, r3)     // Catch: java.lang.Throwable -> L71
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L71
                if (r1 == 0) goto L4a
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L4a:
                return
            L4b:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L71
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L74
                r1 = r1 | r2
                r3.run()     // Catch: java.lang.RuntimeException -> L55 java.lang.Throwable -> L74
                goto L2
            L55:
                r2 = move-exception
                java.util.logging.Logger r4 = com.google.common.util.concurrent.c1.e()     // Catch: java.lang.Throwable -> L74
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L74
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L74
                r6.<init>()     // Catch: java.lang.Throwable -> L74
                java.lang.String r7 = "Exception while executing runnable "
                r6.append(r7)     // Catch: java.lang.Throwable -> L74
                r6.append(r3)     // Catch: java.lang.Throwable -> L74
                java.lang.String r3 = r6.toString()     // Catch: java.lang.Throwable -> L74
                r4.log(r5, r3, r2)     // Catch: java.lang.Throwable -> L74
                goto L2
            L71:
                r0 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L71
                throw r0     // Catch: java.lang.Throwable -> L74
            L74:
                r0 = move-exception
                if (r1 == 0) goto L7e
                java.lang.Thread r1 = java.lang.Thread.currentThread()
                r1.interrupt()
            L7e:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.c1.b.a():void");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a();
            } catch (Error e4) {
                synchronized (c1.this.f35048b) {
                    c1.this.f35049c = c.IDLE;
                    throw e4;
                }
            }
        }

        /* synthetic */ b(c1 c1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SequentialExecutor.java */
    /* loaded from: classes2.dex */
    public enum c {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c1(Executor executor) {
        this.f35047a = (Executor) com.google.common.base.a0.E(executor);
    }

    static /* synthetic */ long d(c1 c1Var) {
        long j4 = c1Var.f35050d;
        c1Var.f35050d = 1 + j4;
        return j4;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        c cVar;
        com.google.common.base.a0.E(runnable);
        synchronized (this.f35048b) {
            c cVar2 = this.f35049c;
            if (cVar2 != c.RUNNING && cVar2 != (cVar = c.QUEUED)) {
                long j4 = this.f35050d;
                a aVar = new a(runnable);
                this.f35048b.add(aVar);
                c cVar3 = c.QUEUING;
                this.f35049c = cVar3;
                try {
                    this.f35047a.execute(this.f35051e);
                    if (this.f35049c != cVar3) {
                        return;
                    }
                    synchronized (this.f35048b) {
                        if (this.f35050d == j4 && this.f35049c == cVar3) {
                            this.f35049c = cVar;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e4) {
                    synchronized (this.f35048b) {
                        c cVar4 = this.f35049c;
                        if ((cVar4 != c.IDLE && cVar4 != c.QUEUING) || !this.f35048b.removeLastOccurrence(aVar)) {
                            r0 = false;
                        }
                        if (!(e4 instanceof RejectedExecutionException) || r0) {
                            throw e4;
                        }
                    }
                    return;
                }
            }
            this.f35048b.add(runnable);
        }
    }
}
