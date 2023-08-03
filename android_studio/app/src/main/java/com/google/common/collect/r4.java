package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;

/* compiled from: SortedIterable.java */
@h3.b
/* loaded from: classes2.dex */
interface r4<T> extends Iterable<T> {
    Comparator<? super T> comparator();

    @Override // java.lang.Iterable
    Iterator<T> iterator();
}
