package com.google.common.collect;

import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

/* compiled from: RowSortedTable.java */
@h3.b
/* loaded from: classes2.dex */
public interface l4<R, C, V> extends d5<R, C, V> {
    @Override // com.google.common.collect.d5
    SortedSet<R> rowKeySet();

    @Override // com.google.common.collect.d5
    SortedMap<R, Map<C, V>> rowMap();
}
