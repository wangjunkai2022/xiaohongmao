package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: LexicographicalOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
final class y2<T> extends s3<Iterable<T>> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f33978d = 0;

    /* renamed from: c  reason: collision with root package name */
    final Comparator<? super T> f33979c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y2(Comparator<? super T> comparator) {
        this.f33979c = comparator;
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    /* renamed from: J */
    public int compare(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable2.iterator();
        for (T t9 : iterable) {
            if (!it.hasNext()) {
                return 1;
            }
            int compare = this.f33979c.compare(t9, it.next());
            if (compare != 0) {
                return compare;
            }
        }
        return it.hasNext() ? -1 : 0;
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y2) {
            return this.f33979c.equals(((y2) obj).f33979c);
        }
        return false;
    }

    public int hashCode() {
        return this.f33979c.hashCode() ^ 2075626741;
    }

    public String toString() {
        return this.f33979c + ".lexicographical()";
    }
}
