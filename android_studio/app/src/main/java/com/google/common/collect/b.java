package com.google.common.collect;

import java.util.NoSuchElementException;

/* compiled from: AbstractIndexedListIterator.java */
@h3.b
/* loaded from: classes2.dex */
abstract class b<E> extends l5<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f33072a;

    /* renamed from: b  reason: collision with root package name */
    private int f33073b;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(int i4) {
        this(i4, 0);
    }

    protected abstract E a(int i4);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f33073b < this.f33072a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f33073b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i4 = this.f33073b;
            this.f33073b = i4 + 1;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f33073b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i4 = this.f33073b - 1;
            this.f33073b = i4;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f33073b - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(int i4, int i10) {
        com.google.common.base.a0.d0(i10, i4);
        this.f33072a = i4;
        this.f33073b = i10;
    }
}
