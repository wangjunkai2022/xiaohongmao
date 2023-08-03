package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import java.util.Objects;

/* compiled from: ObservableBlockingSubscribe.java */
/* loaded from: classes4.dex */
public final class l {
    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void a(io.reactivex.rxjava3.core.l0<? extends T> o9) {
        io.reactivex.rxjava3.internal.util.d dVar = new io.reactivex.rxjava3.internal.util.d();
        LambdaObserver lambdaObserver = new LambdaObserver(io.reactivex.rxjava3.internal.functions.a.h(), dVar, dVar, io.reactivex.rxjava3.internal.functions.a.h());
        o9.a(lambdaObserver);
        io.reactivex.rxjava3.internal.util.c.a(dVar, lambdaObserver);
        Throwable th = dVar.f81329a;
        if (th != null) {
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> void b(io.reactivex.rxjava3.core.l0<? extends T> r3, io.reactivex.rxjava3.core.n0<? super T> r4) {
        /*
            java.util.concurrent.LinkedBlockingQueue r0 = new java.util.concurrent.LinkedBlockingQueue
            r0.<init>()
            io.reactivex.rxjava3.internal.observers.BlockingObserver r1 = new io.reactivex.rxjava3.internal.observers.BlockingObserver
            r1.<init>(r0)
            r4.onSubscribe(r1)
            r3.a(r1)
        L10:
            boolean r3 = r1.isDisposed()
            if (r3 == 0) goto L17
            goto L3a
        L17:
            java.lang.Object r3 = r0.poll()
            if (r3 != 0) goto L2a
            java.lang.Object r3 = r0.take()     // Catch: java.lang.InterruptedException -> L22
            goto L2a
        L22:
            r3 = move-exception
            r1.dispose()
            r4.onError(r3)
            return
        L2a:
            boolean r2 = r1.isDisposed()
            if (r2 != 0) goto L3a
            java.lang.Object r2 = io.reactivex.rxjava3.internal.observers.BlockingObserver.TERMINATED
            if (r3 == r2) goto L3a
            boolean r3 = io.reactivex.rxjava3.internal.util.NotificationLite.acceptFull(r3, r4)
            if (r3 == 0) goto L10
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.observable.l.b(io.reactivex.rxjava3.core.l0, io.reactivex.rxjava3.core.n0):void");
    }

    public static <T> void c(io.reactivex.rxjava3.core.l0<? extends T> o9, final q7.g<? super T> onNext, final q7.g<? super Throwable> onError, final q7.a onComplete) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        b(o9, new LambdaObserver(onNext, onError, onComplete, io.reactivex.rxjava3.internal.functions.a.h()));
    }
}
