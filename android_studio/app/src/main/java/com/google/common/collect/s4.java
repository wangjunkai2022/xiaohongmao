package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SortedIterables.java */
@h3.b
/* loaded from: classes2.dex */
public final class s4 {
    private s4() {
    }

    public static <E> Comparator<? super E> a(SortedSet<E> sortedSet) {
        Comparator<? super E> comparator = sortedSet.comparator();
        return comparator == null ? s3.B() : comparator;
    }

    public static boolean b(Comparator<?> comparator, Iterable<?> iterable) {
        Comparator comparator2;
        com.google.common.base.a0.E(comparator);
        com.google.common.base.a0.E(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = a((SortedSet) iterable);
        } else if (!(iterable instanceof r4)) {
            return false;
        } else {
            comparator2 = ((r4) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
