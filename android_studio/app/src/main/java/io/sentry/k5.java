package io.sentry;

import java.util.Queue;

/* compiled from: SynchronizedQueue.java */
/* loaded from: classes4.dex */
final class k5<E> extends j5<E> implements Queue<E> {

    /* renamed from: d  reason: collision with root package name */
    private static final long f83373d = 1;

    private k5(Queue<E> queue) {
        super(queue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> k5<E> d(Queue<E> queue) {
        return new k5<>(queue);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.sentry.j5
    /* renamed from: c */
    public Queue<E> a() {
        return (Queue) super.a();
    }

    @Override // java.util.Queue
    public E element() {
        E element;
        synchronized (this.f83366b) {
            element = a().element();
        }
        return element;
    }

    @Override // io.sentry.j5, java.util.Collection
    public boolean equals(Object obj) {
        boolean equals;
        if (obj == this) {
            return true;
        }
        synchronized (this.f83366b) {
            equals = a().equals(obj);
        }
        return equals;
    }

    @Override // io.sentry.j5, java.util.Collection
    public int hashCode() {
        int hashCode;
        synchronized (this.f83366b) {
            hashCode = a().hashCode();
        }
        return hashCode;
    }

    @Override // java.util.Queue
    public boolean offer(E e4) {
        boolean offer;
        synchronized (this.f83366b) {
            offer = a().offer(e4);
        }
        return offer;
    }

    @Override // java.util.Queue
    public E peek() {
        E peek;
        synchronized (this.f83366b) {
            peek = a().peek();
        }
        return peek;
    }

    @Override // java.util.Queue
    public E poll() {
        E poll;
        synchronized (this.f83366b) {
            poll = a().poll();
        }
        return poll;
    }

    @Override // java.util.Queue
    public E remove() {
        E remove;
        synchronized (this.f83366b) {
            remove = a().remove();
        }
        return remove;
    }

    @Override // io.sentry.j5, java.util.Collection
    public Object[] toArray() {
        Object[] array;
        synchronized (this.f83366b) {
            array = a().toArray();
        }
        return array;
    }

    protected k5(Queue<E> queue, Object obj) {
        super(queue, obj);
    }

    @Override // io.sentry.j5, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        synchronized (this.f83366b) {
            tArr2 = (T[]) a().toArray(tArr);
        }
        return tArr2;
    }
}
