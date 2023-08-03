package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscribers.BlockingSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BoundedSubscriber;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: FlowableBlockingSubscribe.java */
/* loaded from: classes4.dex */
public final class l {
    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void a(org.reactivestreams.c<? extends T> source) {
        io.reactivex.rxjava3.internal.util.d dVar = new io.reactivex.rxjava3.internal.util.d();
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(io.reactivex.rxjava3.internal.functions.a.h(), dVar, dVar, io.reactivex.rxjava3.internal.functions.a.f76190k);
        source.i(lambdaSubscriber);
        io.reactivex.rxjava3.internal.util.c.a(dVar, lambdaSubscriber);
        Throwable th = dVar.f81329a;
        if (th != null) {
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    public static <T> void b(org.reactivestreams.c<? extends T> source, org.reactivestreams.d<? super T> subscriber) {
        Object poll;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        BlockingSubscriber blockingSubscriber = new BlockingSubscriber(linkedBlockingQueue);
        source.i(blockingSubscriber);
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
                    io.reactivex.rxjava3.internal.util.c.b();
                    poll = linkedBlockingQueue.take();
                }
                if (blockingSubscriber.isCancelled() || poll == BlockingSubscriber.TERMINATED) {
                    return;
                }
            } catch (InterruptedException e4) {
                blockingSubscriber.cancel();
                subscriber.onError(e4);
                return;
            }
        } while (!NotificationLite.acceptFull(poll, subscriber));
    }

    public static <T> void c(org.reactivestreams.c<? extends T> o9, final q7.g<? super T> onNext, final q7.g<? super Throwable> onError, final q7.a onComplete) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        b(o9, new LambdaSubscriber(onNext, onError, onComplete, io.reactivex.rxjava3.internal.functions.a.f76190k));
    }

    public static <T> void d(org.reactivestreams.c<? extends T> o9, final q7.g<? super T> onNext, final q7.g<? super Throwable> onError, final q7.a onComplete, int bufferSize) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "number > 0 required");
        b(o9, new BoundedSubscriber(onNext, onError, onComplete, io.reactivex.rxjava3.internal.functions.a.d(bufferSize), bufferSize));
    }
}
