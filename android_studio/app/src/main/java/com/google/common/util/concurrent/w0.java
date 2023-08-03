package com.google.common.util.concurrent;

import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.Weak;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Monitor.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class w0 {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f35368a;

    /* renamed from: b  reason: collision with root package name */
    private final ReentrantLock f35369b;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private a f35370c;

    /* compiled from: Monitor.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static abstract class a {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final w0 f35371a;

        /* renamed from: b  reason: collision with root package name */
        final Condition f35372b;
        @GuardedBy("monitor.lock")

        /* renamed from: c  reason: collision with root package name */
        int f35373c = 0;
        @NullableDecl
        @GuardedBy("monitor.lock")

        /* renamed from: d  reason: collision with root package name */
        a f35374d;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(w0 w0Var) {
            this.f35371a = (w0) com.google.common.base.a0.F(w0Var, "monitor");
            this.f35372b = w0Var.f35369b.newCondition();
        }

        public abstract boolean a();
    }

    public w0() {
        this(false);
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private boolean C(a aVar) {
        try {
            return aVar.a();
        } catch (Throwable th) {
            F();
            throw th;
        }
    }

    private static long E(long j4, long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        return j10 - (System.nanoTime() - j4);
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void F() {
        for (a aVar = this.f35370c; aVar != null; aVar = aVar.f35374d) {
            aVar.f35372b.signalAll();
        }
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void G() {
        for (a aVar = this.f35370c; aVar != null; aVar = aVar.f35374d) {
            if (C(aVar)) {
                aVar.f35372b.signal();
                return;
            }
        }
    }

    private static long H(long j4, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j4);
        if (nanos <= 0) {
            return 0L;
        }
        if (nanos > 6917529027641081853L) {
            return 6917529027641081853L;
        }
        return nanos;
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void b(a aVar, boolean z9) throws InterruptedException {
        if (z9) {
            G();
        }
        e(aVar);
        do {
            try {
                aVar.f35372b.await();
            } finally {
                f(aVar);
            }
        } while (!aVar.a());
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private boolean c(a aVar, long j4, boolean z9) throws InterruptedException {
        boolean z10 = true;
        while (j4 > 0) {
            if (z10) {
                if (z9) {
                    try {
                        G();
                    } finally {
                        if (!z10) {
                            f(aVar);
                        }
                    }
                }
                e(aVar);
                z10 = false;
            }
            j4 = aVar.f35372b.awaitNanos(j4);
            if (aVar.a()) {
                if (!z10) {
                    f(aVar);
                }
                return true;
            }
        }
        return false;
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void d(a aVar, boolean z9) {
        if (z9) {
            G();
        }
        e(aVar);
        do {
            try {
                aVar.f35372b.awaitUninterruptibly();
            } finally {
                f(aVar);
            }
        } while (!aVar.a());
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void e(a aVar) {
        int i4 = aVar.f35373c;
        aVar.f35373c = i4 + 1;
        if (i4 == 0) {
            aVar.f35374d = this.f35370c;
            this.f35370c = aVar;
        }
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void f(a aVar) {
        int i4 = aVar.f35373c - 1;
        aVar.f35373c = i4;
        if (i4 == 0) {
            a aVar2 = this.f35370c;
            a aVar3 = null;
            while (aVar2 != aVar) {
                aVar3 = aVar2;
                aVar2 = aVar2.f35374d;
            }
            if (aVar3 == null) {
                this.f35370c = aVar2.f35374d;
            } else {
                aVar3.f35374d = aVar2.f35374d;
            }
            aVar2.f35374d = null;
        }
    }

    private static long y(long j4) {
        if (j4 <= 0) {
            return 0L;
        }
        long nanoTime = System.nanoTime();
        if (nanoTime == 0) {
            return 1L;
        }
        return nanoTime;
    }

    public boolean A() {
        return this.f35369b.isLocked();
    }

    public boolean B() {
        return this.f35369b.isHeldByCurrentThread();
    }

    public void D() {
        ReentrantLock reentrantLock = this.f35369b;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                G();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean I() {
        return this.f35369b.tryLock();
    }

    public boolean J(a aVar) {
        if (aVar.f35371a == this) {
            ReentrantLock reentrantLock = this.f35369b;
            if (reentrantLock.tryLock()) {
                try {
                    boolean a10 = aVar.a();
                    if (!a10) {
                    }
                    return a10;
                } finally {
                    reentrantLock.unlock();
                }
            }
            return false;
        }
        throw new IllegalMonitorStateException();
    }

    public void K(a aVar) throws InterruptedException {
        if ((aVar.f35371a == this) & this.f35369b.isHeldByCurrentThread()) {
            if (aVar.a()) {
                return;
            }
            b(aVar, true);
            return;
        }
        throw new IllegalMonitorStateException();
    }

    public boolean L(a aVar, long j4, TimeUnit timeUnit) throws InterruptedException {
        long H = H(j4, timeUnit);
        if ((aVar.f35371a == this) & this.f35369b.isHeldByCurrentThread()) {
            if (aVar.a()) {
                return true;
            }
            if (!Thread.interrupted()) {
                return c(aVar, H, true);
            }
            throw new InterruptedException();
        }
        throw new IllegalMonitorStateException();
    }

    public void M(a aVar) {
        if ((aVar.f35371a == this) & this.f35369b.isHeldByCurrentThread()) {
            if (aVar.a()) {
                return;
            }
            d(aVar, true);
            return;
        }
        throw new IllegalMonitorStateException();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean N(com.google.common.util.concurrent.w0.a r8, long r9, java.util.concurrent.TimeUnit r11) {
        /*
            r7 = this;
            long r9 = H(r9, r11)
            com.google.common.util.concurrent.w0 r11 = r8.f35371a
            r0 = 0
            r1 = 1
            if (r11 != r7) goto Lc
            r11 = 1
            goto Ld
        Lc:
            r11 = 0
        Ld:
            java.util.concurrent.locks.ReentrantLock r2 = r7.f35369b
            boolean r2 = r2.isHeldByCurrentThread()
            r11 = r11 & r2
            if (r11 == 0) goto L58
            boolean r11 = r8.a()
            if (r11 == 0) goto L1d
            return r1
        L1d:
            long r2 = y(r9)
            boolean r11 = java.lang.Thread.interrupted()
            r4 = r9
            r6 = 1
        L27:
            boolean r8 = r7.c(r8, r4, r6)     // Catch: java.lang.Throwable -> L35 java.lang.InterruptedException -> L38
            if (r11 == 0) goto L34
            java.lang.Thread r9 = java.lang.Thread.currentThread()
            r9.interrupt()
        L34:
            return r8
        L35:
            r8 = move-exception
            r1 = r11
            goto L4e
        L38:
            boolean r11 = r8.a()     // Catch: java.lang.Throwable -> L4d
            if (r11 == 0) goto L46
            java.lang.Thread r8 = java.lang.Thread.currentThread()
            r8.interrupt()
            return r1
        L46:
            long r4 = E(r2, r9)     // Catch: java.lang.Throwable -> L4d
            r11 = 1
            r6 = 0
            goto L27
        L4d:
            r8 = move-exception
        L4e:
            if (r1 == 0) goto L57
            java.lang.Thread r9 = java.lang.Thread.currentThread()
            r9.interrupt()
        L57:
            throw r8
        L58:
            java.lang.IllegalMonitorStateException r8 = new java.lang.IllegalMonitorStateException
            r8.<init>()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.w0.N(com.google.common.util.concurrent.w0$a, long, java.util.concurrent.TimeUnit):boolean");
    }

    public void g() {
        this.f35369b.lock();
    }

    public boolean h(long j4, TimeUnit timeUnit) {
        boolean tryLock;
        long H = H(j4, timeUnit);
        ReentrantLock reentrantLock = this.f35369b;
        boolean z9 = true;
        if (!this.f35368a && reentrantLock.tryLock()) {
            return true;
        }
        boolean interrupted = Thread.interrupted();
        try {
            long nanoTime = System.nanoTime();
            long j10 = H;
            while (true) {
                try {
                    try {
                        tryLock = reentrantLock.tryLock(j10, TimeUnit.NANOSECONDS);
                        break;
                    } catch (InterruptedException unused) {
                        j10 = E(nanoTime, H);
                        interrupted = true;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (z9) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
            return tryLock;
        } catch (Throwable th2) {
            th = th2;
            z9 = interrupted;
        }
    }

    public boolean i(a aVar) {
        if (aVar.f35371a == this) {
            ReentrantLock reentrantLock = this.f35369b;
            reentrantLock.lock();
            try {
                boolean a10 = aVar.a();
                if (!a10) {
                }
                return a10;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean j(a aVar, long j4, TimeUnit timeUnit) {
        if (aVar.f35371a == this) {
            if (h(j4, timeUnit)) {
                try {
                    boolean a10 = aVar.a();
                    if (!a10) {
                    }
                    return a10;
                } finally {
                    this.f35369b.unlock();
                }
            }
            return false;
        }
        throw new IllegalMonitorStateException();
    }

    public boolean k(a aVar) throws InterruptedException {
        if (aVar.f35371a == this) {
            ReentrantLock reentrantLock = this.f35369b;
            reentrantLock.lockInterruptibly();
            try {
                boolean a10 = aVar.a();
                if (!a10) {
                }
                return a10;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean l(a aVar, long j4, TimeUnit timeUnit) throws InterruptedException {
        if (aVar.f35371a == this) {
            ReentrantLock reentrantLock = this.f35369b;
            if (reentrantLock.tryLock(j4, timeUnit)) {
                try {
                    boolean a10 = aVar.a();
                    if (!a10) {
                    }
                    return a10;
                } finally {
                    reentrantLock.unlock();
                }
            }
            return false;
        }
        throw new IllegalMonitorStateException();
    }

    public void m() throws InterruptedException {
        this.f35369b.lockInterruptibly();
    }

    public boolean n(long j4, TimeUnit timeUnit) throws InterruptedException {
        return this.f35369b.tryLock(j4, timeUnit);
    }

    public void o(a aVar) throws InterruptedException {
        if (aVar.f35371a == this) {
            ReentrantLock reentrantLock = this.f35369b;
            boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
            reentrantLock.lockInterruptibly();
            try {
                if (aVar.a()) {
                    return;
                }
                b(aVar, isHeldByCurrentThread);
                return;
            } catch (Throwable th) {
                D();
                throw th;
            }
        }
        throw new IllegalMonitorStateException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0047, code lost:
        if (c(r11, r0, r3) != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004c A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean p(com.google.common.util.concurrent.w0.a r11, long r12, java.util.concurrent.TimeUnit r14) throws java.lang.InterruptedException {
        /*
            r10 = this;
            long r0 = H(r12, r14)
            com.google.common.util.concurrent.w0 r2 = r11.f35371a
            if (r2 != r10) goto L60
            java.util.concurrent.locks.ReentrantLock r2 = r10.f35369b
            boolean r3 = r2.isHeldByCurrentThread()
            boolean r4 = r10.f35368a
            r5 = 0
            r6 = 0
            if (r4 != 0) goto L29
            boolean r4 = java.lang.Thread.interrupted()
            if (r4 != 0) goto L23
            boolean r4 = r2.tryLock()
            if (r4 == 0) goto L29
            r8 = r6
            goto L34
        L23:
            java.lang.InterruptedException r11 = new java.lang.InterruptedException
            r11.<init>()
            throw r11
        L29:
            long r8 = y(r0)
            boolean r12 = r2.tryLock(r12, r14)
            if (r12 != 0) goto L34
            return r5
        L34:
            boolean r12 = r11.a()     // Catch: java.lang.Throwable -> L50
            if (r12 != 0) goto L49
            int r12 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r12 != 0) goto L3f
            goto L43
        L3f:
            long r0 = E(r8, r0)     // Catch: java.lang.Throwable -> L50
        L43:
            boolean r11 = r10.c(r11, r0, r3)     // Catch: java.lang.Throwable -> L50
            if (r11 == 0) goto L4a
        L49:
            r5 = 1
        L4a:
            if (r5 != 0) goto L4f
            r2.unlock()
        L4f:
            return r5
        L50:
            r11 = move-exception
            if (r3 != 0) goto L5c
            r10.G()     // Catch: java.lang.Throwable -> L57
            goto L5c
        L57:
            r11 = move-exception
            r2.unlock()
            throw r11
        L5c:
            r2.unlock()
            throw r11
        L60:
            java.lang.IllegalMonitorStateException r11 = new java.lang.IllegalMonitorStateException
            r11.<init>()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.w0.p(com.google.common.util.concurrent.w0$a, long, java.util.concurrent.TimeUnit):boolean");
    }

    public void q(a aVar) {
        if (aVar.f35371a == this) {
            ReentrantLock reentrantLock = this.f35369b;
            boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
            reentrantLock.lock();
            try {
                if (aVar.a()) {
                    return;
                }
                d(aVar, isHeldByCurrentThread);
                return;
            } catch (Throwable th) {
                D();
                throw th;
            }
        }
        throw new IllegalMonitorStateException();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004b A[Catch: all -> 0x0073, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0073, blocks: (B:5:0x0013, B:7:0x001a, B:24:0x004b, B:11:0x0023, B:13:0x0028, B:15:0x0030, B:20:0x003b, B:22:0x0045, B:21:0x0041), top: B:45:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean r(com.google.common.util.concurrent.w0.a r12, long r13, java.util.concurrent.TimeUnit r15) {
        /*
            r11 = this;
            long r13 = H(r13, r15)
            com.google.common.util.concurrent.w0 r15 = r12.f35371a
            if (r15 != r11) goto L7e
            java.util.concurrent.locks.ReentrantLock r15 = r11.f35369b
            boolean r0 = r15.isHeldByCurrentThread()
            boolean r1 = java.lang.Thread.interrupted()
            r2 = 1
            boolean r3 = r11.f35368a     // Catch: java.lang.Throwable -> L73
            r4 = 0
            r5 = 0
            if (r3 != 0) goto L23
            boolean r3 = r15.tryLock()     // Catch: java.lang.Throwable -> L73
            if (r3 != 0) goto L21
            goto L23
        L21:
            r7 = r5
            goto L30
        L23:
            long r7 = y(r13)     // Catch: java.lang.Throwable -> L73
            r9 = r13
        L28:
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.InterruptedException -> L6a java.lang.Throwable -> L73
            boolean r3 = r15.tryLock(r9, r3)     // Catch: java.lang.InterruptedException -> L6a java.lang.Throwable -> L73
            if (r3 == 0) goto L60
        L30:
            boolean r3 = r12.a()     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
            if (r3 == 0) goto L37
            goto L49
        L37:
            int r3 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r3 != 0) goto L41
            long r7 = y(r13)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
            r9 = r13
            goto L45
        L41:
            long r9 = E(r7, r13)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
        L45:
            boolean r2 = r11.c(r12, r9, r0)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
        L49:
            if (r2 != 0) goto L4e
            r15.unlock()     // Catch: java.lang.Throwable -> L73
        L4e:
            if (r1 == 0) goto L57
            java.lang.Thread r12 = java.lang.Thread.currentThread()
            r12.interrupt()
        L57:
            return r2
        L58:
            r12 = move-exception
            r15.unlock()     // Catch: java.lang.Throwable -> L73
            throw r12     // Catch: java.lang.Throwable -> L73
        L5d:
            r0 = 0
            r1 = 1
            goto L30
        L60:
            if (r1 == 0) goto L69
            java.lang.Thread r12 = java.lang.Thread.currentThread()
            r12.interrupt()
        L69:
            return r4
        L6a:
            long r9 = E(r7, r13)     // Catch: java.lang.Throwable -> L70
            r1 = 1
            goto L28
        L70:
            r12 = move-exception
            r1 = 1
            goto L74
        L73:
            r12 = move-exception
        L74:
            if (r1 == 0) goto L7d
            java.lang.Thread r13 = java.lang.Thread.currentThread()
            r13.interrupt()
        L7d:
            throw r12
        L7e:
            java.lang.IllegalMonitorStateException r12 = new java.lang.IllegalMonitorStateException
            r12.<init>()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.w0.r(com.google.common.util.concurrent.w0$a, long, java.util.concurrent.TimeUnit):boolean");
    }

    public int s() {
        return this.f35369b.getHoldCount();
    }

    public int t() {
        return this.f35369b.getQueueLength();
    }

    public int u(a aVar) {
        if (aVar.f35371a == this) {
            this.f35369b.lock();
            try {
                return aVar.f35373c;
            } finally {
                this.f35369b.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean v(Thread thread) {
        return this.f35369b.hasQueuedThread(thread);
    }

    public boolean w() {
        return this.f35369b.hasQueuedThreads();
    }

    public boolean x(a aVar) {
        return u(aVar) > 0;
    }

    public boolean z() {
        return this.f35368a;
    }

    public w0(boolean z9) {
        this.f35370c = null;
        this.f35368a = z9;
        this.f35369b = new ReentrantLock(z9);
    }
}
