package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;

/* compiled from: Comparators.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class f0 {
    private f0() {
    }

    public static <T> boolean a(Iterable<? extends T> iterable, Comparator<T> comparator) {
        com.google.common.base.a0.E(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (comparator.compare(next, next2) > 0) {
                    return false;
                }
                next = next2;
            }
            return true;
        }
        return true;
    }

    public static <T> boolean b(Iterable<? extends T> iterable, Comparator<T> comparator) {
        com.google.common.base.a0.E(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (comparator.compare(next, next2) >= 0) {
                    return false;
                }
                next = next2;
            }
            return true;
        }
        return true;
    }

    public static <T, S extends T> Comparator<Iterable<S>> c(Comparator<T> comparator) {
        return new y2((Comparator) com.google.common.base.a0.E(comparator));
    }
}
