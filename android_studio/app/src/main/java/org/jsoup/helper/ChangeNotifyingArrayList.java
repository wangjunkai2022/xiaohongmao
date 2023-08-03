package org.jsoup.helper;

import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes5.dex */
public abstract class ChangeNotifyingArrayList<E> extends ArrayList<E> {
    public ChangeNotifyingArrayList(int i4) {
        super(i4);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e4) {
        onContentsChanged();
        return super.add(e4);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        onContentsChanged();
        return super.addAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        onContentsChanged();
        super.clear();
    }

    public abstract void onContentsChanged();

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public E remove(int i4) {
        onContentsChanged();
        return (E) super.remove(i4);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        onContentsChanged();
        return super.removeAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    protected void removeRange(int i4, int i10) {
        onContentsChanged();
        super.removeRange(i4, i10);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        onContentsChanged();
        return super.retainAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public E set(int i4, E e4) {
        onContentsChanged();
        return (E) super.set(i4, e4);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int i4, E e4) {
        onContentsChanged();
        super.add(i4, e4);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int i4, Collection<? extends E> collection) {
        onContentsChanged();
        return super.addAll(i4, collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        onContentsChanged();
        return super.remove(obj);
    }
}
