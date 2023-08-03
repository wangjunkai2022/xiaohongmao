package com.google.common.collect;

import java.lang.Comparable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: RangeMap.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public interface x3<K extends Comparable, V> {
    Map<Range<K>, V> asDescendingMapOfRanges();

    Map<Range<K>, V> asMapOfRanges();

    void clear();

    boolean equals(@NullableDecl Object obj);

    @NullableDecl
    V get(K k10);

    @NullableDecl
    Map.Entry<Range<K>, V> getEntry(K k10);

    int hashCode();

    void put(Range<K> range, V v9);

    void putAll(x3<K, V> x3Var);

    void putCoalescing(Range<K> range, V v9);

    void remove(Range<K> range);

    Range<K> span();

    x3<K, V> subRangeMap(Range<K> range);

    String toString();
}
