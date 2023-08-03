package com.google.common.collect;

import com.google.common.collect.f3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingMap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class p1<K, V> extends v1 implements Map<K, V> {

    /* compiled from: ForwardingMap.java */
    @h3.a
    /* loaded from: classes2.dex */
    protected abstract class a extends f3.s<K, V> {
        public a() {
        }

        @Override // com.google.common.collect.f3.s
        Map<K, V> e() {
            return p1.this;
        }
    }

    /* compiled from: ForwardingMap.java */
    @h3.a
    /* loaded from: classes2.dex */
    protected class b extends f3.b0<K, V> {
        public b() {
            super(p1.this);
        }
    }

    /* compiled from: ForwardingMap.java */
    @h3.a
    /* loaded from: classes2.dex */
    protected class c extends f3.q0<K, V> {
        public c() {
            super(p1.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.v1
    /* renamed from: M */
    public abstract Map<K, V> L();

    protected void N() {
        x2.h(entrySet().iterator());
    }

    @h3.a
    protected boolean O(@NullableDecl Object obj) {
        return f3.q(this, obj);
    }

    protected boolean P(@NullableDecl Object obj) {
        return f3.r(this, obj);
    }

    protected boolean Q(@NullableDecl Object obj) {
        return f3.w(this, obj);
    }

    protected int R() {
        return o4.k(entrySet());
    }

    protected boolean S() {
        return !entrySet().iterator().hasNext();
    }

    protected void T(Map<? extends K, ? extends V> map) {
        f3.j0(this, map);
    }

    @h3.a
    protected V U(@NullableDecl Object obj) {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (com.google.common.base.w.a(next.getKey(), obj)) {
                V value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String V() {
        return f3.w0(this);
    }

    public void clear() {
        L().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return L().containsKey(obj);
    }

    public boolean containsValue(@NullableDecl Object obj) {
        return L().containsValue(obj);
    }

    public Set<Map.Entry<K, V>> entrySet() {
        return L().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        return obj == this || L().equals(obj);
    }

    @Override // java.util.Map
    public V get(@NullableDecl Object obj) {
        return L().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return L().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return L().isEmpty();
    }

    public Set<K> keySet() {
        return L().keySet();
    }

    @CanIgnoreReturnValue
    public V put(K k10, V v9) {
        return L().put(k10, v9);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        L().putAll(map);
    }

    @CanIgnoreReturnValue
    public V remove(Object obj) {
        return L().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return L().size();
    }

    public Collection<V> values() {
        return L().values();
    }
}
