package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Deque;
import java.util.Iterator;

/* compiled from: ForwardingDeque.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class g1<E> extends w1<E> implements Deque<E> {
    @Override // java.util.Deque
    public void addFirst(E e4) {
        Y().addFirst(e4);
    }

    @Override // java.util.Deque
    public void addLast(E e4) {
        Y().addLast(e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.w1
    /* renamed from: c0 */
    public abstract Deque<E> Y();

    @Override // java.util.Deque
    public Iterator<E> descendingIterator() {
        return Y().descendingIterator();
    }

    @Override // java.util.Deque
    public E getFirst() {
        return Y().getFirst();
    }

    @Override // java.util.Deque
    public E getLast() {
        return Y().getLast();
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public boolean offerFirst(E e4) {
        return Y().offerFirst(e4);
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public boolean offerLast(E e4) {
        return Y().offerLast(e4);
    }

    @Override // java.util.Deque
    public E peekFirst() {
        return Y().peekFirst();
    }

    @Override // java.util.Deque
    public E peekLast() {
        return Y().peekLast();
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public E pollFirst() {
        return Y().pollFirst();
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public E pollLast() {
        return Y().pollLast();
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public E pop() {
        return Y().pop();
    }

    @Override // java.util.Deque
    public void push(E e4) {
        Y().push(e4);
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public E removeFirst() {
        return Y().removeFirst();
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public boolean removeFirstOccurrence(Object obj) {
        return Y().removeFirstOccurrence(obj);
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public E removeLast() {
        return Y().removeLast();
    }

    @Override // java.util.Deque
    @CanIgnoreReturnValue
    public boolean removeLastOccurrence(Object obj) {
        return Y().removeLastOccurrence(obj);
    }
}
