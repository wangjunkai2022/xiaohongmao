package com.google.common.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingSortedSetMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class c2<K, V> extends y1<K, V> implements y4<K, V> {
    protected c2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.y1
    /* renamed from: O */
    public abstract y4<K, V> N();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.y1, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((c2<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.y1, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((c2<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.y4
    public Comparator<? super V> valueComparator() {
        return N().valueComparator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.y1, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return get((c2<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.y1, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return replaceValues((c2<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.y1, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public SortedSet<V> get(@NullableDecl K k10) {
        return N().get((y4<K, V>) k10);
    }

    @Override // com.google.common.collect.y1, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public SortedSet<V> removeAll(@NullableDecl Object obj) {
        return N().removeAll(obj);
    }

    @Override // com.google.common.collect.y1, com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public SortedSet<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return N().replaceValues((y4<K, V>) k10, (Iterable) iterable);
    }
}
