package com.google.common.collect;

import com.google.common.collect.d5;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableTable.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class i4<R, C, V> extends ImmutableTable<R, C, V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RegularImmutableTable.java */
    /* loaded from: classes2.dex */
    public static class a implements Comparator<d5.a<R, C, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f33581a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Comparator f33582b;

        a(Comparator comparator, Comparator comparator2) {
            this.f33581a = comparator;
            this.f33582b = comparator2;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(d5.a<R, C, V> aVar, d5.a<R, C, V> aVar2) {
            Comparator comparator = this.f33581a;
            int compare = comparator == null ? 0 : comparator.compare(aVar.a(), aVar2.a());
            if (compare != 0) {
                return compare;
            }
            Comparator comparator2 = this.f33582b;
            if (comparator2 == null) {
                return 0;
            }
            return comparator2.compare(aVar.b(), aVar2.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegularImmutableTable.java */
    /* loaded from: classes2.dex */
    public final class b extends t2<d5.a<R, C, V>> {
        private b() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof d5.a) {
                d5.a aVar = (d5.a) obj;
                Object obj2 = i4.this.get(aVar.a(), aVar.b());
                return obj2 != null && obj2.equals(aVar.getValue());
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t2
        /* renamed from: q */
        public d5.a<R, C, V> get(int i4) {
            return i4.this.s(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return i4.this.size();
        }

        /* synthetic */ b(i4 i4Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegularImmutableTable.java */
    /* loaded from: classes2.dex */
    public final class c extends ImmutableList<V> {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.List
        public V get(int i4) {
            return (V) i4.this.t(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return i4.this.size();
        }

        /* synthetic */ c(i4 i4Var, a aVar) {
            this();
        }
    }

    static <R, C, V> i4<R, C, V> o(Iterable<d5.a<R, C, V>> iterable) {
        return q(iterable, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> i4<R, C, V> p(List<d5.a<R, C, V>> list, @NullableDecl Comparator<? super R> comparator, @NullableDecl Comparator<? super C> comparator2) {
        com.google.common.base.a0.E(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new a(comparator, comparator2));
        }
        return q(list, comparator, comparator2);
    }

    private static <R, C, V> i4<R, C, V> q(Iterable<d5.a<R, C, V>> iterable, @NullableDecl Comparator<? super R> comparator, @NullableDecl Comparator<? super C> comparator2) {
        ImmutableSet copyOf;
        ImmutableSet copyOf2;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ImmutableList copyOf3 = ImmutableList.copyOf(iterable);
        for (d5.a<R, C, V> aVar : iterable) {
            linkedHashSet.add(aVar.a());
            linkedHashSet2.add(aVar.b());
        }
        if (comparator == null) {
            copyOf = ImmutableSet.copyOf((Collection) linkedHashSet);
        } else {
            copyOf = ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator, linkedHashSet));
        }
        if (comparator2 == null) {
            copyOf2 = ImmutableSet.copyOf((Collection) linkedHashSet2);
        } else {
            copyOf2 = ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator2, linkedHashSet2));
        }
        return r(copyOf3, copyOf, copyOf2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> i4<R, C, V> r(ImmutableList<d5.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        return ((long) immutableList.size()) > (((long) immutableSet.size()) * ((long) immutableSet2.size())) / 2 ? new l0(immutableList, immutableSet, immutableSet2) : new z4(immutableList, immutableSet, immutableSet2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q
    /* renamed from: j */
    public final ImmutableSet<d5.a<R, C, V>> b() {
        return isEmpty() ? ImmutableSet.of() : new b(this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q
    /* renamed from: l */
    public final ImmutableCollection<V> c() {
        return isEmpty() ? ImmutableList.of() : new c(this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n(R r9, C c10, V v9, V v10) {
        com.google.common.base.a0.A(v9 == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r9, c10, v10, v9);
    }

    abstract d5.a<R, C, V> s(int i4);

    abstract V t(int i4);
}
