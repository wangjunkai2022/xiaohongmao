package com.google.common.collect;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingMapEntry.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class q1<K, V> extends v1 implements Map.Entry<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.v1
    /* renamed from: M */
    public abstract Map.Entry<K, V> L();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean N(@NullableDecl Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            return com.google.common.base.w.a(getKey(), entry.getKey()) && com.google.common.base.w.a(getValue(), entry.getValue());
        }
        return false;
    }

    protected int O() {
        K key = getKey();
        V value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    @h3.a
    protected String P() {
        return getKey() + "=" + getValue();
    }

    public boolean equals(@NullableDecl Object obj) {
        return L().equals(obj);
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return L().getKey();
    }

    public V getValue() {
        return L().getValue();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return L().hashCode();
    }

    public V setValue(V v9) {
        return L().setValue(v9);
    }
}
