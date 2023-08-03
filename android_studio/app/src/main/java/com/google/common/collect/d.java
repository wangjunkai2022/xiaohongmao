package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractListMultimap.java */
@h3.b
/* loaded from: classes2.dex */
abstract class d<K, V> extends e<K, V> implements a3<K, V> {

    /* renamed from: i  reason: collision with root package name */
    private static final long f33232i = 6588350623831699109L;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.e
    <E> Collection<E> C(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.common.collect.e
    Collection<V> D(K k10, Collection<V> collection) {
        return E(k10, (List) collection, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.e
    /* renamed from: F */
    public abstract List<V> s();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.e
    /* renamed from: G */
    public List<V> x() {
        return Collections.emptyList();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((d<K, V>) obj);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public boolean put(@NullableDecl K k10, @NullableDecl V v9) {
        return super.put(k10, v9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((d<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    public List<V> get(@NullableDecl K k10) {
        return (List) super.get((d<K, V>) k10);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public List<V> removeAll(@NullableDecl Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public List<V> replaceValues(@NullableDecl K k10, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((d<K, V>) k10, (Iterable) iterable);
    }
}
