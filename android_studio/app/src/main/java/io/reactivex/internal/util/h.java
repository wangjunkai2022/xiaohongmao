package io.reactivex.internal.util;

import io.reactivex.g0;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: HalfSerializer.java */
/* loaded from: classes4.dex */
public final class h {
    private h() {
        throw new IllegalStateException("No instances!");
    }

    public static void a(g0<?> g0Var, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable terminate = atomicThrowable.terminate();
            if (terminate != null) {
                g0Var.onError(terminate);
            } else {
                g0Var.onComplete();
            }
        }
    }

    public static void b(org.reactivestreams.d<?> dVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable terminate = atomicThrowable.terminate();
            if (terminate != null) {
                dVar.onError(terminate);
            } else {
                dVar.onComplete();
            }
        }
    }

    public static void c(g0<?> g0Var, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicThrowable.addThrowable(th)) {
            if (atomicInteger.getAndIncrement() == 0) {
                g0Var.onError(atomicThrowable.terminate());
                return;
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    public static void d(org.reactivestreams.d<?> dVar, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicThrowable.addThrowable(th)) {
            if (atomicInteger.getAndIncrement() == 0) {
                dVar.onError(atomicThrowable.terminate());
                return;
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void e(g0<? super T> g0Var, T t9, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            g0Var.onNext(t9);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable terminate = atomicThrowable.terminate();
                if (terminate != null) {
                    g0Var.onError(terminate);
                } else {
                    g0Var.onComplete();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void f(org.reactivestreams.d<? super T> dVar, T t9, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            dVar.onNext(t9);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable terminate = atomicThrowable.terminate();
                if (terminate != null) {
                    dVar.onError(terminate);
                } else {
                    dVar.onComplete();
                }
            }
        }
    }
}
