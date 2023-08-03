package com.google.common.graph;

import com.google.common.collect.k5;
import com.google.common.collect.o4;
import com.google.common.collect.w2;
import com.google.common.collect.x2;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractDirectedNetworkConnections.java */
/* loaded from: classes2.dex */
public abstract class b<N, E> implements m0<N, E> {

    /* renamed from: a  reason: collision with root package name */
    protected final Map<E, N> f34089a;

    /* renamed from: b  reason: collision with root package name */
    protected final Map<E, N> f34090b;

    /* renamed from: c  reason: collision with root package name */
    private int f34091c;

    /* compiled from: AbstractDirectedNetworkConnections.java */
    /* loaded from: classes2.dex */
    class a extends AbstractSet<E> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public k5<E> iterator() {
            Iterable N;
            if (b.this.f34091c == 0) {
                N = w2.f(b.this.f34089a.keySet(), b.this.f34090b.keySet());
            } else {
                N = o4.N(b.this.f34089a.keySet(), b.this.f34090b.keySet());
            }
            return x2.f0(N.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return b.this.f34089a.containsKey(obj) || b.this.f34090b.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return com.google.common.math.d.t(b.this.f34089a.size(), b.this.f34090b.size() - b.this.f34091c);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Map<E, N> map, Map<E, N> map2, int i4) {
        this.f34089a = (Map) com.google.common.base.a0.E(map);
        this.f34090b = (Map) com.google.common.base.a0.E(map2);
        this.f34091c = a0.b(i4);
        com.google.common.base.a0.g0(i4 <= map.size() && i4 <= map2.size());
    }

    @Override // com.google.common.graph.m0
    public Set<N> c() {
        return o4.N(b(), a());
    }

    @Override // com.google.common.graph.m0
    public N d(E e4, boolean z9) {
        if (z9) {
            int i4 = this.f34091c - 1;
            this.f34091c = i4;
            a0.b(i4);
        }
        return (N) com.google.common.base.a0.E(this.f34089a.remove(e4));
    }

    @Override // com.google.common.graph.m0
    public void e(E e4, N n9) {
        com.google.common.base.a0.g0(this.f34090b.put(e4, n9) == null);
    }

    @Override // com.google.common.graph.m0
    public void f(E e4, N n9, boolean z9) {
        if (z9) {
            int i4 = this.f34091c + 1;
            this.f34091c = i4;
            a0.d(i4);
        }
        com.google.common.base.a0.g0(this.f34089a.put(e4, n9) == null);
    }

    @Override // com.google.common.graph.m0
    public Set<E> g() {
        return new a();
    }

    @Override // com.google.common.graph.m0
    public N h(E e4) {
        return (N) com.google.common.base.a0.E(this.f34090b.get(e4));
    }

    @Override // com.google.common.graph.m0
    public Set<E> i() {
        return Collections.unmodifiableSet(this.f34089a.keySet());
    }

    @Override // com.google.common.graph.m0
    public N j(E e4) {
        return (N) com.google.common.base.a0.E(this.f34090b.remove(e4));
    }

    @Override // com.google.common.graph.m0
    public Set<E> k() {
        return Collections.unmodifiableSet(this.f34090b.keySet());
    }
}
