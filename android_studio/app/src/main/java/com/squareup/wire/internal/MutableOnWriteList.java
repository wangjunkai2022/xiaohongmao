package com.squareup.wire.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
final class MutableOnWriteList<T> extends AbstractList<T> implements RandomAccess, Serializable {
    private final List<T> immutableList;
    List<T> mutableList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableOnWriteList(List<T> list) {
        this.immutableList = list;
        this.mutableList = list;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new ArrayList(this.mutableList);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i4, T t9) {
        if (this.mutableList == this.immutableList) {
            this.mutableList = new ArrayList(this.immutableList);
        }
        this.mutableList.add(i4, t9);
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i4) {
        return this.mutableList.get(i4);
    }

    @Override // java.util.AbstractList, java.util.List
    public T remove(int i4) {
        if (this.mutableList == this.immutableList) {
            this.mutableList = new ArrayList(this.immutableList);
        }
        return this.mutableList.remove(i4);
    }

    @Override // java.util.AbstractList, java.util.List
    public T set(int i4, T t9) {
        if (this.mutableList == this.immutableList) {
            this.mutableList = new ArrayList(this.immutableList);
        }
        return this.mutableList.set(i4, t9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.mutableList.size();
    }
}
