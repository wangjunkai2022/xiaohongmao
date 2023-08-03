package com.google.common.collect;

import com.google.common.collect.f3;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingSortedMap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class z1<K, V> extends p1<K, V> implements SortedMap<K, V> {

    /* compiled from: ForwardingSortedMap.java */
    @h3.a
    /* loaded from: classes2.dex */
    protected class a extends f3.g0<K, V> {
        public a() {
            super(z1.this);
        }
    }

    private int Y(Object obj, Object obj2) {
        Comparator<? super K> comparator = comparator();
        if (comparator == null) {
            return ((Comparable) obj).compareTo(obj2);
        }
        return comparator.compare(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p1
    @h3.a
    protected boolean O(@NullableDecl Object obj) {
        try {
            return Y(tailMap(obj).firstKey(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.p1
    /* renamed from: W */
    public abstract SortedMap<K, V> M();

    @h3.a
    protected SortedMap<K, V> X(K k10, K k11) {
        com.google.common.base.a0.e(Y(k10, k11) <= 0, "fromKey must be <= toKey");
        return tailMap(k10).headMap(k11);
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return M().comparator();
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return M().firstKey();
    }

    public SortedMap<K, V> headMap(K k10) {
        return M().headMap(k10);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return M().lastKey();
    }

    public SortedMap<K, V> subMap(K k10, K k11) {
        return M().subMap(k10, k11);
    }

    public SortedMap<K, V> tailMap(K k10) {
        return M().tailMap(k10);
    }
}
