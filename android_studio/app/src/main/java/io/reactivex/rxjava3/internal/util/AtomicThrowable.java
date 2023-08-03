package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.y;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class AtomicThrowable extends AtomicReference<Throwable> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f81311a = 3949248817947090603L;

    public boolean isTerminated() {
        return get() == g.f81331a;
    }

    public Throwable terminate() {
        return g.f(this);
    }

    public boolean tryAddThrowable(Throwable t9) {
        return g.a(this, t9);
    }

    public boolean tryAddThrowableOrReport(Throwable t9) {
        if (tryAddThrowable(t9)) {
            return true;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
        return false;
    }

    public void tryTerminateAndReport() {
        Throwable terminate = terminate();
        if (terminate == null || terminate == g.f81331a) {
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(terminate);
    }

    public void tryTerminateConsumer(org.reactivestreams.d<?> consumer) {
        Throwable terminate = terminate();
        if (terminate == null) {
            consumer.onComplete();
        } else if (terminate != g.f81331a) {
            consumer.onError(terminate);
        }
    }

    public void tryTerminateConsumer(n0<?> consumer) {
        Throwable terminate = terminate();
        if (terminate == null) {
            consumer.onComplete();
        } else if (terminate != g.f81331a) {
            consumer.onError(terminate);
        }
    }

    public void tryTerminateConsumer(y<?> consumer) {
        Throwable terminate = terminate();
        if (terminate == null) {
            consumer.onComplete();
        } else if (terminate != g.f81331a) {
            consumer.onError(terminate);
        }
    }

    public void tryTerminateConsumer(s0<?> consumer) {
        Throwable terminate = terminate();
        if (terminate == null || terminate == g.f81331a) {
            return;
        }
        consumer.onError(terminate);
    }

    public void tryTerminateConsumer(io.reactivex.rxjava3.core.d consumer) {
        Throwable terminate = terminate();
        if (terminate == null) {
            consumer.onComplete();
        } else if (terminate != g.f81331a) {
            consumer.onError(terminate);
        }
    }

    public void tryTerminateConsumer(io.reactivex.rxjava3.core.i<?> consumer) {
        Throwable terminate = terminate();
        if (terminate == null) {
            consumer.onComplete();
        } else if (terminate != g.f81331a) {
            consumer.onError(terminate);
        }
    }
}
