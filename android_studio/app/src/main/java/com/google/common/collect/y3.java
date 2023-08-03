package com.google.common.collect;

import java.lang.Comparable;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: RangeSet.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public interface y3<C extends Comparable> {
    void add(Range<C> range);

    void addAll(y3<C> y3Var);

    void addAll(Iterable<Range<C>> iterable);

    Set<Range<C>> asDescendingSetOfRanges();

    Set<Range<C>> asRanges();

    void clear();

    y3<C> complement();

    boolean contains(C c10);

    boolean encloses(Range<C> range);

    boolean enclosesAll(y3<C> y3Var);

    boolean enclosesAll(Iterable<Range<C>> iterable);

    boolean equals(@NullableDecl Object obj);

    int hashCode();

    boolean intersects(Range<C> range);

    boolean isEmpty();

    Range<C> rangeContaining(C c10);

    void remove(Range<C> range);

    void removeAll(y3<C> y3Var);

    void removeAll(Iterable<Range<C>> iterable);

    Range<C> span();

    y3<C> subRangeSet(Range<C> range);

    String toString();
}
