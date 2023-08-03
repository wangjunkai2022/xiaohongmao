package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.LambdaObserver;

/* compiled from: ObservableBlockingSubscribe.java */
/* loaded from: classes3.dex */
public final class l {
    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void a(io.reactivex.e0<? extends T> e0Var) {
        io.reactivex.internal.util.d dVar = new io.reactivex.internal.util.d();
        LambdaObserver lambdaObserver = new LambdaObserver(io.reactivex.internal.functions.a.h(), dVar, dVar, io.reactivex.internal.functions.a.h());
        e0Var.subscribe(lambdaObserver);
        io.reactivex.internal.util.c.a(dVar, lambdaObserver);
        Throwable th = dVar.f75914a;
        if (th != null) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> void b(io.reactivex.e0<? extends T> r3, io.reactivex.g0<? super T> r4) {
        /*
            java.util.concurrent.LinkedBlockingQueue r0 = new java.util.concurrent.LinkedBlockingQueue
            r0.<init>()
            io.reactivex.internal.observers.BlockingObserver r1 = new io.reactivex.internal.observers.BlockingObserver
            r1.<init>(r0)
            r4.onSubscribe(r1)
            r3.subscribe(r1)
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
            java.lang.Object r2 = io.reactivex.internal.observers.BlockingObserver.TERMINATED
            if (r3 == r2) goto L3a
            boolean r3 = io.reactivex.internal.util.NotificationLite.acceptFull(r3, r4)
            if (r3 == 0) goto L10
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.l.b(io.reactivex.e0, io.reactivex.g0):void");
    }

    public static <T> void c(io.reactivex.e0<? extends T> e0Var, n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        b(e0Var, new LambdaObserver(gVar, gVar2, aVar, io.reactivex.internal.functions.a.h()));
    }
}
