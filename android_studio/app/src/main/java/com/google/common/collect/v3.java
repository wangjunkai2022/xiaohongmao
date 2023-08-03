package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Deque;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* compiled from: Queues.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class v3 {
    private v3() {
    }

    @h3.c
    @h3.a
    @CanIgnoreReturnValue
    public static <E> int a(BlockingQueue<E> blockingQueue, Collection<? super E> collection, int i4, long j4, TimeUnit timeUnit) throws InterruptedException {
        com.google.common.base.a0.E(collection);
        long nanoTime = System.nanoTime() + timeUnit.toNanos(j4);
        int i10 = 0;
        while (i10 < i4) {
            i10 += blockingQueue.drainTo(collection, i4 - i10);
            if (i10 < i4) {
                E poll = blockingQueue.poll(nanoTime - System.nanoTime(), TimeUnit.NANOSECONDS);
                if (poll == null) {
                    break;
                }
                collection.add(poll);
                i10++;
            }
        }
        return i10;
    }

    @CanIgnoreReturnValue
    @h3.c
    @h3.a
    public static <E> int b(BlockingQueue<E> blockingQueue, Collection<? super E> collection, int i4, long j4, TimeUnit timeUnit) {
        E poll;
        com.google.common.base.a0.E(collection);
        long nanoTime = System.nanoTime() + timeUnit.toNanos(j4);
        int i10 = 0;
        boolean z9 = false;
        while (i10 < i4) {
            try {
                i10 += blockingQueue.drainTo(collection, i4 - i10);
                if (i10 < i4) {
                    while (true) {
                        try {
                            poll = blockingQueue.poll(nanoTime - System.nanoTime(), TimeUnit.NANOSECONDS);
                            break;
                        } catch (InterruptedException unused) {
                            z9 = true;
                        }
                    }
                    if (poll == null) {
                        break;
                    }
                    collection.add(poll);
                    i10++;
                }
            } finally {
                if (z9) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        return i10;
    }

    @h3.c
    public static <E> ArrayBlockingQueue<E> c(int i4) {
        return new ArrayBlockingQueue<>(i4);
    }

    public static <E> ArrayDeque<E> d() {
        return new ArrayDeque<>();
    }

    public static <E> ArrayDeque<E> e(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new ArrayDeque<>(z.b(iterable));
        }
        ArrayDeque<E> arrayDeque = new ArrayDeque<>();
        w2.a(arrayDeque, iterable);
        return arrayDeque;
    }

    @h3.c
    public static <E> ConcurrentLinkedQueue<E> f() {
        return new ConcurrentLinkedQueue<>();
    }

    @h3.c
    public static <E> ConcurrentLinkedQueue<E> g(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new ConcurrentLinkedQueue<>(z.b(iterable));
        }
        ConcurrentLinkedQueue<E> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        w2.a(concurrentLinkedQueue, iterable);
        return concurrentLinkedQueue;
    }

    @h3.c
    public static <E> LinkedBlockingDeque<E> h() {
        return new LinkedBlockingDeque<>();
    }

    @h3.c
    public static <E> LinkedBlockingDeque<E> i(int i4) {
        return new LinkedBlockingDeque<>(i4);
    }

    @h3.c
    public static <E> LinkedBlockingDeque<E> j(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedBlockingDeque<>(z.b(iterable));
        }
        LinkedBlockingDeque<E> linkedBlockingDeque = new LinkedBlockingDeque<>();
        w2.a(linkedBlockingDeque, iterable);
        return linkedBlockingDeque;
    }

    @h3.c
    public static <E> LinkedBlockingQueue<E> k() {
        return new LinkedBlockingQueue<>();
    }

    @h3.c
    public static <E> LinkedBlockingQueue<E> l(int i4) {
        return new LinkedBlockingQueue<>(i4);
    }

    @h3.c
    public static <E> LinkedBlockingQueue<E> m(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedBlockingQueue<>(z.b(iterable));
        }
        LinkedBlockingQueue<E> linkedBlockingQueue = new LinkedBlockingQueue<>();
        w2.a(linkedBlockingQueue, iterable);
        return linkedBlockingQueue;
    }

    @h3.c
    public static <E extends Comparable> PriorityBlockingQueue<E> n() {
        return new PriorityBlockingQueue<>();
    }

    @h3.c
    public static <E extends Comparable> PriorityBlockingQueue<E> o(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new PriorityBlockingQueue<>(z.b(iterable));
        }
        PriorityBlockingQueue<E> priorityBlockingQueue = new PriorityBlockingQueue<>();
        w2.a(priorityBlockingQueue, iterable);
        return priorityBlockingQueue;
    }

    public static <E extends Comparable> PriorityQueue<E> p() {
        return new PriorityQueue<>();
    }

    public static <E extends Comparable> PriorityQueue<E> q(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new PriorityQueue<>(z.b(iterable));
        }
        PriorityQueue<E> priorityQueue = new PriorityQueue<>();
        w2.a(priorityQueue, iterable);
        return priorityQueue;
    }

    @h3.c
    public static <E> SynchronousQueue<E> r() {
        return new SynchronousQueue<>();
    }

    public static <E> Deque<E> s(Deque<E> deque) {
        return c5.i(deque, null);
    }

    public static <E> Queue<E> t(Queue<E> queue) {
        return c5.t(queue, null);
    }
}
