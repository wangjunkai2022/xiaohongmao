package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.d5;
import com.google.common.collect.e5;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b
/* loaded from: classes2.dex */
public abstract class ImmutableTable<R, C, V> extends q<R, C, V> implements Serializable {

    /* loaded from: classes2.dex */
    public static final class a<R, C, V> {

        /* renamed from: a  reason: collision with root package name */
        private final List<d5.a<R, C, V>> f32852a = b3.q();
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        private Comparator<? super R> f32853b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        private Comparator<? super C> f32854c;

        public ImmutableTable<R, C, V> a() {
            int size = this.f32852a.size();
            if (size != 0) {
                if (size != 1) {
                    return i4.p(this.f32852a, this.f32853b, this.f32854c);
                }
                return new q4((d5.a) w2.z(this.f32852a));
            }
            return ImmutableTable.of();
        }

        @CanIgnoreReturnValue
        public a<R, C, V> b(Comparator<? super C> comparator) {
            this.f32854c = (Comparator) com.google.common.base.a0.F(comparator, "columnComparator");
            return this;
        }

        @CanIgnoreReturnValue
        public a<R, C, V> c(Comparator<? super R> comparator) {
            this.f32853b = (Comparator) com.google.common.base.a0.F(comparator, "rowComparator");
            return this;
        }

        @CanIgnoreReturnValue
        public a<R, C, V> d(d5.a<? extends R, ? extends C, ? extends V> aVar) {
            if (aVar instanceof e5.c) {
                com.google.common.base.a0.F(aVar.a(), "row");
                com.google.common.base.a0.F(aVar.b(), "column");
                com.google.common.base.a0.F(aVar.getValue(), "value");
                this.f32852a.add(aVar);
            } else {
                e(aVar.a(), aVar.b(), aVar.getValue());
            }
            return this;
        }

        @CanIgnoreReturnValue
        public a<R, C, V> e(R r9, C c10, V v9) {
            this.f32852a.add(ImmutableTable.h(r9, c10, v9));
            return this;
        }

        @CanIgnoreReturnValue
        public a<R, C, V> f(d5<? extends R, ? extends C, ? extends V> d5Var) {
            for (d5.a<? extends R, ? extends C, ? extends V> aVar : d5Var.cellSet()) {
                d(aVar);
            }
            return this;
        }
    }

    /* loaded from: classes2.dex */
    static final class b implements Serializable {

        /* renamed from: f  reason: collision with root package name */
        private static final long f32855f = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f32856a;

        /* renamed from: b  reason: collision with root package name */
        private final Object[] f32857b;

        /* renamed from: c  reason: collision with root package name */
        private final Object[] f32858c;

        /* renamed from: d  reason: collision with root package name */
        private final int[] f32859d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f32860e;

        private b(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.f32856a = objArr;
            this.f32857b = objArr2;
            this.f32858c = objArr3;
            this.f32859d = iArr;
            this.f32860e = iArr2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static b a(ImmutableTable<?, ?, ?> immutableTable, int[] iArr, int[] iArr2) {
            return new b(immutableTable.rowKeySet().toArray(), immutableTable.columnKeySet().toArray(), immutableTable.values().toArray(), iArr, iArr2);
        }

        Object b() {
            Object[] objArr = this.f32858c;
            if (objArr.length == 0) {
                return ImmutableTable.of();
            }
            int i4 = 0;
            if (objArr.length == 1) {
                return ImmutableTable.of(this.f32856a[0], this.f32857b[0], objArr[0]);
            }
            ImmutableList.a aVar = new ImmutableList.a(objArr.length);
            while (true) {
                Object[] objArr2 = this.f32858c;
                if (i4 < objArr2.length) {
                    aVar.g(ImmutableTable.h(this.f32856a[this.f32859d[i4]], this.f32857b[this.f32860e[i4]], objArr2[i4]));
                    i4++;
                } else {
                    return i4.r(aVar.e(), ImmutableSet.copyOf(this.f32856a), ImmutableSet.copyOf(this.f32857b));
                }
            }
        }
    }

    public static <R, C, V> a<R, C, V> builder() {
        return new a<>();
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(d5<? extends R, ? extends C, ? extends V> d5Var) {
        if (d5Var instanceof ImmutableTable) {
            return (ImmutableTable) d5Var;
        }
        return i(d5Var.cellSet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> d5.a<R, C, V> h(R r9, C c10, V v9) {
        return e5.c(com.google.common.base.a0.F(r9, "rowKey"), com.google.common.base.a0.F(c10, "columnKey"), com.google.common.base.a0.F(v9, "value"));
    }

    private static <R, C, V> ImmutableTable<R, C, V> i(Iterable<? extends d5.a<? extends R, ? extends C, ? extends V>> iterable) {
        a builder = builder();
        for (d5.a<? extends R, ? extends C, ? extends V> aVar : iterable) {
            builder.d(aVar);
        }
        return builder.a();
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return (ImmutableTable<R, C, V>) z4.f34004g;
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return column((ImmutableTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.d5
    public abstract ImmutableMap<C, Map<R, V>> columnMap();

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean containsColumn(@NullableDecl Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean containsRow(@NullableDecl Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.q
    final Iterator<V> d() {
        throw new AssertionError("should never be called");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q
    /* renamed from: e */
    public final k5<d5.a<R, C, V>> a() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Object get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q
    /* renamed from: j */
    public abstract ImmutableSet<d5.a<R, C, V>> b();

    abstract b k();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q
    /* renamed from: l */
    public abstract ImmutableCollection<V> c();

    final Object m() {
        return k();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    @Deprecated
    public final V put(R r9, C c10, V v9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @Deprecated
    public final void putAll(d5<? extends R, ? extends C, ? extends V> d5Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    @Deprecated
    public final V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((ImmutableTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.d5
    public abstract ImmutableMap<R, Map<C, V>> rowMap();

    @Override // com.google.common.collect.q
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <R, C, V> ImmutableTable<R, C, V> of(R r9, C c10, V v9) {
        return new q4(r9, c10, v9);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public ImmutableSet<d5.a<R, C, V>> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    @Override // com.google.common.collect.d5
    public ImmutableMap<R, V> column(C c10) {
        com.google.common.base.a0.F(c10, "columnKey");
        return (ImmutableMap) com.google.common.base.v.a((ImmutableMap) columnMap().get(c10), ImmutableMap.of());
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.d5
    public ImmutableMap<C, V> row(R r9) {
        com.google.common.base.a0.F(r9, "rowKey");
        return (ImmutableMap) com.google.common.base.v.a((ImmutableMap) rowMap().get(r9), ImmutableMap.of());
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }
}
