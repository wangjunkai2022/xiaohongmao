package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CompatibleWith;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Table.java */
@h3.b
/* loaded from: classes2.dex */
public interface d5<R, C, V> {

    /* compiled from: Table.java */
    /* loaded from: classes2.dex */
    public interface a<R, C, V> {
        @NullableDecl
        R a();

        @NullableDecl
        C b();

        boolean equals(@NullableDecl Object obj);

        @NullableDecl
        V getValue();

        int hashCode();
    }

    Set<a<R, C, V>> cellSet();

    void clear();

    Map<R, V> column(C c10);

    Set<C> columnKeySet();

    Map<C, Map<R, V>> columnMap();

    boolean contains(@NullableDecl @CompatibleWith("R") Object obj, @NullableDecl @CompatibleWith("C") Object obj2);

    boolean containsColumn(@NullableDecl @CompatibleWith("C") Object obj);

    boolean containsRow(@NullableDecl @CompatibleWith("R") Object obj);

    boolean containsValue(@NullableDecl @CompatibleWith("V") Object obj);

    boolean equals(@NullableDecl Object obj);

    V get(@NullableDecl @CompatibleWith("R") Object obj, @NullableDecl @CompatibleWith("C") Object obj2);

    int hashCode();

    boolean isEmpty();

    @CanIgnoreReturnValue
    @NullableDecl
    V put(R r9, C c10, V v9);

    void putAll(d5<? extends R, ? extends C, ? extends V> d5Var);

    @CanIgnoreReturnValue
    @NullableDecl
    V remove(@NullableDecl @CompatibleWith("R") Object obj, @NullableDecl @CompatibleWith("C") Object obj2);

    Map<C, V> row(R r9);

    Set<R> rowKeySet();

    Map<R, Map<C, V>> rowMap();

    int size();

    Collection<V> values();
}
