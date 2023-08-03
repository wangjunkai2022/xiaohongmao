package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.t4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.c
@h3.a
/* loaded from: classes2.dex */
public class ImmutableRangeMap<K extends Comparable<?>, V> implements x3<K, V>, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final ImmutableRangeMap<Comparable<?>, Object> f32770c = new ImmutableRangeMap<>(ImmutableList.of(), ImmutableList.of());

    /* renamed from: d  reason: collision with root package name */
    private static final long f32771d = 0;

    /* renamed from: a  reason: collision with root package name */
    private final transient ImmutableList<Range<K>> f32772a;

    /* renamed from: b  reason: collision with root package name */
    private final transient ImmutableList<V> f32773b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends ImmutableList<Range<K>> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f32774c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f32775d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Range f32776e;

        a(int i4, int i10, Range range) {
            this.f32774c = i4;
            this.f32775d = i10;
            this.f32776e = range;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.List
        /* renamed from: o */
        public Range<K> get(int i4) {
            com.google.common.base.a0.C(i4, this.f32774c);
            if (i4 != 0 && i4 != this.f32774c - 1) {
                return (Range) ImmutableRangeMap.this.f32772a.get(i4 + this.f32775d);
            }
            return ((Range) ImmutableRangeMap.this.f32772a.get(i4 + this.f32775d)).intersection(this.f32776e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f32774c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends ImmutableRangeMap<K, V> {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Range f32778e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ImmutableRangeMap f32779f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ImmutableList immutableList, ImmutableList immutableList2, Range range, ImmutableRangeMap immutableRangeMap) {
            super(immutableList, immutableList2);
            this.f32778e = range;
            this.f32779f = immutableRangeMap;
        }

        @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.x3
        public /* bridge */ /* synthetic */ Map asDescendingMapOfRanges() {
            return super.asDescendingMapOfRanges();
        }

        @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.x3
        public /* bridge */ /* synthetic */ Map asMapOfRanges() {
            return super.asMapOfRanges();
        }

        @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.x3
        public ImmutableRangeMap<K, V> subRangeMap(Range<K> range) {
            if (this.f32778e.isConnected(range)) {
                return this.f32779f.subRangeMap((Range) range.intersection(this.f32778e));
            }
            return ImmutableRangeMap.of();
        }
    }

    /* loaded from: classes2.dex */
    public static final class c<K extends Comparable<?>, V> {

        /* renamed from: a  reason: collision with root package name */
        private final List<Map.Entry<Range<K>, V>> f32781a = b3.q();

        public ImmutableRangeMap<K, V> a() {
            Collections.sort(this.f32781a, Range.e().E());
            ImmutableList.a aVar = new ImmutableList.a(this.f32781a.size());
            ImmutableList.a aVar2 = new ImmutableList.a(this.f32781a.size());
            for (int i4 = 0; i4 < this.f32781a.size(); i4++) {
                Range<K> key = this.f32781a.get(i4).getKey();
                if (i4 > 0) {
                    Range<K> key2 = this.f32781a.get(i4 - 1).getKey();
                    if (key.isConnected(key2) && !key.intersection(key2).isEmpty()) {
                        throw new IllegalArgumentException("Overlapping ranges: range " + key2 + " overlaps with entry " + key);
                    }
                }
                aVar.g(key);
                aVar2.g(this.f32781a.get(i4).getValue());
            }
            return new ImmutableRangeMap<>(aVar.e(), aVar2.e());
        }

        @CanIgnoreReturnValue
        public c<K, V> b(Range<K> range, V v9) {
            com.google.common.base.a0.E(range);
            com.google.common.base.a0.E(v9);
            com.google.common.base.a0.u(!range.isEmpty(), "Range must not be empty, but was %s", range);
            this.f32781a.add(f3.O(range, v9));
            return this;
        }

        @CanIgnoreReturnValue
        public c<K, V> c(x3<K, ? extends V> x3Var) {
            for (Map.Entry<Range<K>, ? extends V> entry : x3Var.asMapOfRanges().entrySet()) {
                b(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    /* loaded from: classes2.dex */
    private static class d<K extends Comparable<?>, V> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32782b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap<Range<K>, V> f32783a;

        d(ImmutableMap<Range<K>, V> immutableMap) {
            this.f32783a = immutableMap;
        }

        Object a() {
            c cVar = new c();
            k5<Map.Entry<Range<K>, V>> it = this.f32783a.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Range<K>, V> next = it.next();
                cVar.b(next.getKey(), next.getValue());
            }
            return cVar.a();
        }

        Object b() {
            if (this.f32783a.isEmpty()) {
                return ImmutableRangeMap.of();
            }
            return a();
        }
    }

    ImmutableRangeMap(ImmutableList<Range<K>> immutableList, ImmutableList<V> immutableList2) {
        this.f32772a = immutableList;
        this.f32773b = immutableList2;
    }

    public static <K extends Comparable<?>, V> c<K, V> builder() {
        return new c<>();
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> copyOf(x3<K, ? extends V> x3Var) {
        if (x3Var instanceof ImmutableRangeMap) {
            return (ImmutableRangeMap) x3Var;
        }
        Map<Range<K>, ? extends V> asMapOfRanges = x3Var.asMapOfRanges();
        ImmutableList.a aVar = new ImmutableList.a(asMapOfRanges.size());
        ImmutableList.a aVar2 = new ImmutableList.a(asMapOfRanges.size());
        for (Map.Entry<Range<K>, ? extends V> entry : asMapOfRanges.entrySet()) {
            aVar.g(entry.getKey());
            aVar2.g(entry.getValue());
        }
        return new ImmutableRangeMap<>(aVar.e(), aVar2.e());
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of() {
        return (ImmutableRangeMap<K, V>) f32770c;
    }

    Object b() {
        return new d(asMapOfRanges());
    }

    @Override // com.google.common.collect.x3
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.x3
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof x3) {
            return asMapOfRanges().equals(((x3) obj).asMapOfRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.x3
    @NullableDecl
    public V get(K k10) {
        int a10 = t4.a(this.f32772a, Range.d(), k0.d(k10), t4.c.f33885a, t4.b.f33881a);
        if (a10 != -1 && this.f32772a.get(a10).contains(k10)) {
            return this.f32773b.get(a10);
        }
        return null;
    }

    @Override // com.google.common.collect.x3
    @NullableDecl
    public Map.Entry<Range<K>, V> getEntry(K k10) {
        int a10 = t4.a(this.f32772a, Range.d(), k0.d(k10), t4.c.f33885a, t4.b.f33881a);
        if (a10 == -1) {
            return null;
        }
        Range<K> range = this.f32772a.get(a10);
        if (range.contains(k10)) {
            return f3.O(range, this.f32773b.get(a10));
        }
        return null;
    }

    @Override // com.google.common.collect.x3
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override // com.google.common.collect.x3
    @Deprecated
    public void put(Range<K> range, V v9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.x3
    @Deprecated
    public void putAll(x3<K, V> x3Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.x3
    @Deprecated
    public void putCoalescing(Range<K> range, V v9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.x3
    @Deprecated
    public void remove(Range<K> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.x3
    public Range<K> span() {
        if (!this.f32772a.isEmpty()) {
            ImmutableList<Range<K>> immutableList = this.f32772a;
            return Range.c(this.f32772a.get(0).f32934a, immutableList.get(immutableList.size() - 1).f32935b);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.x3
    public String toString() {
        return asMapOfRanges().toString();
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of(Range<K> range, V v9) {
        return new ImmutableRangeMap<>(ImmutableList.of(range), ImmutableList.of(v9));
    }

    @Override // com.google.common.collect.x3
    public ImmutableMap<Range<K>, V> asDescendingMapOfRanges() {
        if (this.f32772a.isEmpty()) {
            return ImmutableMap.of();
        }
        return new ImmutableSortedMap(new h4(this.f32772a.reverse(), Range.e().G()), this.f32773b.reverse());
    }

    @Override // com.google.common.collect.x3
    public ImmutableMap<Range<K>, V> asMapOfRanges() {
        if (this.f32772a.isEmpty()) {
            return ImmutableMap.of();
        }
        return new ImmutableSortedMap(new h4(this.f32772a, Range.e()), this.f32773b);
    }

    @Override // com.google.common.collect.x3
    public ImmutableRangeMap<K, V> subRangeMap(Range<K> range) {
        if (((Range) com.google.common.base.a0.E(range)).isEmpty()) {
            return of();
        }
        if (this.f32772a.isEmpty() || range.encloses(span())) {
            return this;
        }
        ImmutableList<Range<K>> immutableList = this.f32772a;
        com.google.common.base.q j4 = Range.j();
        k0<K> k0Var = range.f32934a;
        t4.c cVar = t4.c.f33888d;
        t4.b bVar = t4.b.f33882b;
        int a10 = t4.a(immutableList, j4, k0Var, cVar, bVar);
        int a11 = t4.a(this.f32772a, Range.d(), range.f32935b, t4.c.f33885a, bVar);
        if (a10 >= a11) {
            return of();
        }
        return new b(new a(a11 - a10, a10, range), this.f32773b.subList(a10, a11), range, this);
    }
}
