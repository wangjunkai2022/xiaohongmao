package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements u<K, V> {

    /* loaded from: classes2.dex */
    public static final class a<K, V> extends ImmutableMap.b<K, V> {
        public a() {
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: i */
        public ImmutableBiMap<K, V> a() {
            if (this.f32726c == 0) {
                return ImmutableBiMap.of();
            }
            h();
            this.f32727d = true;
            return new b4(this.f32725b, this.f32726c);
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        @h3.a
        /* renamed from: j */
        public a<K, V> c(Comparator<? super V> comparator) {
            super.c(comparator);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        /* renamed from: k */
        public a<K, V> d(K k10, V v9) {
            super.d(k10, v9);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        /* renamed from: l */
        public a<K, V> e(Map.Entry<? extends K, ? extends V> entry) {
            super.e(entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        @h3.a
        /* renamed from: m */
        public a<K, V> f(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.f(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        /* renamed from: n */
        public a<K, V> g(Map<? extends K, ? extends V> map) {
            super.g(map);
            return this;
        }

        a(int i4) {
            super(i4);
        }
    }

    /* loaded from: classes2.dex */
    private static class b extends ImmutableMap.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f32698d = 0;

        b(ImmutableBiMap<?, ?> immutableBiMap) {
            super(immutableBiMap);
        }

        @Override // com.google.common.collect.ImmutableMap.e
        Object b() {
            return a(new a());
        }
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    @h3.a
    public static <K, V> a<K, V> builderWithExpectedSize(int i4) {
        y.b(i4, "expectedSize");
        return new a<>(i4);
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (map instanceof ImmutableBiMap) {
            ImmutableBiMap<K, V> immutableBiMap = (ImmutableBiMap) map;
            if (!immutableBiMap.j()) {
                return immutableBiMap;
            }
        }
        return copyOf((Iterable) map.entrySet());
    }

    public static <K, V> ImmutableBiMap<K, V> of() {
        return b4.f33117k;
    }

    @Override // com.google.common.collect.u
    @CanIgnoreReturnValue
    @Deprecated
    public V forcePut(K k10, V v9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.u
    public abstract ImmutableBiMap<V, K> inverse();

    @Override // com.google.common.collect.ImmutableMap
    Object l() {
        return new b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    /* renamed from: m */
    public final ImmutableSet<V> e() {
        throw new AssertionError("should never be called");
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v9) {
        y.a(k10, v9);
        return new b4(new Object[]{k10, v9}, 1);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v9, K k11, V v10) {
        y.a(k10, v9);
        y.a(k11, v10);
        return new b4(new Object[]{k10, v9, k11, v10}, 2);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, com.google.common.collect.u
    public ImmutableSet<V> values() {
        return inverse().keySet();
    }

    @h3.a
    public static <K, V> ImmutableBiMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a(iterable instanceof Collection ? ((Collection) iterable).size() : 4).f(iterable).a();
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11) {
        y.a(k10, v9);
        y.a(k11, v10);
        y.a(k12, v11);
        return new b4(new Object[]{k10, v9, k11, v10, k12, v11}, 3);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12) {
        y.a(k10, v9);
        y.a(k11, v10);
        y.a(k12, v11);
        y.a(k13, v12);
        return new b4(new Object[]{k10, v9, k11, v10, k12, v11, k13, v12}, 4);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12, K k14, V v13) {
        y.a(k10, v9);
        y.a(k11, v10);
        y.a(k12, v11);
        y.a(k13, v12);
        y.a(k14, v13);
        return new b4(new Object[]{k10, v9, k11, v10, k12, v11, k13, v12, k14, v13}, 5);
    }
}
