package com.koushikdutta.async.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes3.dex */
public class ArrayDeque<E> extends AbstractCollection<E> implements Deque<E>, Cloneable, Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final int f45129d = 8;

    /* renamed from: e  reason: collision with root package name */
    private static final long f45130e = 2340985798034038923L;

    /* renamed from: a  reason: collision with root package name */
    private transient Object[] f45131a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f45132b;

    /* renamed from: c  reason: collision with root package name */
    private transient int f45133c;

    /* loaded from: classes3.dex */
    private class DeqIterator implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private int f45134a;

        /* renamed from: b  reason: collision with root package name */
        private int f45135b;

        /* renamed from: c  reason: collision with root package name */
        private int f45136c;

        private DeqIterator() {
            this.f45134a = ArrayDeque.this.f45132b;
            this.f45135b = ArrayDeque.this.f45133c;
            this.f45136c = -1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f45134a != this.f45135b;
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f45134a != this.f45135b) {
                E e4 = (E) ArrayDeque.this.f45131a[this.f45134a];
                if (ArrayDeque.this.f45133c == this.f45135b && e4 != null) {
                    int i4 = this.f45134a;
                    this.f45136c = i4;
                    this.f45134a = (i4 + 1) & (ArrayDeque.this.f45131a.length - 1);
                    return e4;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            int i4 = this.f45136c;
            if (i4 >= 0) {
                if (ArrayDeque.this.k(i4)) {
                    this.f45134a = (this.f45134a - 1) & (ArrayDeque.this.f45131a.length - 1);
                    this.f45135b = ArrayDeque.this.f45133c;
                }
                this.f45136c = -1;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes3.dex */
    private class DescendingIterator implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private int f45138a;

        /* renamed from: b  reason: collision with root package name */
        private int f45139b;

        /* renamed from: c  reason: collision with root package name */
        private int f45140c;

        private DescendingIterator() {
            this.f45138a = ArrayDeque.this.f45133c;
            this.f45139b = ArrayDeque.this.f45132b;
            this.f45140c = -1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f45138a != this.f45139b;
        }

        @Override // java.util.Iterator
        public E next() {
            int i4 = this.f45138a;
            if (i4 != this.f45139b) {
                this.f45138a = (i4 - 1) & (ArrayDeque.this.f45131a.length - 1);
                E e4 = (E) ArrayDeque.this.f45131a[this.f45138a];
                if (ArrayDeque.this.f45132b == this.f45139b && e4 != null) {
                    this.f45140c = this.f45138a;
                    return e4;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            int i4 = this.f45140c;
            if (i4 >= 0) {
                if (!ArrayDeque.this.k(i4)) {
                    this.f45138a = (this.f45138a + 1) & (ArrayDeque.this.f45131a.length - 1);
                    this.f45139b = ArrayDeque.this.f45132b;
                }
                this.f45140c = -1;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public ArrayDeque() {
        this.f45131a = new Object[16];
    }

    private void e(int i4) {
        int i10 = 8;
        if (i4 >= 8) {
            int i11 = i4 | (i4 >>> 1);
            int i12 = i11 | (i11 >>> 2);
            int i13 = i12 | (i12 >>> 4);
            int i14 = i13 | (i13 >>> 8);
            i10 = (i14 | (i14 >>> 16)) + 1;
            if (i10 < 0) {
                i10 >>>= 1;
            }
        }
        this.f45131a = new Object[i10];
    }

    private void h() {
    }

    private <T> T[] j(T[] tArr) {
        int i4 = this.f45132b;
        int i10 = this.f45133c;
        if (i4 < i10) {
            System.arraycopy(this.f45131a, i4, tArr, 0, size());
        } else if (i4 > i10) {
            Object[] objArr = this.f45131a;
            int length = objArr.length - i4;
            System.arraycopy(objArr, i4, tArr, 0, length);
            System.arraycopy(this.f45131a, 0, tArr, length, this.f45133c);
        }
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k(int i4) {
        h();
        Object[] objArr = this.f45131a;
        int length = objArr.length - 1;
        int i10 = this.f45132b;
        int i11 = this.f45133c;
        int i12 = (i4 - i10) & length;
        int i13 = (i11 - i4) & length;
        if (i12 < ((i11 - i10) & length)) {
            if (i12 < i13) {
                if (i10 <= i4) {
                    System.arraycopy(objArr, i10, objArr, i10 + 1, i12);
                } else {
                    System.arraycopy(objArr, 0, objArr, 1, i4);
                    objArr[0] = objArr[length];
                    System.arraycopy(objArr, i10, objArr, i10 + 1, length - i10);
                }
                objArr[i10] = null;
                this.f45132b = (i10 + 1) & length;
                return false;
            }
            if (i4 < i11) {
                System.arraycopy(objArr, i4 + 1, objArr, i4, i13);
                this.f45133c = i11 - 1;
            } else {
                System.arraycopy(objArr, i4 + 1, objArr, i4, length - i4);
                objArr[length] = objArr[0];
                System.arraycopy(objArr, 1, objArr, 0, i11);
                this.f45133c = (i11 - 1) & length;
            }
            return true;
        }
        throw new ConcurrentModificationException();
    }

    private void l() {
        int i4 = this.f45132b;
        Object[] objArr = this.f45131a;
        int length = objArr.length;
        int i10 = length - i4;
        int i11 = length << 1;
        if (i11 >= 0) {
            Object[] objArr2 = new Object[i11];
            System.arraycopy(objArr, i4, objArr2, 0, i10);
            System.arraycopy(this.f45131a, 0, objArr2, i10, i4);
            this.f45131a = objArr2;
            this.f45132b = 0;
            this.f45133c = length;
            return;
        }
        throw new IllegalStateException("Sorry, deque too big");
    }

    private void m(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        e(readInt);
        this.f45132b = 0;
        this.f45133c = readInt;
        for (int i4 = 0; i4 < readInt; i4++) {
            this.f45131a[i4] = objectInputStream.readObject();
        }
    }

    private void n(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        int length = this.f45131a.length - 1;
        for (int i4 = this.f45132b; i4 != this.f45133c; i4 = (i4 + 1) & length) {
            objectOutputStream.writeObject(this.f45131a[i4]);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.koushikdutta.async.util.Deque, java.util.Queue
    public boolean add(E e4) {
        addLast(e4);
        return true;
    }

    @Override // com.koushikdutta.async.util.Deque
    public void addFirst(E e4) {
        Objects.requireNonNull(e4, "e == null");
        Object[] objArr = this.f45131a;
        int length = (this.f45132b - 1) & (objArr.length - 1);
        this.f45132b = length;
        objArr[length] = e4;
        if (length == this.f45133c) {
            l();
        }
    }

    @Override // com.koushikdutta.async.util.Deque
    public void addLast(E e4) {
        Objects.requireNonNull(e4, "e == null");
        Object[] objArr = this.f45131a;
        int i4 = this.f45133c;
        objArr[i4] = e4;
        int length = (objArr.length - 1) & (i4 + 1);
        this.f45133c = length;
        if (length == this.f45132b) {
            l();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        int i4 = this.f45132b;
        int i10 = this.f45133c;
        if (i4 != i10) {
            this.f45133c = 0;
            this.f45132b = 0;
            int length = this.f45131a.length - 1;
            do {
                this.f45131a[i4] = null;
                i4 = (i4 + 1) & length;
            } while (i4 != i10);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.koushikdutta.async.util.Deque
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f45131a.length - 1;
        int i4 = this.f45132b;
        while (true) {
            Object obj2 = this.f45131a[i4];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                return true;
            }
            i4 = (i4 + 1) & length;
        }
    }

    @Override // com.koushikdutta.async.util.Deque
    public Iterator<E> descendingIterator() {
        return new DescendingIterator();
    }

    @Override // com.koushikdutta.async.util.Deque, java.util.Queue
    public E element() {
        return getFirst();
    }

    @Override // com.koushikdutta.async.util.Deque
    public E getFirst() {
        E e4 = (E) this.f45131a[this.f45132b];
        if (e4 != null) {
            return e4;
        }
        throw new NoSuchElementException();
    }

    @Override // com.koushikdutta.async.util.Deque
    public E getLast() {
        Object[] objArr = this.f45131a;
        E e4 = (E) objArr[(this.f45133c - 1) & (objArr.length - 1)];
        if (e4 != null) {
            return e4;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f45132b == this.f45133c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.koushikdutta.async.util.Deque
    public Iterator<E> iterator() {
        return new DeqIterator();
    }

    @Override // com.koushikdutta.async.util.Deque, java.util.Queue
    public boolean offer(E e4) {
        return offerLast(e4);
    }

    @Override // com.koushikdutta.async.util.Deque
    public boolean offerFirst(E e4) {
        addFirst(e4);
        return true;
    }

    @Override // com.koushikdutta.async.util.Deque
    public boolean offerLast(E e4) {
        addLast(e4);
        return true;
    }

    @Override // com.koushikdutta.async.util.Deque, java.util.Queue
    public E peek() {
        return peekFirst();
    }

    @Override // com.koushikdutta.async.util.Deque
    public E peekFirst() {
        return (E) this.f45131a[this.f45132b];
    }

    @Override // com.koushikdutta.async.util.Deque
    public E peekLast() {
        Object[] objArr = this.f45131a;
        return (E) objArr[(this.f45133c - 1) & (objArr.length - 1)];
    }

    @Override // com.koushikdutta.async.util.Deque, java.util.Queue
    public E poll() {
        return pollFirst();
    }

    @Override // com.koushikdutta.async.util.Deque
    public E pollFirst() {
        int i4 = this.f45132b;
        Object[] objArr = this.f45131a;
        E e4 = (E) objArr[i4];
        if (e4 == null) {
            return null;
        }
        objArr[i4] = null;
        this.f45132b = (i4 + 1) & (objArr.length - 1);
        return e4;
    }

    @Override // com.koushikdutta.async.util.Deque
    public E pollLast() {
        Object[] objArr = this.f45131a;
        int length = (this.f45133c - 1) & (objArr.length - 1);
        E e4 = (E) objArr[length];
        if (e4 == null) {
            return null;
        }
        objArr[length] = null;
        this.f45133c = length;
        return e4;
    }

    @Override // com.koushikdutta.async.util.Deque
    public E pop() {
        return removeFirst();
    }

    @Override // com.koushikdutta.async.util.Deque
    public void push(E e4) {
        addFirst(e4);
    }

    @Override // com.koushikdutta.async.util.Deque, java.util.Queue
    public E remove() {
        return removeFirst();
    }

    @Override // com.koushikdutta.async.util.Deque
    public E removeFirst() {
        E pollFirst = pollFirst();
        if (pollFirst != null) {
            return pollFirst;
        }
        throw new NoSuchElementException();
    }

    @Override // com.koushikdutta.async.util.Deque
    public boolean removeFirstOccurrence(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f45131a.length - 1;
        int i4 = this.f45132b;
        while (true) {
            Object obj2 = this.f45131a[i4];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                k(i4);
                return true;
            }
            i4 = (i4 + 1) & length;
        }
    }

    @Override // com.koushikdutta.async.util.Deque
    public E removeLast() {
        E pollLast = pollLast();
        if (pollLast != null) {
            return pollLast;
        }
        throw new NoSuchElementException();
    }

    @Override // com.koushikdutta.async.util.Deque
    public boolean removeLastOccurrence(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f45131a.length - 1;
        int i4 = this.f45133c - 1;
        while (true) {
            int i10 = i4 & length;
            Object obj2 = this.f45131a[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                k(i10);
                return true;
            }
            i4 = i10 - 1;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.koushikdutta.async.util.Deque
    public int size() {
        return (this.f45133c - this.f45132b) & (this.f45131a.length - 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return j(new Object[size()]);
    }

    /* renamed from: clone */
    public ArrayDeque<E> m63clone() {
        try {
            ArrayDeque<E> arrayDeque = (ArrayDeque) super.clone();
            Object[] objArr = this.f45131a;
            System.arraycopy(objArr, 0, arrayDeque.f45131a, 0, objArr.length);
            return arrayDeque;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.koushikdutta.async.util.Deque
    public boolean remove(Object obj) {
        return removeFirstOccurrence(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        j(tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    public ArrayDeque(int i4) {
        e(i4);
    }

    public ArrayDeque(Collection<? extends E> collection) {
        e(collection.size());
        addAll(collection);
    }
}
