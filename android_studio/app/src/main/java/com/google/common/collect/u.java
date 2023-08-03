package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: BiMap.java */
@h3.b
/* loaded from: classes2.dex */
public interface u<K, V> extends Map<K, V> {
    @CanIgnoreReturnValue
    @NullableDecl
    V forcePut(@NullableDecl K k10, @NullableDecl V v9);

    u<V, K> inverse();

    @Override // com.google.common.collect.u
    @CanIgnoreReturnValue
    @NullableDecl
    V put(@NullableDecl K k10, @NullableDecl V v9);

    @Override // com.google.common.collect.u
    void putAll(Map<? extends K, ? extends V> map);

    @Override // com.google.common.collect.u
    Set<V> values();
}
