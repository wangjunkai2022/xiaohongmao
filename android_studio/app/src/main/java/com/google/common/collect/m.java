package com.google.common.collect;

import com.google.common.collect.e;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractSetMultimap.java */
@h3.b
/* loaded from: classes2.dex */
abstract class m<K, V> extends e<K, V> implements n4<K, V> {

    /* renamed from: i  reason: collision with root package name */
    private static final long f33735i = 7431625294878419160L;

    /* JADX INFO: Access modifiers changed from: protected */
    public m(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.e
    <E> Collection<E> C(Collection<E> collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override // com.google.common.collect.e
    Collection<V> D(K k10, Collection<V> collection) {
        return new e.n(k10, (Set) collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.e
    /* renamed from: F */
    public abstract Set<V> s();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.e
    /* renamed from: G */
    public Set<V> x() {
        return Collections.emptySet();
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
        return get((m<K, V>) obj);
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
        return replaceValues((m<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    public Set<V> get(@NullableDecl K k10) {
        return (Set) super.get((m<K, V>) k10);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public Set<V> removeAll(@NullableDecl Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public Set<V> replaceValues(@NullableDecl K k10, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((m<K, V>) k10, (Iterable) iterable);
    }
}
