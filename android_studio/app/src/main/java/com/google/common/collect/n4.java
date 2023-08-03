package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: SetMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public interface n4<K, V> extends h3<K, V> {
    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    Map<K, Collection<V>> asMap();

    @Override // com.google.common.collect.h3
    Set<Map.Entry<K, V>> entries();

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    boolean equals(@NullableDecl Object obj);

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    Set<V> get(@NullableDecl K k10);

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    Set<V> removeAll(@NullableDecl Object obj);

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    Set<V> replaceValues(K k10, Iterable<? extends V> iterable);
}
