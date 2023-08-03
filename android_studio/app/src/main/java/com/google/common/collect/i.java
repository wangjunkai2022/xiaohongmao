package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.l3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractMultiset.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class i<E> extends AbstractCollection<E> implements k3<E> {
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    private transient Set<E> f33550a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient Set<k3.a<E>> f33551b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractMultiset.java */
    /* loaded from: classes2.dex */
    public class a extends l3.h<E> {
        a() {
        }

        @Override // com.google.common.collect.l3.h
        k3<E> e() {
            return i.this;
        }

        @Override // com.google.common.collect.l3.h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return i.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractMultiset.java */
    /* loaded from: classes2.dex */
    public class b extends l3.i<E> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        @Override // com.google.common.collect.l3.i
        k3<E> e() {
            return i.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<k3.a<E>> iterator() {
            return i.this.d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return i.this.b();
        }
    }

    Set<E> a() {
        return new a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public final boolean add(@NullableDecl E e4) {
        add(e4, 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final boolean addAll(Collection<? extends E> collection) {
        return l3.c(this, collection);
    }

    abstract int b();

    abstract Iterator<E> c();

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract void clear();

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public boolean contains(@NullableDecl Object obj) {
        return count(obj) > 0;
    }

    Set<k3.a<E>> createEntrySet() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Iterator<k3.a<E>> d();

    public Set<E> elementSet() {
        Set<E> set = this.f33550a;
        if (set == null) {
            Set<E> a10 = a();
            this.f33550a = a10;
            return a10;
        }
        return set;
    }

    public Set<k3.a<E>> entrySet() {
        Set<k3.a<E>> set = this.f33551b;
        if (set == null) {
            Set<k3.a<E>> createEntrySet = createEntrySet();
            this.f33551b = createEntrySet;
            return createEntrySet;
        }
        return set;
    }

    @Override // java.util.Collection, com.google.common.collect.k3
    public final boolean equals(@NullableDecl Object obj) {
        return l3.i(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.k3
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public final boolean remove(@NullableDecl Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public final boolean removeAll(Collection<?> collection) {
        return l3.p(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public final boolean retainAll(Collection<?> collection) {
        return l3.s(this, collection);
    }

    @CanIgnoreReturnValue
    public int setCount(@NullableDecl E e4, int i4) {
        return l3.v(this, e4, i4);
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.k3
    public final String toString() {
        return entrySet().toString();
    }

    @CanIgnoreReturnValue
    public int add(@NullableDecl E e4, int i4) {
        throw new UnsupportedOperationException();
    }

    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj, int i4) {
        throw new UnsupportedOperationException();
    }

    @CanIgnoreReturnValue
    public boolean setCount(@NullableDecl E e4, int i4, int i10) {
        return l3.w(this, e4, i4, i10);
    }
}
