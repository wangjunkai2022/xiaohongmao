package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CompatibleWith;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Multimap.java */
@h3.b
/* loaded from: classes2.dex */
public interface h3<K, V> {
    Map<K, Collection<V>> asMap();

    void clear();

    boolean containsEntry(@NullableDecl @CompatibleWith("K") Object obj, @NullableDecl @CompatibleWith("V") Object obj2);

    boolean containsKey(@NullableDecl @CompatibleWith("K") Object obj);

    boolean containsValue(@NullableDecl @CompatibleWith("V") Object obj);

    Collection<Map.Entry<K, V>> entries();

    boolean equals(@NullableDecl Object obj);

    Collection<V> get(@NullableDecl K k10);

    int hashCode();

    boolean isEmpty();

    Set<K> keySet();

    k3<K> keys();

    @CanIgnoreReturnValue
    boolean put(@NullableDecl K k10, @NullableDecl V v9);

    @CanIgnoreReturnValue
    boolean putAll(h3<? extends K, ? extends V> h3Var);

    @CanIgnoreReturnValue
    boolean putAll(@NullableDecl K k10, Iterable<? extends V> iterable);

    @CanIgnoreReturnValue
    boolean remove(@NullableDecl @CompatibleWith("K") Object obj, @NullableDecl @CompatibleWith("V") Object obj2);

    @CanIgnoreReturnValue
    Collection<V> removeAll(@NullableDecl @CompatibleWith("K") Object obj);

    @CanIgnoreReturnValue
    Collection<V> replaceValues(@NullableDecl K k10, Iterable<? extends V> iterable);

    int size();

    Collection<V> values();
}
