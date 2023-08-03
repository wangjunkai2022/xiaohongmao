package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.n0;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: HalfSerializer.java */
/* loaded from: classes4.dex */
public final class h {
    private h() {
        throw new IllegalStateException("No instances!");
    }

    public static void a(n0<?> observer, AtomicInteger wip, AtomicThrowable errors) {
        if (wip.getAndIncrement() == 0) {
            errors.tryTerminateConsumer(observer);
        }
    }

    public static void b(org.reactivestreams.d<?> subscriber, AtomicInteger wip, AtomicThrowable errors) {
        if (wip.getAndIncrement() == 0) {
            errors.tryTerminateConsumer(subscriber);
        }
    }

    public static void c(n0<?> observer, Throwable ex, AtomicInteger wip, AtomicThrowable errors) {
        if (errors.tryAddThrowableOrReport(ex) && wip.getAndIncrement() == 0) {
            errors.tryTerminateConsumer(observer);
        }
    }

    public static void d(org.reactivestreams.d<?> subscriber, Throwable ex, AtomicInteger wip, AtomicThrowable errors) {
        if (errors.tryAddThrowableOrReport(ex) && wip.getAndIncrement() == 0) {
            errors.tryTerminateConsumer(subscriber);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void e(n0<? super T> observer, T value, AtomicInteger wip, AtomicThrowable errors) {
        if (wip.get() == 0 && wip.compareAndSet(0, 1)) {
            observer.onNext(value);
            if (wip.decrementAndGet() != 0) {
                errors.tryTerminateConsumer(observer);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> boolean f(org.reactivestreams.d<? super T> subscriber, T value, AtomicInteger wip, AtomicThrowable errors) {
        if (wip.get() == 0 && wip.compareAndSet(0, 1)) {
            subscriber.onNext(value);
            if (wip.decrementAndGet() == 0) {
                return true;
            }
            errors.tryTerminateConsumer(subscriber);
        }
        return false;
    }
}
