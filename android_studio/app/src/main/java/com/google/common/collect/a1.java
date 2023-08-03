package com.google.common.collect;

import com.google.j2objc.annotations.Weak;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: FilteredMultimapValues.java */
@h3.b
/* loaded from: classes2.dex */
final class a1<K, V> extends AbstractCollection<V> {
    @Weak

    /* renamed from: a  reason: collision with root package name */
    private final z0<K, V> f33065a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(z0<K, V> z0Var) {
        this.f33065a = (z0) com.google.common.base.a0.E(z0Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f33065a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return this.f33065a.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<V> iterator() {
        return f3.O0(this.f33065a.entries().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(@NullableDecl Object obj) {
        com.google.common.base.b0<? super Map.Entry<K, V>> v9 = this.f33065a.v();
        Iterator<Map.Entry<K, V>> it = this.f33065a.a().entries().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (v9.apply(next) && com.google.common.base.w.a(next.getValue(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return w2.J(this.f33065a.a().entries(), com.google.common.base.c0.d(this.f33065a.v(), f3.Q0(com.google.common.base.c0.n(collection))));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return w2.J(this.f33065a.a().entries(), com.google.common.base.c0.d(this.f33065a.v(), f3.Q0(com.google.common.base.c0.q(com.google.common.base.c0.n(collection)))));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f33065a.size();
    }
}
