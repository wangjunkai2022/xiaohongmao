package com.google.common.util.concurrent;

import java.util.Collection;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingBlockingDeque.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class y<E> extends com.google.common.collect.g1<E> implements BlockingDeque<E> {
    protected y() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.g1
    /* renamed from: d0 */
    public abstract BlockingDeque<E> c0();

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return c0().drainTo(collection);
    }

    @Override // java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public boolean offer(E e4, long j4, TimeUnit timeUnit) throws InterruptedException {
        return c0().offer(e4, j4, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque
    public boolean offerFirst(E e4, long j4, TimeUnit timeUnit) throws InterruptedException {
        return c0().offerFirst(e4, j4, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque
    public boolean offerLast(E e4, long j4, TimeUnit timeUnit) throws InterruptedException {
        return c0().offerLast(e4, j4, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public E poll(long j4, TimeUnit timeUnit) throws InterruptedException {
        return c0().poll(j4, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque
    public E pollFirst(long j4, TimeUnit timeUnit) throws InterruptedException {
        return c0().pollFirst(j4, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque
    public E pollLast(long j4, TimeUnit timeUnit) throws InterruptedException {
        return c0().pollLast(j4, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public void put(E e4) throws InterruptedException {
        c0().put(e4);
    }

    @Override // java.util.concurrent.BlockingDeque
    public void putFirst(E e4) throws InterruptedException {
        c0().putFirst(e4);
    }

    @Override // java.util.concurrent.BlockingDeque
    public void putLast(E e4) throws InterruptedException {
        c0().putLast(e4);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return c0().remainingCapacity();
    }

    @Override // java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        return c0().take();
    }

    @Override // java.util.concurrent.BlockingDeque
    public E takeFirst() throws InterruptedException {
        return c0().takeFirst();
    }

    @Override // java.util.concurrent.BlockingDeque
    public E takeLast() throws InterruptedException {
        return c0().takeLast();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i4) {
        return c0().drainTo(collection, i4);
    }
}
