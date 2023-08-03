package io.sentry;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Queue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircularFifoQueue.java */
/* loaded from: classes4.dex */
public final class h<E> extends AbstractCollection<E> implements Queue<E>, Serializable {

    /* renamed from: f  reason: collision with root package name */
    private static final long f83242f = -8423413834657610406L;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private transient E[] f83243a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f83244b;

    /* renamed from: c  reason: collision with root package name */
    private transient int f83245c;

    /* renamed from: d  reason: collision with root package name */
    private transient boolean f83246d;

    /* renamed from: e  reason: collision with root package name */
    private final int f83247e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CircularFifoQueue.java */
    /* loaded from: classes4.dex */
    public class a implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private int f83248a;

        /* renamed from: b  reason: collision with root package name */
        private int f83249b = -1;

        /* renamed from: c  reason: collision with root package name */
        private boolean f83250c;

        a() {
            this.f83248a = h.this.f83244b;
            this.f83250c = h.this.f83246d;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f83250c || this.f83248a != h.this.f83245c;
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                this.f83250c = false;
                int i4 = this.f83248a;
                this.f83249b = i4;
                this.f83248a = h.this.n(i4);
                return (E) h.this.f83243a[this.f83249b];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            int i4 = this.f83249b;
            if (i4 != -1) {
                if (i4 == h.this.f83244b) {
                    h.this.remove();
                    this.f83249b = -1;
                    return;
                }
                int i10 = this.f83249b + 1;
                if (h.this.f83244b < this.f83249b && i10 < h.this.f83245c) {
                    System.arraycopy(h.this.f83243a, i10, h.this.f83243a, this.f83249b, h.this.f83245c - i10);
                } else {
                    while (i10 != h.this.f83245c) {
                        if (i10 >= h.this.f83247e) {
                            h.this.f83243a[i10 - 1] = h.this.f83243a[0];
                            i10 = 0;
                        } else {
                            h.this.f83243a[h.this.m(i10)] = h.this.f83243a[i10];
                            i10 = h.this.n(i10);
                        }
                    }
                }
                this.f83249b = -1;
                h hVar = h.this;
                hVar.f83245c = hVar.m(hVar.f83245c);
                h.this.f83243a[h.this.f83245c] = null;
                h.this.f83246d = false;
                this.f83248a = h.this.m(this.f83248a);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public h() {
        this(32);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int m(int i4) {
        int i10 = i4 - 1;
        return i10 < 0 ? this.f83247e - 1 : i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int n(int i4) {
        int i10 = i4 + 1;
        if (i10 >= this.f83247e) {
            return 0;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void r(@m8.g ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f83243a = (E[]) new Object[this.f83247e];
        int readInt = objectInputStream.readInt();
        for (int i4 = 0; i4 < readInt; i4++) {
            this.f83243a[i4] = objectInputStream.readObject();
        }
        this.f83244b = 0;
        boolean z9 = readInt == this.f83247e;
        this.f83246d = z9;
        if (z9) {
            this.f83245c = 0;
        } else {
            this.f83245c = readInt;
        }
    }

    private void s(@m8.g ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(@m8.g E e4) {
        Objects.requireNonNull(e4, "Attempted to add null object to queue");
        if (o()) {
            remove();
        }
        E[] eArr = this.f83243a;
        int i4 = this.f83245c;
        int i10 = i4 + 1;
        this.f83245c = i10;
        eArr[i4] = e4;
        if (i10 >= this.f83247e) {
            this.f83245c = 0;
        }
        if (this.f83245c == this.f83244b) {
            this.f83246d = true;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f83246d = false;
        this.f83244b = 0;
        this.f83245c = 0;
        Arrays.fill(this.f83243a, (Object) null);
    }

    @Override // java.util.Queue
    @m8.h
    public E element() {
        if (!isEmpty()) {
            return peek();
        }
        throw new NoSuchElementException("queue is empty");
    }

    @m8.g
    public E get(int i4) {
        int size = size();
        if (i4 >= 0 && i4 < size) {
            return this.f83243a[(this.f83244b + i4) % this.f83247e];
        }
        throw new NoSuchElementException(String.format("The specified index (%1$d) is outside the available range [0, %2$d)", Integer.valueOf(i4), Integer.valueOf(size)));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    @m8.g
    public Iterator<E> iterator() {
        return new a();
    }

    public boolean o() {
        return size() == this.f83247e;
    }

    @Override // java.util.Queue
    public boolean offer(@m8.g E e4) {
        return add(e4);
    }

    public boolean p() {
        return false;
    }

    @Override // java.util.Queue
    @m8.h
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return this.f83243a[this.f83244b];
    }

    @Override // java.util.Queue
    @m8.h
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        return remove();
    }

    public int q() {
        return this.f83247e;
    }

    @Override // java.util.Queue
    @m8.g
    public E remove() {
        if (!isEmpty()) {
            E[] eArr = this.f83243a;
            int i4 = this.f83244b;
            E e4 = eArr[i4];
            if (e4 != null) {
                int i10 = i4 + 1;
                this.f83244b = i10;
                eArr[i4] = null;
                if (i10 >= this.f83247e) {
                    this.f83244b = 0;
                }
                this.f83246d = false;
            }
            return e4;
        }
        throw new NoSuchElementException("queue is empty");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        int i4 = this.f83245c;
        int i10 = this.f83244b;
        if (i4 < i10) {
            return (this.f83247e - i10) + i4;
        }
        if (i4 == i10) {
            if (this.f83246d) {
                return this.f83247e;
            }
            return 0;
        }
        return i4 - i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(int i4) {
        this.f83244b = 0;
        this.f83245c = 0;
        this.f83246d = false;
        if (i4 > 0) {
            E[] eArr = (E[]) new Object[i4];
            this.f83243a = eArr;
            this.f83247e = eArr.length;
            return;
        }
        throw new IllegalArgumentException("The size must be greater than 0");
    }

    public h(@m8.g Collection<? extends E> collection) {
        this(collection.size());
        addAll(collection);
    }
}
