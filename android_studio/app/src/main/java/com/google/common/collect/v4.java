package com.google.common.collect;

import com.google.common.collect.k3;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

/* compiled from: SortedMultiset.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public interface v4<E> extends w4<E>, r4<E> {
    Comparator<? super E> comparator();

    v4<E> descendingMultiset();

    @Override // com.google.common.collect.w4, com.google.common.collect.k3
    NavigableSet<E> elementSet();

    @Override // com.google.common.collect.k3
    Set<k3.a<E>> entrySet();

    k3.a<E> firstEntry();

    v4<E> headMultiset(E e4, BoundType boundType);

    @Override // com.google.common.collect.k3, java.util.Collection, java.lang.Iterable
    Iterator<E> iterator();

    k3.a<E> lastEntry();

    k3.a<E> pollFirstEntry();

    k3.a<E> pollLastEntry();

    v4<E> subMultiset(E e4, BoundType boundType, E e10, BoundType boundType2);

    v4<E> tailMultiset(E e4, BoundType boundType);
}
