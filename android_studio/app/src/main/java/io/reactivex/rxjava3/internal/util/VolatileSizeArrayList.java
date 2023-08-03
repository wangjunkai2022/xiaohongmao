package io.reactivex.rxjava3.internal.util;

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
    private static final long f81323b = 3972397474470203923L;

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<T> f81324a;

    public VolatileSizeArrayList() {
        this.f81324a = new ArrayList<>();
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T e4) {
        boolean add = this.f81324a.add(e4);
        lazySet(this.f81324a.size());
        return add;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(@p7.e Collection<? extends T> c10) {
        boolean addAll = this.f81324a.addAll(c10);
        lazySet(this.f81324a.size());
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f81324a.clear();
        lazySet(0);
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object o9) {
        return this.f81324a.contains(o9);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@p7.e Collection<?> c10) {
        return this.f81324a.containsAll(c10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (obj instanceof VolatileSizeArrayList) {
            return this.f81324a.equals(((VolatileSizeArrayList) obj).f81324a);
        }
        return this.f81324a.equals(obj);
    }

    @Override // java.util.List
    public T get(int index) {
        return this.f81324a.get(index);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f81324a.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object o9) {
        return this.f81324a.indexOf(o9);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return get() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return this.f81324a.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object o9) {
        return this.f81324a.lastIndexOf(o9);
    }

    @Override // java.util.List
    public ListIterator<T> listIterator() {
        return this.f81324a.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object o9) {
        boolean remove = this.f81324a.remove(o9);
        lazySet(this.f81324a.size());
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(@p7.e Collection<?> c10) {
        boolean removeAll = this.f81324a.removeAll(c10);
        lazySet(this.f81324a.size());
        return removeAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(@p7.e Collection<?> c10) {
        boolean retainAll = this.f81324a.retainAll(c10);
        lazySet(this.f81324a.size());
        return retainAll;
    }

    @Override // java.util.List
    public T set(int index, T element) {
        return this.f81324a.set(index, element);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return get();
    }

    @Override // java.util.List
    public List<T> subList(int fromIndex, int toIndex) {
        return this.f81324a.subList(fromIndex, toIndex);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.f81324a.toArray();
    }

    @Override // java.util.concurrent.atomic.AtomicInteger
    public String toString() {
        return this.f81324a.toString();
    }

    @Override // java.util.List
    public ListIterator<T> listIterator(int index) {
        return this.f81324a.listIterator(index);
    }

    @Override // java.util.List, java.util.Collection
    public <E> E[] toArray(@p7.e E[] a10) {
        return (E[]) this.f81324a.toArray(a10);
    }

    public VolatileSizeArrayList(int initialCapacity) {
        this.f81324a = new ArrayList<>(initialCapacity);
    }

    @Override // java.util.List
    public void add(int index, T element) {
        this.f81324a.add(index, element);
        lazySet(this.f81324a.size());
    }

    @Override // java.util.List
    public boolean addAll(int index, @p7.e Collection<? extends T> c10) {
        boolean addAll = this.f81324a.addAll(index, c10);
        lazySet(this.f81324a.size());
        return addAll;
    }

    @Override // java.util.List
    public T remove(int index) {
        T remove = this.f81324a.remove(index);
        lazySet(this.f81324a.size());
        return remove;
    }
}
