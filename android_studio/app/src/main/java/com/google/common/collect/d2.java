package com.google.common.collect;

import com.google.common.collect.d5;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: ForwardingTable.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class d2<R, C, V> extends v1 implements d5<R, C, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.v1
    /* renamed from: M */
    public abstract d5<R, C, V> L();

    @Override // com.google.common.collect.d5
    public Set<d5.a<R, C, V>> cellSet() {
        return L().cellSet();
    }

    @Override // com.google.common.collect.d5
    public void clear() {
        L().clear();
    }

    @Override // com.google.common.collect.d5
    public Map<R, V> column(C c10) {
        return L().column(c10);
    }

    @Override // com.google.common.collect.d5
    public Set<C> columnKeySet() {
        return L().columnKeySet();
    }

    @Override // com.google.common.collect.d5
    public Map<C, Map<R, V>> columnMap() {
        return L().columnMap();
    }

    @Override // com.google.common.collect.d5
    public boolean contains(Object obj, Object obj2) {
        return L().contains(obj, obj2);
    }

    @Override // com.google.common.collect.d5
    public boolean containsColumn(Object obj) {
        return L().containsColumn(obj);
    }

    @Override // com.google.common.collect.d5
    public boolean containsRow(Object obj) {
        return L().containsRow(obj);
    }

    @Override // com.google.common.collect.d5
    public boolean containsValue(Object obj) {
        return L().containsValue(obj);
    }

    @Override // com.google.common.collect.d5
    public boolean equals(Object obj) {
        return obj == this || L().equals(obj);
    }

    @Override // com.google.common.collect.d5
    public V get(Object obj, Object obj2) {
        return L().get(obj, obj2);
    }

    @Override // com.google.common.collect.d5
    public int hashCode() {
        return L().hashCode();
    }

    @Override // com.google.common.collect.d5
    public boolean isEmpty() {
        return L().isEmpty();
    }

    @Override // com.google.common.collect.d5
    @CanIgnoreReturnValue
    public V put(R r9, C c10, V v9) {
        return L().put(r9, c10, v9);
    }

    @Override // com.google.common.collect.d5
    public void putAll(d5<? extends R, ? extends C, ? extends V> d5Var) {
        L().putAll(d5Var);
    }

    @Override // com.google.common.collect.d5
    @CanIgnoreReturnValue
    public V remove(Object obj, Object obj2) {
        return L().remove(obj, obj2);
    }

    @Override // com.google.common.collect.d5
    public Map<C, V> row(R r9) {
        return L().row(r9);
    }

    @Override // com.google.common.collect.d5
    public Set<R> rowKeySet() {
        return L().rowKeySet();
    }

    @Override // com.google.common.collect.d5
    public Map<R, Map<C, V>> rowMap() {
        return L().rowMap();
    }

    @Override // com.google.common.collect.d5
    public int size() {
        return L().size();
    }

    @Override // com.google.common.collect.d5
    public Collection<V> values() {
        return L().values();
    }
}
