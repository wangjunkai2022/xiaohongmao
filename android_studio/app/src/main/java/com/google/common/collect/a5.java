package com.google.common.collect;

import com.google.common.collect.f3;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StandardRowSortedTable.java */
@h3.b
/* loaded from: classes2.dex */
public class a5<R, C, V> extends b5<R, C, V> implements l4<R, C, V> {

    /* renamed from: i  reason: collision with root package name */
    private static final long f33070i = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StandardRowSortedTable.java */
    /* loaded from: classes2.dex */
    public class b extends b5<R, C, V>.h implements SortedMap<R, Map<C, V>> {
        private b() {
            super();
        }

        @Override // java.util.SortedMap
        public Comparator<? super R> comparator() {
            return a5.this.r().comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.r0
        /* renamed from: f */
        public SortedSet<R> b() {
            return new f3.g0(this);
        }

        @Override // java.util.SortedMap
        public R firstKey() {
            return (R) a5.this.r().firstKey();
        }

        @Override // com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: g */
        public SortedSet<R> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> headMap(R r9) {
            com.google.common.base.a0.E(r9);
            return new a5(a5.this.r().headMap(r9), a5.this.f33125d).rowMap();
        }

        @Override // java.util.SortedMap
        public R lastKey() {
            return (R) a5.this.r().lastKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> subMap(R r9, R r10) {
            com.google.common.base.a0.E(r9);
            com.google.common.base.a0.E(r10);
            return new a5(a5.this.r().subMap(r9, r10), a5.this.f33125d).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> tailMap(R r9) {
            com.google.common.base.a0.E(r9);
            return new a5(a5.this.r().tailMap(r9), a5.this.f33125d).rowMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a5(SortedMap<R, Map<C, V>> sortedMap, com.google.common.base.i0<? extends Map<C, V>> i0Var) {
        super(sortedMap, i0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SortedMap<R, Map<C, V>> r() {
        return (SortedMap) this.f33124c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.b5
    /* renamed from: q */
    public SortedMap<R, Map<C, V>> l() {
        return new b();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public SortedSet<R> rowKeySet() {
        return (SortedSet) rowMap().keySet();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public SortedMap<R, Map<C, V>> rowMap() {
        return (SortedMap) super.rowMap();
    }
}
