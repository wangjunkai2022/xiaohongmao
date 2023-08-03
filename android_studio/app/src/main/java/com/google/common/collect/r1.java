package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class r1<K, V> extends v1 implements h3<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.v1
    /* renamed from: M */
    public abstract h3<K, V> L();

    public Map<K, Collection<V>> asMap() {
        return L().asMap();
    }

    public void clear() {
        L().clear();
    }

    @Override // com.google.common.collect.h3
    public boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return L().containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.h3
    public boolean containsKey(@NullableDecl Object obj) {
        return L().containsKey(obj);
    }

    @Override // com.google.common.collect.h3
    public boolean containsValue(@NullableDecl Object obj) {
        return L().containsValue(obj);
    }

    public Collection<Map.Entry<K, V>> entries() {
        return L().entries();
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public boolean equals(@NullableDecl Object obj) {
        return obj == this || L().equals(obj);
    }

    public Collection<V> get(@NullableDecl K k10) {
        return L().get(k10);
    }

    @Override // com.google.common.collect.h3
    public int hashCode() {
        return L().hashCode();
    }

    @Override // com.google.common.collect.h3
    public boolean isEmpty() {
        return L().isEmpty();
    }

    public Set<K> keySet() {
        return L().keySet();
    }

    public k3<K> keys() {
        return L().keys();
    }

    @CanIgnoreReturnValue
    public boolean put(K k10, V v9) {
        return L().put(k10, v9);
    }

    @CanIgnoreReturnValue
    public boolean putAll(K k10, Iterable<? extends V> iterable) {
        return L().putAll(k10, iterable);
    }

    @CanIgnoreReturnValue
    public boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return L().remove(obj, obj2);
    }

    @CanIgnoreReturnValue
    public Collection<V> removeAll(@NullableDecl Object obj) {
        return L().removeAll(obj);
    }

    @CanIgnoreReturnValue
    public Collection<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return L().replaceValues(k10, iterable);
    }

    @Override // com.google.common.collect.h3
    public int size() {
        return L().size();
    }

    public Collection<V> values() {
        return L().values();
    }

    @CanIgnoreReturnValue
    public boolean putAll(h3<? extends K, ? extends V> h3Var) {
        return L().putAll(h3Var);
    }
}
