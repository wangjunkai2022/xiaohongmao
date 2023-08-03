package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingListMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class o1<K, V> extends r1<K, V> implements a3<K, V> {
    protected o1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.r1
    /* renamed from: N */
    public abstract a3<K, V> M();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((o1<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((o1<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    public List<V> get(@NullableDecl K k10) {
        return M().get((a3<K, V>) k10);
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public List<V> removeAll(@NullableDecl Object obj) {
        return M().removeAll(obj);
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public List<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return M().replaceValues((a3<K, V>) k10, (Iterable) iterable);
    }
}
