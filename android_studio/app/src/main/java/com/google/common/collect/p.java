package com.google.common.collect;

import com.google.common.collect.e;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractSortedSetMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class p<K, V> extends m<K, V> implements y4<K, V> {

    /* renamed from: j  reason: collision with root package name */
    private static final long f33813j = 430848587173315748L;

    /* JADX INFO: Access modifiers changed from: protected */
    public p(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e
    Collection<V> D(K k10, Collection<V> collection) {
        if (collection instanceof NavigableSet) {
            return new e.m(k10, (NavigableSet) collection, null);
        }
        return new e.o(k10, (SortedSet) collection, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.m, com.google.common.collect.e
    /* renamed from: H */
    public abstract SortedSet<V> s();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.m, com.google.common.collect.e
    /* renamed from: I */
    public SortedSet<V> x() {
        return (SortedSet<V>) C(s());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.m, com.google.common.collect.e
    /* renamed from: J */
    public <E> SortedSet<E> C(Collection<E> collection) {
        if (collection instanceof NavigableSet) {
            return o4.O((NavigableSet) collection);
        }
        return Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((p<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((p<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    public Collection<V> values() {
        return super.values();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return get((p<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Set replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((p<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    public SortedSet<V> get(@NullableDecl K k10) {
        return (SortedSet) super.get((p<K, V>) k10);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public SortedSet<V> removeAll(@NullableDecl Object obj) {
        return (SortedSet) super.removeAll(obj);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public SortedSet<V> replaceValues(@NullableDecl K k10, Iterable<? extends V> iterable) {
        return (SortedSet) super.replaceValues((p<K, V>) k10, (Iterable) iterable);
    }
}
