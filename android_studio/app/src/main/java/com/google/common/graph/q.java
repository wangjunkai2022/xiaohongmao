package com.google.common.graph;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.k5;
import com.google.common.collect.x2;
import java.util.AbstractSet;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: EdgesConnecting.java */
/* loaded from: classes2.dex */
final class q<E> extends AbstractSet<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<?, E> f34194a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f34195b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Map<?, E> map, Object obj) {
        this.f34194a = (Map) com.google.common.base.a0.E(map);
        this.f34195b = com.google.common.base.a0.E(obj);
    }

    @NullableDecl
    private E a() {
        return this.f34194a.get(this.f34195b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: b */
    public k5<E> iterator() {
        E a10 = a();
        if (a10 == null) {
            return ImmutableSet.of().iterator();
        }
        return x2.Y(a10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        E a10 = a();
        return a10 != null && a10.equals(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return a() == null ? 0 : 1;
    }
}
