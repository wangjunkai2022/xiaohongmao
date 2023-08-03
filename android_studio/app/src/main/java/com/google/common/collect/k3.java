package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CompatibleWith;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Multiset.java */
@h3.b
/* loaded from: classes2.dex */
public interface k3<E> extends Collection<E> {

    /* compiled from: Multiset.java */
    /* loaded from: classes2.dex */
    public interface a<E> {
        boolean equals(Object obj);

        int getCount();

        E getElement();

        int hashCode();

        String toString();
    }

    @CanIgnoreReturnValue
    int add(@NullableDecl E e4, int i4);

    @Override // java.util.Collection, com.google.common.collect.k3
    @CanIgnoreReturnValue
    boolean add(E e4);

    @Override // java.util.Collection, com.google.common.collect.k3
    boolean contains(@NullableDecl Object obj);

    @Override // java.util.Collection
    boolean containsAll(Collection<?> collection);

    int count(@NullableDecl @CompatibleWith("E") Object obj);

    Set<E> elementSet();

    Set<a<E>> entrySet();

    @Override // com.google.common.collect.k3
    boolean equals(@NullableDecl Object obj);

    @Override // com.google.common.collect.k3
    int hashCode();

    @Override // java.util.Collection, java.lang.Iterable, com.google.common.collect.k3
    Iterator<E> iterator();

    @CanIgnoreReturnValue
    int remove(@NullableDecl @CompatibleWith("E") Object obj, int i4);

    @Override // java.util.Collection, com.google.common.collect.k3
    @CanIgnoreReturnValue
    boolean remove(@NullableDecl Object obj);

    @Override // java.util.Collection, com.google.common.collect.k3
    @CanIgnoreReturnValue
    boolean removeAll(Collection<?> collection);

    @Override // java.util.Collection, com.google.common.collect.k3
    @CanIgnoreReturnValue
    boolean retainAll(Collection<?> collection);

    @CanIgnoreReturnValue
    int setCount(E e4, int i4);

    @CanIgnoreReturnValue
    boolean setCount(E e4, int i4, int i10);

    @Override // java.util.Collection, com.google.common.collect.k3
    int size();

    String toString();
}
