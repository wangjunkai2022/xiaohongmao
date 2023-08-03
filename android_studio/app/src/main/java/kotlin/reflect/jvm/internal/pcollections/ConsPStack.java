package kotlin.reflect.jvm.internal.pcollections;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes4.dex */
final class ConsPStack<E> implements Iterable<E> {
    private static final ConsPStack<Object> EMPTY = new ConsPStack<>();
    final E first;
    final ConsPStack<E> rest;
    private final int size;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class Itr<E> implements Iterator<E> {
        private ConsPStack<E> next;

        public Itr(ConsPStack<E> consPStack) {
            this.next = consPStack;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return ((ConsPStack) this.next).size > 0;
        }

        @Override // java.util.Iterator
        public E next() {
            ConsPStack<E> consPStack = this.next;
            E e4 = consPStack.first;
            this.next = consPStack.rest;
            return e4;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private ConsPStack() {
        this.size = 0;
        this.first = null;
        this.rest = null;
    }

    public static <E> ConsPStack<E> empty() {
        return (ConsPStack<E>) EMPTY;
    }

    private ConsPStack<E> minus(Object obj) {
        if (this.size == 0) {
            return this;
        }
        if (this.first.equals(obj)) {
            return this.rest;
        }
        ConsPStack<E> minus = this.rest.minus(obj);
        return minus == this.rest ? this : new ConsPStack<>(this.first, minus);
    }

    private ConsPStack<E> subList(int i4) {
        if (i4 < 0 || i4 > this.size) {
            throw new IndexOutOfBoundsException();
        }
        return i4 == 0 ? this : this.rest.subList(i4 - 1);
    }

    public E get(int i4) {
        if (i4 >= 0 && i4 <= this.size) {
            try {
                return iterator(i4).next();
            } catch (NoSuchElementException unused) {
                throw new IndexOutOfBoundsException("Index: " + i4);
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        return iterator(0);
    }

    public ConsPStack<E> plus(E e4) {
        return new ConsPStack<>(e4, this);
    }

    public int size() {
        return this.size;
    }

    private Iterator<E> iterator(int i4) {
        return new Itr(subList(i4));
    }

    private ConsPStack(E e4, ConsPStack<E> consPStack) {
        this.first = e4;
        this.rest = consPStack;
        this.size = consPStack.size + 1;
    }

    public ConsPStack<E> minus(int i4) {
        return minus(get(i4));
    }
}
