package io.sentry;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: SynchronizedCollection.java */
/* loaded from: classes4.dex */
class j5<E> implements Collection<E>, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f83364c = 2412805092710877986L;

    /* renamed from: a  reason: collision with root package name */
    private final Collection<E> f83365a;

    /* renamed from: b  reason: collision with root package name */
    final Object f83366b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j5(Collection<E> collection) {
        Objects.requireNonNull(collection, "Collection must not be null.");
        this.f83365a = collection;
        this.f83366b = this;
    }

    public static <T> j5<T> b(Collection<T> collection) {
        return new j5<>(collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Collection<E> a() {
        return this.f83365a;
    }

    @Override // java.util.Collection
    public boolean add(E e4) {
        boolean add;
        synchronized (this.f83366b) {
            add = a().add(e4);
        }
        return add;
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        boolean addAll;
        synchronized (this.f83366b) {
            addAll = a().addAll(collection);
        }
        return addAll;
    }

    @Override // java.util.Collection
    public void clear() {
        synchronized (this.f83366b) {
            a().clear();
        }
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        boolean contains;
        synchronized (this.f83366b) {
            contains = a().contains(obj);
        }
        return contains;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f83366b) {
            containsAll = a().containsAll(collection);
        }
        return containsAll;
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        synchronized (this.f83366b) {
            boolean z9 = true;
            try {
                if (obj == this) {
                    return true;
                }
                if (obj != this && !a().equals(obj)) {
                    z9 = false;
                }
                return z9;
            } finally {
            }
        }
    }

    @Override // java.util.Collection
    public int hashCode() {
        int hashCode;
        synchronized (this.f83366b) {
            hashCode = a().hashCode();
        }
        return hashCode;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f83366b) {
            isEmpty = a().isEmpty();
        }
        return isEmpty;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return a().iterator();
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this.f83366b) {
            remove = a().remove(obj);
        }
        return remove;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f83366b) {
            removeAll = a().removeAll(collection);
        }
        return removeAll;
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f83366b) {
            retainAll = a().retainAll(collection);
        }
        return retainAll;
    }

    @Override // java.util.Collection
    public int size() {
        int size;
        synchronized (this.f83366b) {
            size = a().size();
        }
        return size;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        Object[] array;
        synchronized (this.f83366b) {
            array = a().toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f83366b) {
            obj = a().toString();
        }
        return obj;
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        synchronized (this.f83366b) {
            tArr2 = (T[]) a().toArray(tArr);
        }
        return tArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j5(Collection<E> collection, Object obj) {
        Objects.requireNonNull(collection, "Collection must not be null.");
        Objects.requireNonNull(obj, "Lock must not be null.");
        this.f83365a = collection;
        this.f83366b = obj;
    }
}
