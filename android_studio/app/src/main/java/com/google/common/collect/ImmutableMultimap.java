package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.m4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.Weak;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class ImmutableMultimap<K, V> extends t<K, V> implements Serializable {

    /* renamed from: h  reason: collision with root package name */
    private static final long f32737h = 0;

    /* renamed from: f  reason: collision with root package name */
    final transient ImmutableMap<K, ? extends ImmutableCollection<V>> f32738f;

    /* renamed from: g  reason: collision with root package name */
    final transient int f32739g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends k5<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<? extends Map.Entry<K, ? extends ImmutableCollection<V>>> f32740a;

        /* renamed from: b  reason: collision with root package name */
        K f32741b = null;

        /* renamed from: c  reason: collision with root package name */
        Iterator<V> f32742c = x2.u();

        a() {
            this.f32740a = ImmutableMultimap.this.f32738f.entrySet().iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (!this.f32742c.hasNext()) {
                Map.Entry<K, ? extends ImmutableCollection<V>> next = this.f32740a.next();
                this.f32741b = next.getKey();
                this.f32742c = next.getValue().iterator();
            }
            return f3.O(this.f32741b, this.f32742c.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32742c.hasNext() || this.f32740a.hasNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends k5<V> {

        /* renamed from: a  reason: collision with root package name */
        Iterator<? extends ImmutableCollection<V>> f32744a;

        /* renamed from: b  reason: collision with root package name */
        Iterator<V> f32745b = x2.u();

        b() {
            this.f32744a = ImmutableMultimap.this.f32738f.values().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32745b.hasNext() || this.f32744a.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            if (!this.f32745b.hasNext()) {
                this.f32745b = this.f32744a.next().iterator();
            }
            return this.f32745b.next();
        }
    }

    /* loaded from: classes2.dex */
    public static class c<K, V> {

        /* renamed from: a  reason: collision with root package name */
        Map<K, Collection<V>> f32747a = u3.h();
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        Comparator<? super K> f32748b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        Comparator<? super V> f32749c;

        public ImmutableMultimap<K, V> a() {
            Collection entrySet = this.f32747a.entrySet();
            Comparator<? super K> comparator = this.f32748b;
            if (comparator != null) {
                entrySet = s3.k(comparator).E().n(entrySet);
            }
            return ImmutableListMultimap.q(entrySet, this.f32749c);
        }

        @CanIgnoreReturnValue
        c<K, V> b(c<K, V> cVar) {
            for (Map.Entry<K, Collection<V>> entry : cVar.f32747a.entrySet()) {
                j(entry.getKey(), entry.getValue());
            }
            return this;
        }

        Collection<V> c() {
            return new ArrayList();
        }

        @CanIgnoreReturnValue
        public c<K, V> d(Comparator<? super K> comparator) {
            this.f32748b = (Comparator) com.google.common.base.a0.E(comparator);
            return this;
        }

        @CanIgnoreReturnValue
        public c<K, V> e(Comparator<? super V> comparator) {
            this.f32749c = (Comparator) com.google.common.base.a0.E(comparator);
            return this;
        }

        @CanIgnoreReturnValue
        public c<K, V> f(K k10, V v9) {
            y.a(k10, v9);
            Collection<V> collection = this.f32747a.get(k10);
            if (collection == null) {
                Map<K, Collection<V>> map = this.f32747a;
                Collection<V> c10 = c();
                map.put(k10, c10);
                collection = c10;
            }
            collection.add(v9);
            return this;
        }

        @CanIgnoreReturnValue
        public c<K, V> g(Map.Entry<? extends K, ? extends V> entry) {
            return f(entry.getKey(), entry.getValue());
        }

        @CanIgnoreReturnValue
        public c<K, V> h(h3<? extends K, ? extends V> h3Var) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : h3Var.asMap().entrySet()) {
                j(entry.getKey(), entry.getValue());
            }
            return this;
        }

        @CanIgnoreReturnValue
        @h3.a
        public c<K, V> i(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            for (Map.Entry<? extends K, ? extends V> entry : iterable) {
                g(entry);
            }
            return this;
        }

        @CanIgnoreReturnValue
        public c<K, V> j(K k10, Iterable<? extends V> iterable) {
            if (k10 != null) {
                Collection<V> collection = this.f32747a.get(k10);
                if (collection != null) {
                    for (V v9 : iterable) {
                        y.a(k10, v9);
                        collection.add(v9);
                    }
                    return this;
                }
                Iterator<? extends V> it = iterable.iterator();
                if (it.hasNext()) {
                    Collection<V> c10 = c();
                    while (it.hasNext()) {
                        V next = it.next();
                        y.a(k10, next);
                        c10.add(next);
                    }
                    this.f32747a.put(k10, c10);
                    return this;
                }
                return this;
            }
            throw new NullPointerException("null key in entry: null=" + w2.T(iterable));
        }

        @CanIgnoreReturnValue
        public c<K, V> k(K k10, V... vArr) {
            return j(k10, Arrays.asList(vArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d<K, V> extends ImmutableCollection<Map.Entry<K, V>> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32750c = 0;
        @Weak

        /* renamed from: b  reason: collision with root package name */
        final ImmutableMultimap<K, V> f32751b;

        d(ImmutableMultimap<K, V> immutableMultimap) {
            this.f32751b = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f32751b.containsEntry(entry.getKey(), entry.getValue());
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return this.f32751b.o();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f32751b.size();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public k5<Map.Entry<K, V>> iterator() {
            return this.f32751b.i();
        }
    }

    @h3.c
    /* loaded from: classes2.dex */
    static class e {

        /* renamed from: a  reason: collision with root package name */
        static final m4.b<ImmutableMultimap> f32752a = m4.a(ImmutableMultimap.class, "map");

        /* renamed from: b  reason: collision with root package name */
        static final m4.b<ImmutableMultimap> f32753b = m4.a(ImmutableMultimap.class, com.qennnsad.aknkaksd.data.repository.f.f47745b);

        e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends ImmutableMultiset<K> {
        f() {
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return ImmutableMultimap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.k3
        public int count(@NullableDecl Object obj) {
            ImmutableCollection<V> immutableCollection = ImmutableMultimap.this.f32738f.get(obj);
            if (immutableCollection == null) {
                return 0;
            }
            return immutableCollection.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
        @h3.c
        Object h() {
            return new g(ImmutableMultimap.this);
        }

        @Override // com.google.common.collect.ImmutableMultiset
        k3.a<K> m(int i4) {
            Map.Entry<K, ? extends ImmutableCollection<V>> entry = ImmutableMultimap.this.f32738f.entrySet().asList().get(i4);
            return l3.k(entry.getKey(), entry.getValue().size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
        public int size() {
            return ImmutableMultimap.this.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.k3
        public ImmutableSet<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }
    }

    @h3.c
    /* loaded from: classes2.dex */
    private static final class g implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMultimap<?, ?> f32755a;

        g(ImmutableMultimap<?, ?> immutableMultimap) {
            this.f32755a = immutableMultimap;
        }

        Object a() {
            return this.f32755a.keys();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class h<K, V> extends ImmutableCollection<V> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32756c = 0;
        @Weak

        /* renamed from: b  reason: collision with root package name */
        private final transient ImmutableMultimap<K, V> f32757b;

        h(ImmutableMultimap<K, V> immutableMultimap) {
            this.f32757b = immutableMultimap;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        @h3.c
        public int a(Object[] objArr, int i4) {
            k5<? extends ImmutableCollection<V>> it = this.f32757b.f32738f.values().iterator();
            while (it.hasNext()) {
                i4 = it.next().a(objArr, i4);
            }
            return i4;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return this.f32757b.containsValue(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f32757b.size();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public k5<V> iterator() {
            return this.f32757b.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> immutableMap, int i4) {
        this.f32738f = immutableMap;
        this.f32739g = i4;
    }

    public static <K, V> c<K, V> builder() {
        return new c<>();
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(h3<? extends K, ? extends V> h3Var) {
        if (h3Var instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) h3Var;
            if (!immutableMultimap.o()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf((h3) h3Var);
    }

    public static <K, V> ImmutableMultimap<K, V> of() {
        return ImmutableListMultimap.of();
    }

    @Override // com.google.common.collect.h
    Map<K, Collection<V>> b() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.h3
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.h3
    public boolean containsKey(@NullableDecl Object obj) {
        return this.f32738f.containsKey(obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public boolean containsValue(@NullableDecl Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.h
    Set<K> d() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public abstract ImmutableCollection<V> get(K k10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((ImmutableMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public abstract ImmutableMultimap<V, K> inverse();

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.h
    /* renamed from: k */
    public ImmutableCollection<Map.Entry<K, V>> c() {
        return new d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.h
    /* renamed from: l */
    public ImmutableMultiset<K> e() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.h
    /* renamed from: m */
    public ImmutableCollection<V> h() {
        return new h(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.h
    /* renamed from: n */
    public k5<Map.Entry<K, V>> i() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return this.f32738f.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.h
    /* renamed from: p */
    public k5<V> j() {
        return new b();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    @Deprecated
    public boolean put(K k10, V v9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    @Deprecated
    public boolean putAll(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    @Deprecated
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.h3
    public int size() {
        return this.f32739g;
    }

    @Override // com.google.common.collect.h
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v9) {
        return ImmutableListMultimap.of((Object) k10, (Object) v9);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public ImmutableMap<K, Collection<V>> asMap() {
        return (ImmutableMap<K, ? extends ImmutableCollection<V>>) this.f32738f;
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public ImmutableSet<K> keySet() {
        return this.f32738f.keySet();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public ImmutableMultiset<K> keys() {
        return (ImmutableMultiset) super.keys();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    @Deprecated
    public boolean putAll(h3<? extends K, ? extends V> h3Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public ImmutableCollection<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public ImmutableCollection<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v9, K k11, V v10) {
        return ImmutableListMultimap.of((Object) k10, (Object) v9, (Object) k11, (Object) v10);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11) {
        return ImmutableListMultimap.of((Object) k10, (Object) v9, (Object) k11, (Object) v10, (Object) k12, (Object) v11);
    }

    @h3.a
    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12) {
        return ImmutableListMultimap.of((Object) k10, (Object) v9, (Object) k11, (Object) v10, (Object) k12, (Object) v11, (Object) k13, (Object) v12);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12, K k14, V v13) {
        return ImmutableListMultimap.of((Object) k10, (Object) v9, (Object) k11, (Object) v10, (Object) k12, (Object) v11, (Object) k13, (Object) v12, (Object) k14, (Object) v13);
    }
}
