package com.google.common.util.concurrent;

import com.google.common.collect.w1;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingBlockingQueue.java */
@CanIgnoreReturnValue
@h3.c
/* loaded from: classes2.dex */
public abstract class z<E> extends w1<E> implements BlockingQueue<E> {
    protected z() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.w1
    /* renamed from: c0 */
    public abstract BlockingQueue<E> Y();

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i4) {
        return Y().drainTo(collection, i4);
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e4, long j4, TimeUnit timeUnit) throws InterruptedException {
        return Y().offer(e4, j4, timeUnit);
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j4, TimeUnit timeUnit) throws InterruptedException {
        return Y().poll(j4, timeUnit);
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e4) throws InterruptedException {
        Y().put(e4);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return Y().remainingCapacity();
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        return Y().take();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return Y().drainTo(collection);
    }
}
