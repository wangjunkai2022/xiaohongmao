package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {

    /* renamed from: e  reason: collision with root package name */
    static final Map.Entry<?, ?>[] f32717e = new Map.Entry[0];
    @LazyInit

    /* renamed from: a  reason: collision with root package name */
    private transient ImmutableSet<Map.Entry<K, V>> f32718a;
    @RetainedWith
    @LazyInit

    /* renamed from: b  reason: collision with root package name */
    private transient ImmutableSet<K> f32719b;
    @RetainedWith
    @LazyInit

    /* renamed from: c  reason: collision with root package name */
    private transient ImmutableCollection<V> f32720c;
    @LazyInit

    /* renamed from: d  reason: collision with root package name */
    private transient ImmutableSetMultimap<K, V> f32721d;

    /* loaded from: classes2.dex */
    class a extends k5<K> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k5 f32722a;

        a(k5 k5Var) {
            this.f32722a = k5Var;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32722a.hasNext();
        }

        @Override // java.util.Iterator
        public K next() {
            return (K) ((Map.Entry) this.f32722a.next()).getKey();
        }
    }

    /* loaded from: classes2.dex */
    public static class b<K, V> {
        @MonotonicNonNullDecl

        /* renamed from: a  reason: collision with root package name */
        Comparator<? super V> f32724a;

        /* renamed from: b  reason: collision with root package name */
        Object[] f32725b;

        /* renamed from: c  reason: collision with root package name */
        int f32726c;

        /* renamed from: d  reason: collision with root package name */
        boolean f32727d;

        public b() {
            this(4);
        }

        private void b(int i4) {
            int i10 = i4 * 2;
            Object[] objArr = this.f32725b;
            if (i10 > objArr.length) {
                this.f32725b = Arrays.copyOf(objArr, ImmutableCollection.b.f(objArr.length, i10));
                this.f32727d = false;
            }
        }

        public ImmutableMap<K, V> a() {
            h();
            this.f32727d = true;
            return d4.m(this.f32726c, this.f32725b);
        }

        @CanIgnoreReturnValue
        @h3.a
        public b<K, V> c(Comparator<? super V> comparator) {
            com.google.common.base.a0.h0(this.f32724a == null, "valueComparator was already set");
            this.f32724a = (Comparator) com.google.common.base.a0.F(comparator, "valueComparator");
            return this;
        }

        @CanIgnoreReturnValue
        public b<K, V> d(K k10, V v9) {
            b(this.f32726c + 1);
            y.a(k10, v9);
            Object[] objArr = this.f32725b;
            int i4 = this.f32726c;
            objArr[i4 * 2] = k10;
            objArr[(i4 * 2) + 1] = v9;
            this.f32726c = i4 + 1;
            return this;
        }

        @CanIgnoreReturnValue
        public b<K, V> e(Map.Entry<? extends K, ? extends V> entry) {
            return d(entry.getKey(), entry.getValue());
        }

        @CanIgnoreReturnValue
        @h3.a
        public b<K, V> f(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                b(this.f32726c + ((Collection) iterable).size());
            }
            for (Map.Entry<? extends K, ? extends V> entry : iterable) {
                e(entry);
            }
            return this;
        }

        @CanIgnoreReturnValue
        public b<K, V> g(Map<? extends K, ? extends V> map) {
            return f(map.entrySet());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void h() {
            int i4;
            if (this.f32724a != null) {
                if (this.f32727d) {
                    this.f32725b = Arrays.copyOf(this.f32725b, this.f32726c * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.f32726c];
                int i10 = 0;
                while (true) {
                    i4 = this.f32726c;
                    if (i10 >= i4) {
                        break;
                    }
                    Object[] objArr = this.f32725b;
                    int i11 = i10 * 2;
                    entryArr[i10] = new AbstractMap.SimpleImmutableEntry(objArr[i11], objArr[i11 + 1]);
                    i10++;
                }
                Arrays.sort(entryArr, 0, i4, s3.k(this.f32724a).F(f3.N0()));
                for (int i12 = 0; i12 < this.f32726c; i12++) {
                    int i13 = i12 * 2;
                    this.f32725b[i13] = entryArr[i12].getKey();
                    this.f32725b[i13 + 1] = entryArr[i12].getValue();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i4) {
            this.f32725b = new Object[i4 * 2];
            this.f32726c = 0;
            this.f32727d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class c<K, V> extends ImmutableMap<K, V> {

        /* loaded from: classes2.dex */
        class a extends m2<K, V> {
            a() {
            }

            @Override // com.google.common.collect.m2
            ImmutableMap<K, V> q() {
                return c.this;
            }

            @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public k5<Map.Entry<K, V>> iterator() {
                return c.this.m();
            }
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<Map.Entry<K, V>> c() {
            return new a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<K> d() {
            return new n2(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableCollection<V> e() {
            return new o2(this);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set entrySet() {
            return super.entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set keySet() {
            return super.keySet();
        }

        abstract k5<Map.Entry<K, V>> m();

        @Override // com.google.common.collect.ImmutableMap, java.util.Map, com.google.common.collect.u
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    /* loaded from: classes2.dex */
    private final class d extends c<K, ImmutableSet<V>> {

        /* loaded from: classes2.dex */
        class a extends k5<Map.Entry<K, ImmutableSet<V>>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterator f32730a;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.google.common.collect.ImmutableMap$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0214a extends g<K, ImmutableSet<V>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Map.Entry f32732a;

                C0214a(Map.Entry entry) {
                    this.f32732a = entry;
                }

                @Override // com.google.common.collect.g, java.util.Map.Entry
                /* renamed from: e */
                public ImmutableSet<V> getValue() {
                    return ImmutableSet.of(this.f32732a.getValue());
                }

                @Override // com.google.common.collect.g, java.util.Map.Entry
                public K getKey() {
                    return (K) this.f32732a.getKey();
                }
            }

            a(Iterator it) {
                this.f32730a = it;
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<K, ImmutableSet<V>> next() {
                return new C0214a((Map.Entry) this.f32730a.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f32730a.hasNext();
            }
        }

        private d() {
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return ImmutableMap.this.containsKey(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.c, com.google.common.collect.ImmutableMap
        public ImmutableSet<K> d() {
            return ImmutableMap.this.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public int hashCode() {
            return ImmutableMap.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean i() {
            return ImmutableMap.this.i();
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean j() {
            return ImmutableMap.this.j();
        }

        @Override // com.google.common.collect.ImmutableMap.c
        k5<Map.Entry<K, ImmutableSet<V>>> m() {
            return new a(ImmutableMap.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        /* renamed from: n */
        public ImmutableSet<V> get(@NullableDecl Object obj) {
            Object obj2 = ImmutableMap.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return ImmutableSet.of(obj2);
        }

        @Override // java.util.Map
        public int size() {
            return ImmutableMap.this.size();
        }

        /* synthetic */ d(ImmutableMap immutableMap, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    static class e implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32734c = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f32735a;

        /* renamed from: b  reason: collision with root package name */
        private final Object[] f32736b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(ImmutableMap<?, ?> immutableMap) {
            this.f32735a = new Object[immutableMap.size()];
            this.f32736b = new Object[immutableMap.size()];
            k5<Map.Entry<?, ?>> it = immutableMap.entrySet().iterator();
            int i4 = 0;
            while (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                this.f32735a[i4] = next.getKey();
                this.f32736b[i4] = next.getValue();
                i4++;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Object a(b<Object, Object> bVar) {
            int i4 = 0;
            while (true) {
                Object[] objArr = this.f32735a;
                if (i4 < objArr.length) {
                    bVar.d(objArr[i4], this.f32736b[i4]);
                    i4++;
                } else {
                    return bVar.a();
                }
            }
        }

        Object b() {
            return a(new b<>(this.f32735a.length));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z9, String str, Map.Entry<?, ?> entry, Map.Entry<?, ?> entry2) {
        if (!z9) {
            throw b(str, entry, entry2);
        }
    }

    static IllegalArgumentException b(String str, Object obj, Object obj2) {
        return new IllegalArgumentException("Multiple entries with same " + str + ": " + obj + " and " + obj2);
    }

    public static <K, V> b<K, V> builder() {
        return new b<>();
    }

    @h3.a
    public static <K, V> b<K, V> builderWithExpectedSize(int i4) {
        y.b(i4, "expectedSize");
        return new b<>(i4);
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.j()) {
                return immutableMap;
            }
        }
        return copyOf(map.entrySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map.Entry<K, V> h(K k10, V v9) {
        y.a(k10, v9);
        return new AbstractMap.SimpleImmutableEntry(k10, v9);
    }

    public static <K, V> ImmutableMap<K, V> of() {
        return (ImmutableMap<K, V>) d4.f33250j;
    }

    public ImmutableSetMultimap<K, V> asMultimap() {
        if (isEmpty()) {
            return ImmutableSetMultimap.of();
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap = this.f32721d;
        if (immutableSetMultimap == null) {
            ImmutableSetMultimap<K, V> immutableSetMultimap2 = new ImmutableSetMultimap<>(new d(this, null), size(), null);
            this.f32721d = immutableSetMultimap2;
            return immutableSetMultimap2;
        }
        return immutableSetMultimap;
    }

    abstract ImmutableSet<Map.Entry<K, V>> c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    abstract ImmutableSet<K> d();

    abstract ImmutableCollection<V> e();

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        return f3.w(this, obj);
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v9) {
        V v10 = get(obj);
        return v10 != null ? v10 : v9;
    }

    @Override // java.util.Map
    public int hashCode() {
        return o4.k(entrySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return false;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean j();

    /* JADX INFO: Access modifiers changed from: package-private */
    public k5<K> k() {
        return new a(entrySet().iterator());
    }

    Object l() {
        return new e(this);
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @Deprecated
    public final V put(K k10, V v9) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return f3.w0(this);
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v9) {
        y.a(k10, v9);
        return d4.m(1, new Object[]{k10, v9});
    }

    @Override // java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.f32718a;
        if (immutableSet == null) {
            ImmutableSet<Map.Entry<K, V>> c10 = c();
            this.f32718a = c10;
            return c10;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.f32719b;
        if (immutableSet == null) {
            ImmutableSet<K> d4 = d();
            this.f32719b = d4;
            return d4;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.f32720c;
        if (immutableCollection == null) {
            ImmutableCollection<V> e4 = e();
            this.f32720c = e4;
            return e4;
        }
        return immutableCollection;
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v9, K k11, V v10) {
        y.a(k10, v9);
        y.a(k11, v10);
        return d4.m(2, new Object[]{k10, v9, k11, v10});
    }

    @h3.a
    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        b bVar = new b(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        bVar.f(iterable);
        return bVar.a();
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11) {
        y.a(k10, v9);
        y.a(k11, v10);
        y.a(k12, v11);
        return d4.m(3, new Object[]{k10, v9, k11, v10, k12, v11});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12) {
        y.a(k10, v9);
        y.a(k11, v10);
        y.a(k12, v11);
        y.a(k13, v12);
        return d4.m(4, new Object[]{k10, v9, k11, v10, k12, v11, k13, v12});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12, K k14, V v13) {
        y.a(k10, v9);
        y.a(k11, v10);
        y.a(k12, v11);
        y.a(k13, v12);
        y.a(k14, v13);
        return d4.m(5, new Object[]{k10, v9, k11, v10, k12, v11, k13, v12, k14, v13});
    }
}
