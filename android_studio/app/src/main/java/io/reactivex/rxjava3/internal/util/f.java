package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.exceptions.ProtocolViolationException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: EndConsumerHelper.java */
/* loaded from: classes4.dex */
public final class f {
    private f() {
        throw new IllegalStateException("No instances!");
    }

    public static String a(String consumer) {
        return "It is not allowed to subscribe with a(n) " + consumer + " multiple times. Please create a fresh instance of " + consumer + " and subscribe that to the target source instead.";
    }

    public static void b(Class<?> consumer) {
        io.reactivex.rxjava3.plugins.a.Y(new ProtocolViolationException(a(consumer.getName())));
    }

    public static boolean c(AtomicReference<io.reactivex.rxjava3.disposables.f> upstream, io.reactivex.rxjava3.disposables.f next, Class<?> observer) {
        Objects.requireNonNull(next, "next is null");
        if (upstream.compareAndSet(null, next)) {
            return true;
        }
        next.dispose();
        if (upstream.get() != DisposableHelper.DISPOSED) {
            b(observer);
            return false;
        }
        return false;
    }

    public static boolean d(AtomicReference<org.reactivestreams.e> upstream, org.reactivestreams.e next, Class<?> subscriber) {
        Objects.requireNonNull(next, "next is null");
        if (upstream.compareAndSet(null, next)) {
            return true;
        }
        next.cancel();
        if (upstream.get() != SubscriptionHelper.CANCELLED) {
            b(subscriber);
            return false;
        }
        return false;
    }

    public static boolean e(io.reactivex.rxjava3.disposables.f upstream, io.reactivex.rxjava3.disposables.f next, Class<?> observer) {
        Objects.requireNonNull(next, "next is null");
        if (upstream != null) {
            next.dispose();
            if (upstream != DisposableHelper.DISPOSED) {
                b(observer);
                return false;
            }
            return false;
        }
        return true;
    }

    public static boolean f(org.reactivestreams.e upstream, org.reactivestreams.e next, Class<?> subscriber) {
        Objects.requireNonNull(next, "next is null");
        if (upstream != null) {
            next.cancel();
            if (upstream != SubscriptionHelper.CANCELLED) {
                b(subscriber);
                return false;
            }
            return false;
        }
        return true;
    }
}
