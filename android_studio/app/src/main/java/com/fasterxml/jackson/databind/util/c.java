package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: ArrayIterator.java */
/* loaded from: classes2.dex */
public class c<T> implements Iterator<T>, Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T[] f16005a;

    /* renamed from: b  reason: collision with root package name */
    private int f16006b = 0;

    public c(T[] tArr) {
        this.f16005a = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f16006b < this.f16005a.length;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this;
    }

    @Override // java.util.Iterator
    public T next() {
        int i4 = this.f16006b;
        T[] tArr = this.f16005a;
        if (i4 < tArr.length) {
            this.f16006b = i4 + 1;
            return tArr[i4];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
