package com.google.common.collect;

import java.util.Collection;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* compiled from: AbstractSortedKeySortedSetMultimap.java */
@h3.b
/* loaded from: classes2.dex */
abstract class n<K, V> extends p<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public n(SortedMap<K, Collection<V>> sortedMap) {
        super(sortedMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.e
    /* renamed from: K */
    public SortedMap<K, Collection<V>> r() {
        return (SortedMap) super.r();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h
    Set<K> d() {
        return w();
    }

    @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public SortedMap<K, Collection<V>> asMap() {
        return (SortedMap) super.asMap();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public SortedSet<K> keySet() {
        return (SortedSet) super.keySet();
    }
}
