package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.NoSuchElementException;
import java.util.Queue;

/* compiled from: ForwardingQueue.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class w1<E> extends e1<E> implements Queue<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.e1
    /* renamed from: Y */
    public abstract Queue<E> M();

    protected boolean Z(E e4) {
        try {
            return add(e4);
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    protected E a0() {
        try {
            return element();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    protected E b0() {
        try {
            return remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    @Override // java.util.Queue
    public E element() {
        return M().element();
    }

    @CanIgnoreReturnValue
    public boolean offer(E e4) {
        return M().offer(e4);
    }

    @Override // java.util.Queue
    public E peek() {
        return M().peek();
    }

    @Override // java.util.Queue
    @CanIgnoreReturnValue
    public E poll() {
        return M().poll();
    }

    @Override // java.util.Queue
    @CanIgnoreReturnValue
    public E remove() {
        return M().remove();
    }
}
