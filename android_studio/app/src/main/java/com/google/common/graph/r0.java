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

/* compiled from: UndirectedMultiNetworkConnections.java */
/* loaded from: classes2.dex */
final class r0<N, E> extends f<N, E> {
    @LazyInit

    /* renamed from: b  reason: collision with root package name */
    private transient Reference<k3<N>> f34199b;

    /* compiled from: UndirectedMultiNetworkConnections.java */
    /* loaded from: classes2.dex */
    class a extends g0<E> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f34200c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.f34200c = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return r0.this.n().count(this.f34200c);
        }
    }

    private r0(Map<E, N> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k3<N> n() {
        k3<N> k3Var = (k3) o(this.f34199b);
        if (k3Var == null) {
            HashMultiset create = HashMultiset.create(this.f34116a.values());
            this.f34199b = new SoftReference(create);
            return create;
        }
        return k3Var;
    }

    @NullableDecl
    private static <T> T o(@NullableDecl Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> r0<N, E> p() {
        return new r0<>(new HashMap(2, 1.0f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> r0<N, E> q(Map<E, N> map) {
        return new r0<>(ImmutableMap.copyOf((Map) map));
    }

    @Override // com.google.common.graph.m0
    public Set<N> c() {
        return Collections.unmodifiableSet(n().elementSet());
    }

    @Override // com.google.common.graph.f, com.google.common.graph.m0
    public N d(E e4, boolean z9) {
        if (z9) {
            return null;
        }
        return j(e4);
    }

    @Override // com.google.common.graph.f, com.google.common.graph.m0
    public void e(E e4, N n9) {
        super.e(e4, n9);
        k3 k3Var = (k3) o(this.f34199b);
        if (k3Var != null) {
            com.google.common.base.a0.g0(k3Var.add(n9));
        }
    }

    @Override // com.google.common.graph.f, com.google.common.graph.m0
    public void f(E e4, N n9, boolean z9) {
        if (z9) {
            return;
        }
        e(e4, n9);
    }

    @Override // com.google.common.graph.f, com.google.common.graph.m0
    public N j(E e4) {
        N n9 = (N) super.j(e4);
        k3 k3Var = (k3) o(this.f34199b);
        if (k3Var != null) {
            com.google.common.base.a0.g0(k3Var.remove(n9));
        }
        return n9;
    }

    @Override // com.google.common.graph.m0
    public Set<E> l(N n9) {
        return new a(this.f34116a, n9, n9);
    }
}
