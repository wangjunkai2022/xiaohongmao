package com.google.common.collect;

import com.google.common.collect.f3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(serializable = true)
/* loaded from: classes2.dex */
public class TreeBasedTable<R, C, V> extends a5<R, C, V> {

    /* renamed from: k  reason: collision with root package name */
    private static final long f32941k = 0;

    /* renamed from: j  reason: collision with root package name */
    private final Comparator<? super C> f32942j;

    /* loaded from: classes2.dex */
    class a implements com.google.common.base.q<Map<C, V>, Iterator<C>> {
        a() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public Iterator<C> apply(Map<C, V> map) {
            return map.keySet().iterator();
        }
    }

    /* loaded from: classes2.dex */
    class b extends com.google.common.collect.c<C> {
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        C f32944c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Iterator f32945d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Comparator f32946e;

        b(Iterator it, Comparator comparator) {
            this.f32945d = it;
            this.f32946e = comparator;
        }

        @Override // com.google.common.collect.c
        protected C a() {
            boolean z9;
            while (this.f32945d.hasNext()) {
                C c10 = (C) this.f32945d.next();
                C c11 = this.f32944c;
                if (c11 == null || this.f32946e.compare(c10, c11) != 0) {
                    z9 = false;
                    continue;
                } else {
                    z9 = true;
                    continue;
                }
                if (!z9) {
                    this.f32944c = c10;
                    return c10;
                }
            }
            this.f32944c = null;
            return b();
        }
    }

    /* loaded from: classes2.dex */
    private static class c<C, V> implements com.google.common.base.i0<TreeMap<C, V>>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32948b = 0;

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super C> f32949a;

        c(Comparator<? super C> comparator) {
            this.f32949a = comparator;
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.f32949a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d extends b5<R, C, V>.g implements SortedMap<C, V> {
        @NullableDecl

        /* renamed from: d  reason: collision with root package name */
        final C f32950d;
        @NullableDecl

        /* renamed from: e  reason: collision with root package name */
        final C f32951e;
        @NullableDecl

        /* renamed from: f  reason: collision with root package name */
        transient SortedMap<C, V> f32952f;

        d(TreeBasedTable treeBasedTable, R r9) {
            this(r9, null, null);
        }

        @Override // java.util.SortedMap
        public Comparator<? super C> comparator() {
            return TreeBasedTable.this.columnComparator();
        }

        @Override // com.google.common.collect.b5.g, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return j(obj) && super.containsKey(obj);
        }

        @Override // com.google.common.collect.b5.g
        void d() {
            if (k() == null || !this.f32952f.isEmpty()) {
                return;
            }
            TreeBasedTable.this.f33124c.remove(this.f33151a);
            this.f32952f = null;
            this.f33152b = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b5.g
        /* renamed from: f */
        public SortedMap<C, V> b() {
            return (SortedMap) super.b();
        }

        @Override // java.util.SortedMap
        public C firstKey() {
            if (b() != null) {
                return b().firstKey();
            }
            throw new NoSuchElementException();
        }

        int g(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b5.g
        /* renamed from: h */
        public SortedMap<C, V> c() {
            SortedMap<C, V> k10 = k();
            if (k10 != null) {
                C c10 = this.f32950d;
                if (c10 != null) {
                    k10 = k10.tailMap(c10);
                }
                C c11 = this.f32951e;
                return c11 != null ? k10.headMap(c11) : k10;
            }
            return null;
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> headMap(C c10) {
            com.google.common.base.a0.d(j(com.google.common.base.a0.E(c10)));
            return new d(this.f33151a, this.f32950d, c10);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: i */
        public SortedSet<C> keySet() {
            return new f3.g0(this);
        }

        boolean j(@NullableDecl Object obj) {
            C c10;
            C c11;
            return obj != null && ((c10 = this.f32950d) == null || g(c10, obj) <= 0) && ((c11 = this.f32951e) == null || g(c11, obj) > 0);
        }

        SortedMap<C, V> k() {
            SortedMap<C, V> sortedMap = this.f32952f;
            if (sortedMap == null || (sortedMap.isEmpty() && TreeBasedTable.this.f33124c.containsKey(this.f33151a))) {
                this.f32952f = (SortedMap) TreeBasedTable.this.f33124c.get(this.f33151a);
            }
            return this.f32952f;
        }

        @Override // java.util.SortedMap
        public C lastKey() {
            if (b() != null) {
                return b().lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.b5.g, java.util.AbstractMap, java.util.Map
        public V put(C c10, V v9) {
            com.google.common.base.a0.d(j(com.google.common.base.a0.E(c10)));
            return (V) super.put(c10, v9);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> subMap(C c10, C c11) {
            com.google.common.base.a0.d(j(com.google.common.base.a0.E(c10)) && j(com.google.common.base.a0.E(c11)));
            return new d(this.f33151a, c10, c11);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> tailMap(C c10) {
            com.google.common.base.a0.d(j(com.google.common.base.a0.E(c10)));
            return new d(this.f33151a, c10, this.f32951e);
        }

        d(R r9, @NullableDecl C c10, @NullableDecl C c11) {
            super(r9);
            this.f32950d = c10;
            this.f32951e = c11;
            com.google.common.base.a0.d(c10 == null || c11 == null || g(c10, c11) <= 0);
        }
    }

    TreeBasedTable(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new c(comparator2));
        this.f32942j = comparator2;
    }

    public static <R extends Comparable, C extends Comparable, V> TreeBasedTable<R, C, V> create() {
        return new TreeBasedTable<>(s3.B(), s3.B());
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Deprecated
    public Comparator<? super C> columnComparator() {
        return this.f32942j;
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean containsColumn(@NullableDecl Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean containsRow(@NullableDecl Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Object get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.b5
    Iterator<C> k() {
        Comparator<? super C> columnComparator = columnComparator();
        return new b(x2.O(w2.U(this.f33124c.values(), new a()), columnComparator), columnComparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ void putAll(d5 d5Var) {
        super.putAll(d5Var);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((TreeBasedTable<R, C, V>) obj);
    }

    @Deprecated
    public Comparator<? super R> rowComparator() {
        return rowKeySet().comparator();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.q
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        com.google.common.base.a0.E(comparator);
        com.google.common.base.a0.E(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public SortedMap<C, V> row(R r9) {
        return new d(this, r9);
    }

    @Override // com.google.common.collect.a5, com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public SortedSet<R> rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.a5, com.google.common.collect.b5, com.google.common.collect.d5
    public SortedMap<R, Map<C, V>> rowMap() {
        return super.rowMap();
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(TreeBasedTable<R, C, ? extends V> treeBasedTable) {
        TreeBasedTable<R, C, V> treeBasedTable2 = new TreeBasedTable<>(treeBasedTable.rowComparator(), treeBasedTable.columnComparator());
        treeBasedTable2.putAll(treeBasedTable);
        return treeBasedTable2;
    }
}
