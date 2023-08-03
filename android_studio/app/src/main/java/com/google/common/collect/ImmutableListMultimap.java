package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements a3<K, V> {
    @h3.c

    /* renamed from: j  reason: collision with root package name */
    private static final long f32715j = 0;
    @RetainedWith
    @LazyInit

    /* renamed from: i  reason: collision with root package name */
    private transient ImmutableListMultimap<V, K> f32716i;

    /* loaded from: classes2.dex */
    public static final class a<K, V> extends ImmutableMultimap.c<K, V> {
        @Override // com.google.common.collect.ImmutableMultimap.c
        /* renamed from: l */
        public ImmutableListMultimap<K, V> a() {
            return (ImmutableListMultimap) super.a();
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
            super.h(h3Var);
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
            super.k(k10, vArr);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> immutableMap, int i4) {
        super(immutableMap, i4);
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(h3<? extends K, ? extends V> h3Var) {
        if (h3Var.isEmpty()) {
            return of();
        }
        if (h3Var instanceof ImmutableListMultimap) {
            ImmutableListMultimap<K, V> immutableListMultimap = (ImmutableListMultimap) h3Var;
            if (!immutableListMultimap.o()) {
                return immutableListMultimap;
            }
        }
        return q(h3Var.asMap().entrySet(), null);
    }

    public static <K, V> ImmutableListMultimap<K, V> of() {
        return r0.f33857k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ImmutableListMultimap<K, V> q(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @NullableDecl Comparator<? super V> comparator) {
        ImmutableList sortedCopyOf;
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int i4 = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            if (comparator == null) {
                sortedCopyOf = ImmutableList.copyOf((Collection) value);
            } else {
                sortedCopyOf = ImmutableList.sortedCopyOf(comparator, value);
            }
            if (!sortedCopyOf.isEmpty()) {
                bVar.d(key, sortedCopyOf);
                i4 += sortedCopyOf.size();
            }
        }
        return new ImmutableListMultimap<>(bVar.a(), i4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableListMultimap<V, K> r() {
        a builder = builder();
        k5 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.f(entry.getValue(), entry.getKey());
        }
        ImmutableListMultimap<V, K> a10 = builder.a();
        a10.f32716i = this;
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    private void s(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            ImmutableMap.b builder = ImmutableMap.builder();
            int i4 = 0;
            for (int i10 = 0; i10 < readInt; i10++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    ImmutableList.a builder2 = ImmutableList.builder();
                    for (int i11 = 0; i11 < readInt2; i11++) {
                        builder2.g(objectInputStream.readObject());
                    }
                    builder.d(readObject, builder2.e());
                    i4 += readInt2;
                } else {
                    throw new InvalidObjectException("Invalid value count " + readInt2);
                }
            }
            try {
                ImmutableMultimap.e.f32752a.b(this, builder.a());
                ImmutableMultimap.e.f32753b.a(this, i4);
                return;
            } catch (IllegalArgumentException e4) {
                throw ((InvalidObjectException) new InvalidObjectException(e4.getMessage()).initCause(e4));
            }
        }
        throw new InvalidObjectException("Invalid key count " + readInt);
    }

    @h3.c
    private void t(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        m4.j(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ ImmutableCollection get(@NullableDecl Object obj) {
        return get((ImmutableListMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ ImmutableCollection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableListMultimap<K, V>) obj, iterable);
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v9) {
        a builder = builder();
        builder.f(k10, v9);
        return builder.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((ImmutableListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableListMultimap<V, K> inverse() {
        ImmutableListMultimap<V, K> immutableListMultimap = this.f32716i;
        if (immutableListMultimap == null) {
            ImmutableListMultimap<V, K> r9 = r();
            this.f32716i = r9;
            return r9;
        }
        return immutableListMultimap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableListMultimap<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ List get(@NullableDecl Object obj) {
        return get((ImmutableListMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ List replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableListMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    public ImmutableList<V> get(@NullableDecl K k10) {
        ImmutableList<V> immutableList = (ImmutableList) this.f32738f.get(k10);
        return immutableList == null ? ImmutableList.of() : immutableList;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public ImmutableList<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    @Deprecated
    public ImmutableList<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v9, K k11, V v10) {
        a builder = builder();
        builder.f(k10, v9);
        builder.f(k11, v10);
        return builder.a();
    }

    @h3.a
    public static <K, V> ImmutableListMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().i(iterable).a();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11) {
        a builder = builder();
        builder.f(k10, v9);
        builder.f(k11, v10);
        builder.f(k12, v11);
        return builder.a();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12) {
        a builder = builder();
        builder.f(k10, v9);
        builder.f(k11, v10);
        builder.f(k12, v11);
        builder.f(k13, v12);
        return builder.a();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v9, K k11, V v10, K k12, V v11, K k13, V v12, K k14, V v13) {
        a builder = builder();
        builder.f(k10, v9);
        builder.f(k11, v10);
        builder.f(k12, v11);
        builder.f(k13, v12);
        builder.f(k14, v13);
        return builder.a();
    }
}
