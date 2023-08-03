package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: SortedSetMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public interface y4<K, V> extends n4<K, V> {
    @Override // com.google.common.collect.n4, com.google.common.collect.h3, com.google.common.collect.a3
    Map<K, Collection<V>> asMap();

    @Override // com.google.common.collect.n4, com.google.common.collect.h3, com.google.common.collect.a3
    SortedSet<V> get(@NullableDecl K k10);

    @Override // com.google.common.collect.n4, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    SortedSet<V> removeAll(@NullableDecl Object obj);

    @Override // com.google.common.collect.n4, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    SortedSet<V> replaceValues(K k10, Iterable<? extends V> iterable);

    Comparator<? super V> valueComparator();
}
