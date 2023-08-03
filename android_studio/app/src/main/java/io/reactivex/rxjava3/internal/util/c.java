package io.reactivex.rxjava3.internal.util;

import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingHelper.java */
/* loaded from: classes4.dex */
public final class c {
    private c() {
        throw new IllegalStateException("No instances!");
    }

    public static void a(CountDownLatch latch, io.reactivex.rxjava3.disposables.f subscription) {
        if (latch.getCount() == 0) {
            return;
        }
        try {
            b();
            latch.await();
        } catch (InterruptedException e4) {
            subscription.dispose();
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e4);
        }
    }

    public static void b() {
        if (io.reactivex.rxjava3.plugins.a.L()) {
            if ((Thread.currentThread() instanceof io.reactivex.rxjava3.internal.schedulers.j) || io.reactivex.rxjava3.plugins.a.W()) {
                throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
            }
        }
    }
}
