package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ListMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public interface a3<K, V> extends h3<K, V> {
    @Override // 
    Map<K, Collection<V>> asMap();

    @Override // 
    boolean equals(@NullableDecl Object obj);

    @Override // 
    List<V> get(@NullableDecl K k10);

    @Override // 
    @CanIgnoreReturnValue
    List<V> removeAll(@NullableDecl Object obj);

    @Override // 
    @CanIgnoreReturnValue
    List<V> replaceValues(K k10, Iterable<? extends V> iterable);
}
