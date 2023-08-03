package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscribers.BlockingSubscriber;
import io.reactivex.internal.subscribers.BoundedSubscriber;
import io.reactivex.internal.subscribers.LambdaSubscriber;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: FlowableBlockingSubscribe.java */
/* loaded from: classes3.dex */
public final class l {
    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void a(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.util.d dVar = new io.reactivex.internal.util.d();
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(io.reactivex.internal.functions.a.h(), dVar, dVar, io.reactivex.internal.functions.a.f71138l);
        cVar.i(lambdaSubscriber);
        io.reactivex.internal.util.c.a(dVar, lambdaSubscriber);
        Throwable th = dVar.f75914a;
        if (th != null) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    public static <T> void b(org.reactivestreams.c<? extends T> cVar, n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        d(cVar, new LambdaSubscriber(gVar, gVar2, aVar, io.reactivex.internal.functions.a.f71138l));
    }

    public static <T> void c(org.reactivestreams.c<? extends T> cVar, n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, int i4) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.b.h(i4, "number > 0 required");
        d(cVar, new BoundedSubscriber(gVar, gVar2, aVar, io.reactivex.internal.functions.a.d(i4), i4));
    }

    public static <T> void d(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.d<? super T> dVar) {
        Object poll;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        BlockingSubscriber blockingSubscriber = new BlockingSubscriber(linkedBlockingQueue);
        cVar.i(blockingSubscriber);
        do {
            try {
                if (blockingSubscriber.isCancelled()) {
                    return;
                }
                poll = linkedBlockingQueue.poll();
                if (poll == null) {
                    if (blockingSubscriber.isCancelled()) {
                        return;
                    }
                    io.reactivex.internal.util.c.b();
                    poll = linkedBlockingQueue.take();
                }
                if (blockingSubscriber.isCancelled() || poll == BlockingSubscriber.TERMINATED) {
                    return;
                }
            } catch (InterruptedException e4) {
                blockingSubscriber.cancel();
                dVar.onError(e4);
                return;
            }
        } while (!NotificationLite.acceptFull(poll, dVar));
    }
}
