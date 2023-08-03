package com.koushikdutta.async;

import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.Semaphore;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ThreadQueue extends LinkedList<Runnable> {

    /* renamed from: c  reason: collision with root package name */
    private static final WeakHashMap<Thread, ThreadQueue> f44307c = new WeakHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    AsyncSemaphore f44308a;

    /* renamed from: b  reason: collision with root package name */
    Semaphore f44309b = new Semaphore(0);

    ThreadQueue() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ThreadQueue b(Thread thread) {
        ThreadQueue threadQueue;
        WeakHashMap<Thread, ThreadQueue> weakHashMap = f44307c;
        synchronized (weakHashMap) {
            threadQueue = weakHashMap.get(thread);
            if (threadQueue == null) {
                threadQueue = new ThreadQueue();
                weakHashMap.put(thread, threadQueue);
            }
        }
        return threadQueue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(AsyncSemaphore asyncSemaphore) {
        WeakHashMap<Thread, ThreadQueue> weakHashMap = f44307c;
        synchronized (weakHashMap) {
            for (ThreadQueue threadQueue : weakHashMap.values()) {
                if (threadQueue.f44308a == asyncSemaphore) {
                    threadQueue.f44309b.release();
                }
            }
        }
    }

    @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
    /* renamed from: a */
    public boolean add(Runnable runnable) {
        boolean add;
        synchronized (this) {
            add = super.add(runnable);
        }
        return add;
    }

    @Override // java.util.LinkedList, java.util.Deque, java.util.Queue
    /* renamed from: d */
    public Runnable remove() {
        synchronized (this) {
            if (isEmpty()) {
                return null;
            }
            return (Runnable) super.remove();
        }
    }

    @Override // java.util.LinkedList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque
    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this) {
            remove = super.remove(obj);
        }
        return remove;
    }
}
