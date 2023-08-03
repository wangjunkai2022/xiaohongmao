package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public final class VolatileSizeArrayList<T> extends AtomicInteger implements List<T>, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    private static final long f75908b = 3972397474470203923L;

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<T> f75909a;

    public VolatileSizeArrayList() {
        this.f75909a = new ArrayList<>();
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t9) {
        boolean add = this.f75909a.add(t9);
        lazySet(this.f75909a.size());
        return add;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        boolean addAll = this.f75909a.addAll(collection);
        lazySet(this.f75909a.size());
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f75909a.clear();
        lazySet(0);
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.f75909a.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f75909a.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (obj instanceof VolatileSizeArrayList) {
            return this.f75909a.equals(((VolatileSizeArrayList) obj).f75909a);
        }
        return this.f75909a.equals(obj);
    }

    @Override // java.util.List
    public T get(int i4) {
        return this.f75909a.get(i4);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f75909a.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.f75909a.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return get() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return this.f75909a.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.f75909a.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<T> listIterator() {
        return this.f75909a.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        boolean remove = this.f75909a.remove(obj);
        lazySet(this.f75909a.size());
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll = this.f75909a.removeAll(collection);
        lazySet(this.f75909a.size());
        return removeAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll = this.f75909a.retainAll(collection);
        lazySet(this.f75909a.size());
        return retainAll;
    }

    @Override // java.util.List
    public T set(int i4, T t9) {
        return this.f75909a.set(i4, t9);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return get();
    }

    @Override // java.util.List
    public List<T> subList(int i4, int i10) {
        return this.f75909a.subList(i4, i10);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.f75909a.toArray();
    }

    @Override // java.util.concurrent.atomic.AtomicInteger
    public String toString() {
        return this.f75909a.toString();
    }

    @Override // java.util.List
    public ListIterator<T> listIterator(int i4) {
        return this.f75909a.listIterator(i4);
    }

    @Override // java.util.List, java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        return (E[]) this.f75909a.toArray(eArr);
    }

    public VolatileSizeArrayList(int i4) {
        this.f75909a = new ArrayList<>(i4);
    }

    @Override // java.util.List
    public void add(int i4, T t9) {
        this.f75909a.add(i4, t9);
        lazySet(this.f75909a.size());
    }

    @Override // java.util.List
    public boolean addAll(int i4, Collection<? extends T> collection) {
        boolean addAll = this.f75909a.addAll(i4, collection);
        lazySet(this.f75909a.size());
        return addAll;
    }

    @Override // java.util.List
    public T remove(int i4) {
        T remove = this.f75909a.remove(i4);
        lazySet(this.f75909a.size());
        return remove;
    }
}
