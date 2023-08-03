package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingSetMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class y1<K, V> extends r1<K, V> implements n4<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.r1
    /* renamed from: N */
    public abstract n4<K, V> M();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((y1<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((y1<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.h3
    public Set<Map.Entry<K, V>> entries() {
        return M().entries();
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public Set<V> get(@NullableDecl K k10) {
        return M().get((n4<K, V>) k10);
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public Set<V> removeAll(@NullableDecl Object obj) {
        return M().removeAll(obj);
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return M().replaceValues((n4<K, V>) k10, (Iterable) iterable);
    }
}
