package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.m4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import com.google.j2objc.annotations.Weak;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements n4<K, V> {
    @h3.c

    /* renamed from: l  reason: collision with root package name */
    private static final long f32817l = 0;

    /* renamed from: i  reason: collision with root package name */
    private final transient ImmutableSet<V> f32818i;
    @RetainedWith
    @LazyInit
    @MonotonicNonNullDecl

    /* renamed from: j  reason: collision with root package name */
    private transient ImmutableSetMultimap<V, K> f32819j;
    @MonotonicNonNullDecl

    /* renamed from: k  reason: collision with root package name */
    private transient ImmutableSet<Map.Entry<K, V>> f32820k;

    /* loaded from: classes2.dex */
    public static final class a<K, V> extends ImmutableMultimap.c<K, V> {
        @Override // com.google.common.collect.ImmutableMultimap.c
        Collection<V> c() {
            return u3.g();
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* renamed from: l */
        public ImmutableSetMultimap<K, V> a() {
            Collection entrySet = this.f32747a.entrySet();
            Comparator<? super K> comparator = this.f32748b;
            if (comparator != null) {
                entrySet = s3.k(comparator).E().n(entrySet);
            }
            return ImmutableSetMultimap.s(entrySet, this.f32749c);
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        @CanIgnoreReturnValue
        /* renamed from: m */
        public a<K, V> d(Comparator<? super K> comparator) {
            super.d(comparator);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        @CanIgnoreReturnValue
        /* renamed from: n */
        public a<K, V> e(Comparator<? super V> comparator) {
            super.e(comparator);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        @CanIgnoreReturnValue
        /* renamed from: o */
        public a<K, V> f(K k10, V v9) {
            super.f(k10, v9);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        @CanIgnoreReturnValue
        /* renamed from: p */
        public a<K, V> g(Map.Entry<? extends K, ? extends V> entry) {
            super.g(entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        @CanIgnoreReturnValue
        /* renamed from: q */
        public a<K, V> h(h3<? extends K, ? extends V> h3Var) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : h3Var.asMap().entrySet()) {
                j(entry.getKey(), entry.getValue());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        @CanIgnoreReturnValue
        @h3.a
        /* renamed from: r */
        public a<K, V> i(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.i(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        @CanIgnoreReturnValue
        /* renamed from: s */
        public a<K, V> j(K k10, Iterable<? extends V> iterable) {
            super.j(k10, iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        @CanIgnoreReturnValue
        /* renamed from: t */
        public a<K, V> k(K k10, V... vArr) {
            return j(k10, Arrays.asList(vArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        @Weak

        /* renamed from: f  reason: collision with root package name */
        private final transient ImmutableSetMultimap<K, V> f32821f;

        b(ImmutableSetMultimap<K, V> immutableSetMultimap) {
            this.f32821f = immutableSetMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f32821f.containsEntry(entry.getKey(), entry.getValue());
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f32821f.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public k5<Map.Entry<K, V>> iterator() {
            return this.f32821f.i();
        }
    }

    @h3.c
    /* loaded from: classes2.dex */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final m4.b<ImmutableSetMultimap> f32822a = m4.a(ImmutableSetMultimap.class, "emptySet");

        private c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSetMultimap(ImmutableMap<K, ImmutableSet<V>> immutableMap, int i4, @NullableDecl Comparator<? super V> comparator) {
        super(immutableMap, i4);
        this.f32818i = r(comparator);
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(h3<? extends K, ? extends V> h3Var) {
        return q(h3Var, null);
    }

    public static <K, V> ImmutableSetMultimap<K, V> of() {
        return s0.f33863m;
    }

    private static <K, V> ImmutableSetMultimap<K, V> q(h3<? extends K, ? extends V> h3Var, Comparator<? super V> comparator) {
        com.google.common.base.a0.E(h3Var);
        if (h3Var.isEmpty() && comparator == null) {
            return of();
        }
        if (h3Var instanceof ImmutableSetMultimap) {
            ImmutableSetMultimap<K, V> immutableSetMultimap = (ImmutableSetMultimap) h3Var;
            if (!immutableSetMultimap.o()) {
                return immutableSetMultimap;
            }
        }
        return s(h3Var.asMap().entrySet(), comparator);
    }

    private static <V> ImmutableSet<V> r(@NullableDecl Comparator<? super V> comparator) {
        if (comparator == null) {
            return ImmutableSet.of();
        }
        return ImmutableSortedSet.s(comparator);
    }

    static <K, V> ImmutableSetMultimap<K, V> s(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @NullableDecl Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int i4 = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            ImmutableSet w9 = w(comparator, entry.getValue());
            if (!w9.isEmpty()) {
                bVar.d(key, w9);
                i4 += w9.size();
            }
        }
        return new ImmutableSetMultimap<>(bVar.a(), i4, comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableSetMultimap<V, K> t() {
        a builder = builder();
        k5 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.f(entry.getValue(), entry.getKey());
        }
        ImmutableSetMultimap<V, K> a10 = builder.a();
        a10.f32819j = this;
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    private void u(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            ImmutableMap.b builder = ImmutableMap.builder();
            int i4 = 0;
            for (int i10 = 0; i10 < readInt; i10++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    ImmutableSet.a x9 = x(comparator);
                    for (int i11 = 0; i11 < readInt2; i11++) {
                        x9.g(objectInputStream.readObject());
                    }
                    ImmutableSet e4 = x9.e();
                    if (e4.size() == readInt2) {
                        builder.d(readObject, e4);
                        i4 += readInt2;
                    } else {
                        throw new InvalidObjectException("Duplicate key-value pairs exist for key " + readObject);
                    }
                } else {
                    throw new InvalidObjectException("Invalid value count " + readInt2);
                }
            }
            try {
                ImmutableMultimap.e.f32752a.b(this, builder.a());
                ImmutableMultimap.e.f32753b.a(this, i4);
                c.f32822a.b(this, r(comparator));
                return;
            } catch (IllegalArgumentException e10) {
                throw ((InvalidObjectException) new InvalidObjectException(e10.getMessage()).initCause(e10));
            }
        }
        throw new InvalidObjectException("Invalid key count " + readInt);
    }

    private static <V> ImmutableSet<V> w(@NullableDecl Comparator<? super V> comparator, Collection<? extends V> collection) {
        if (comparator == null) {
            return ImmutableSet.copyOf((Collection) collection);
        }
        return ImmutableSortedSet.copyOf((Comparator) comparator, (Collection) collection);
    }

    private static <V> ImmutableSet.a<V> x(@NullableDecl Comparator<? super V> comparator) {
        return comparator == null ? new ImmutableSet.a<>() : new ImmutableSortedSet.a(comparator);
    }

    @h3.c
    private void y(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(valueComparator());
        m4.j(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ ImmutableCollection get(@NullableDecl Object obj) {
        return get((ImmutableSetMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ ImmutableCollection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableSetMultimap<K, V>) obj, iterable);
    }

    @NullableDecl
    Comparator<? super V> valueComparator() {
        ImmutableSet<V> immutableSet = this.f32818i;
        if (immutableSet instanceof ImmutableSortedSet) {
            return ((ImmutableSortedSet) immutableSet).comparator();
        }
        return null;
    }

    @h3.a
    public static <K, V> ImmutableSetMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().i(iterable).a();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v9) {
        a builder = builder();
        builder.f(k10, v9);
        return builder.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((ImmutableSetMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableSetMultimap<V, K> inverse() {
        ImmutableSetMultimap<V, K> immutableSetMultimap = this.f32819j;
        if (immutableSetMultimap == null) {
            ImmutableSetMultimap<V, K> t9 = t();
            this.f32819j = t9;
            return t9;
        }
        return immutableSetMultimap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableSetMultimap<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return get((ImmutableSetMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableSetMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3
    public ImmutableSet<Map.Entry<K, V>> entries() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.f32820k;
        if (immutableSet == null) {
            b bVar = new b(this);
            this.f32820k = bVar;
            return bVar;
        }
        return immutableSet;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    public ImmutableSet<V> get(@NullableDecl K k10) {
        return (ImmutableSet) com.google.common.base.v.a((ImmutableSet) this.f32738f.get(k10), this.f32818i);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public ImmutableSet<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public ImmutableSet<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v9, K k11, V v10) {
        a builder = builder();
        builder.f(k10, v9);
        builder.f(k11, v10);
        return builder.a();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11) {
        a builder = builder();
        builder.f(k10, v9);
        builder.f(k11, v10);
        builder.f(k12, v11);
        return builder.a();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12) {
        a builder = builder();
        builder.f(k10, v9);
        builder.f(k11, v10);
        builder.f(k12, v11);
        builder.f(k13, v12);
        return builder.a();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12, K k14, V v13) {
        a builder = builder();
        builder.f(k10, v9);
        builder.f(k11, v10);
        builder.f(k12, v11);
        builder.f(k13, v12);
        builder.f(k14, v13);
        return builder.a();
    }
}
