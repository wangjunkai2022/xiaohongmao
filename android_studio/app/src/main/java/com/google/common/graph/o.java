package com.google.common.graph;

import com.google.common.collect.HashMultiset;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.k3;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: DirectedMultiNetworkConnections.java */
/* loaded from: classes2.dex */
final class o<N, E> extends b<N, E> {
    @LazyInit

    /* renamed from: d  reason: collision with root package name */
    private transient Reference<k3<N>> f34154d;
    @LazyInit

    /* renamed from: e  reason: collision with root package name */
    private transient Reference<k3<N>> f34155e;

    /* compiled from: DirectedMultiNetworkConnections.java */
    /* loaded from: classes2.dex */
    class a extends g0<E> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f34156c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.f34156c = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return o.this.s().count(this.f34156c);
        }
    }

    private o(Map<E, N> map, Map<E, N> map2, int i4) {
        super(map, map2, i4);
    }

    @NullableDecl
    private static <T> T o(@NullableDecl Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> o<N, E> p() {
        return new o<>(new HashMap(2, 1.0f), new HashMap(2, 1.0f), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> o<N, E> q(Map<E, N> map, Map<E, N> map2, int i4) {
        return new o<>(ImmutableMap.copyOf((Map) map), ImmutableMap.copyOf((Map) map2), i4);
    }

    private k3<N> r() {
        k3<N> k3Var = (k3) o(this.f34154d);
        if (k3Var == null) {
            HashMultiset create = HashMultiset.create(this.f34089a.values());
            this.f34154d = new SoftReference(create);
            return create;
        }
        return k3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k3<N> s() {
        k3<N> k3Var = (k3) o(this.f34155e);
        if (k3Var == null) {
            HashMultiset create = HashMultiset.create(this.f34090b.values());
            this.f34155e = new SoftReference(create);
            return create;
        }
        return k3Var;
    }

    @Override // com.google.common.graph.m0
    public Set<N> a() {
        return Collections.unmodifiableSet(s().elementSet());
    }

    @Override // com.google.common.graph.m0
    public Set<N> b() {
        return Collections.unmodifiableSet(r().elementSet());
    }

    @Override // com.google.common.graph.b, com.google.common.graph.m0
    public N d(E e4, boolean z9) {
        N n9 = (N) super.d(e4, z9);
        k3 k3Var = (k3) o(this.f34154d);
        if (k3Var != null) {
            com.google.common.base.a0.g0(k3Var.remove(n9));
        }
        return n9;
    }

    @Override // com.google.common.graph.b, com.google.common.graph.m0
    public void e(E e4, N n9) {
        super.e(e4, n9);
        k3 k3Var = (k3) o(this.f34155e);
        if (k3Var != null) {
            com.google.common.base.a0.g0(k3Var.add(n9));
        }
    }

    @Override // com.google.common.graph.b, com.google.common.graph.m0
    public void f(E e4, N n9, boolean z9) {
        super.f(e4, n9, z9);
        k3 k3Var = (k3) o(this.f34154d);
        if (k3Var != null) {
            com.google.common.base.a0.g0(k3Var.add(n9));
        }
    }

    @Override // com.google.common.graph.b, com.google.common.graph.m0
    public N j(E e4) {
        N n9 = (N) super.j(e4);
        k3 k3Var = (k3) o(this.f34155e);
        if (k3Var != null) {
            com.google.common.base.a0.g0(k3Var.remove(n9));
        }
        return n9;
    }

    @Override // com.google.common.graph.m0
    public Set<E> l(N n9) {
        return new a(this.f34090b, n9, n9);
    }
}
