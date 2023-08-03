package com.google.common.collect;

import java.lang.Comparable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractRangeSet.java */
@h3.c
/* loaded from: classes2.dex */
abstract class k<C extends Comparable> implements y3<C> {
    @Override // com.google.common.collect.y3
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y3
    public void addAll(y3<C> y3Var) {
        addAll(y3Var.asRanges());
    }

    @Override // com.google.common.collect.y3
    public void clear() {
        remove(Range.all());
    }

    @Override // com.google.common.collect.y3
    public boolean contains(C c10) {
        return rangeContaining(c10) != null;
    }

    @Override // com.google.common.collect.y3
    public abstract boolean encloses(Range<C> range);

    @Override // com.google.common.collect.y3
    public boolean enclosesAll(y3<C> y3Var) {
        return enclosesAll(y3Var.asRanges());
    }

    @Override // com.google.common.collect.y3
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y3) {
            return asRanges().equals(((y3) obj).asRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.y3
    public final int hashCode() {
        return asRanges().hashCode();
    }

    @Override // com.google.common.collect.y3
    public boolean intersects(Range<C> range) {
        return !subRangeSet(range).isEmpty();
    }

    @Override // com.google.common.collect.y3
    public boolean isEmpty() {
        return asRanges().isEmpty();
    }

    @Override // com.google.common.collect.y3
    public abstract Range<C> rangeContaining(C c10);

    @Override // com.google.common.collect.y3
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y3
    public void removeAll(y3<C> y3Var) {
        removeAll(y3Var.asRanges());
    }

    @Override // com.google.common.collect.y3
    public final String toString() {
        return asRanges().toString();
    }

    @Override // com.google.common.collect.y3
    public void addAll(Iterable<Range<C>> iterable) {
        for (Range<C> range : iterable) {
            add(range);
        }
    }

    @Override // com.google.common.collect.y3
    public boolean enclosesAll(Iterable<Range<C>> iterable) {
        for (Range<C> range : iterable) {
            if (!encloses(range)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.common.collect.y3
    public void removeAll(Iterable<Range<C>> iterable) {
        for (Range<C> range : iterable) {
            remove(range);
        }
    }
}
