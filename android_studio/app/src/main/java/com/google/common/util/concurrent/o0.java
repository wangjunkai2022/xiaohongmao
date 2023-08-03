package com.google.common.util.concurrent;

import com.google.j2objc.annotations.ReflectionSupport;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: InterruptibleTask.java */
@ReflectionSupport(ReflectionSupport.Level.FULL)
@h3.b(emulated = true)
/* loaded from: classes2.dex */
abstract class o0<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final Runnable f35299a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final Runnable f35300b = new b();

    /* renamed from: c  reason: collision with root package name */
    private static final Runnable f35301c = new b();

    /* renamed from: d  reason: collision with root package name */
    private static final int f35302d = 1000;

    /* compiled from: InterruptibleTask.java */
    /* loaded from: classes2.dex */
    private static final class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    abstract void a(@NullableDecl T t9, @NullableDecl Throwable th);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, f35300b)) {
            try {
                ((Thread) runnable).interrupt();
            } finally {
                if (getAndSet(f35299a) == f35301c) {
                    LockSupport.unpark((Thread) runnable);
                }
            }
        }
    }

    abstract boolean c();

    abstract T d() throws Exception;

    abstract String e();

    @Override // java.lang.Runnable
    public final void run() {
        T d4;
        Thread currentThread = Thread.currentThread();
        if (compareAndSet(null, currentThread)) {
            boolean z9 = !c();
            if (z9) {
                try {
                    d4 = d();
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, f35299a)) {
                        Runnable runnable = get();
                        boolean z10 = false;
                        int i4 = 0;
                        while (true) {
                            Runnable runnable2 = f35300b;
                            if (runnable != runnable2 && runnable != f35301c) {
                                break;
                            }
                            i4++;
                            if (i4 > 1000) {
                                Runnable runnable3 = f35301c;
                                if (runnable == runnable3 || compareAndSet(runnable2, runnable3)) {
                                    z10 = Thread.interrupted() || z10;
                                    LockSupport.park(this);
                                }
                            } else {
                                Thread.yield();
                            }
                            runnable = get();
                        }
                        if (z10) {
                            currentThread.interrupt();
                        }
                    }
                    if (z9) {
                        a(null, th);
                        return;
                    }
                    return;
                }
            } else {
                d4 = null;
            }
            if (!compareAndSet(currentThread, f35299a)) {
                Runnable runnable4 = get();
                boolean z11 = false;
                int i10 = 0;
                while (true) {
                    Runnable runnable5 = f35300b;
                    if (runnable4 != runnable5 && runnable4 != f35301c) {
                        break;
                    }
                    i10++;
                    if (i10 > 1000) {
                        Runnable runnable6 = f35301c;
                        if (runnable4 == runnable6 || compareAndSet(runnable5, runnable6)) {
                            z11 = Thread.interrupted() || z11;
                            LockSupport.park(this);
                        }
                    } else {
                        Thread.yield();
                    }
                    runnable4 = get();
                }
                if (z11) {
                    currentThread.interrupt();
                }
            }
            if (z9) {
                a(d4, null);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f35299a) {
            str = "running=[DONE]";
        } else if (runnable == f35300b) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        return str + ", " + e();
    }
}
