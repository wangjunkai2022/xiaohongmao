package com.google.common.graph;

import com.google.common.collect.f3;
import com.google.common.collect.w2;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Graphs.java */
@h3.a
/* loaded from: classes2.dex */
public final class a0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Graphs.java */
    /* loaded from: classes2.dex */
    public enum a {
        PENDING,
        COMPLETE
    }

    /* compiled from: Graphs.java */
    /* loaded from: classes2.dex */
    private static class b<N> extends t<N> {

        /* renamed from: a  reason: collision with root package name */
        private final w<N> f34086a;

        b(w<N> wVar) {
            this.f34086a = wVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.graph.t
        /* renamed from: R */
        public w<N> P() {
            return this.f34086a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
        public /* bridge */ /* synthetic */ Iterable a(Object obj) {
            return a((b<N>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
        public /* bridge */ /* synthetic */ Iterable b(Object obj) {
            return b((b<N>) obj);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
        public boolean d(N n9, N n10) {
            return P().d(n10, n9);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
        public boolean f(r<N> rVar) {
            return P().f(a0.q(rVar));
        }

        @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
        public int i(N n9) {
            return P().n(n9);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
        public int n(N n9) {
            return P().i(n9);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
        public Set<N> a(N n9) {
            return P().b((w<N>) n9);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
        public Set<N> b(N n9) {
            return P().a((w<N>) n9);
        }
    }

    /* compiled from: Graphs.java */
    /* loaded from: classes2.dex */
    private static class c<N, E> extends u<N, E> {

        /* renamed from: a  reason: collision with root package name */
        private final k0<N, E> f34087a;

        c(k0<N, E> k0Var) {
            this.f34087a = k0Var;
        }

        @Override // com.google.common.graph.u, com.google.common.graph.e, com.google.common.graph.k0
        public Set<E> C(r<N> rVar) {
            return Q().C(a0.q(rVar));
        }

        @Override // com.google.common.graph.u, com.google.common.graph.e, com.google.common.graph.k0
        public E D(N n9, N n10) {
            return Q().D(n10, n9);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.k0
        public r<N> E(E e4) {
            r<N> E = Q().E(e4);
            return r.g(this.f34087a, E.e(), E.d());
        }

        @Override // com.google.common.graph.u, com.google.common.graph.e, com.google.common.graph.k0
        public E H(r<N> rVar) {
            return Q().H(a0.q(rVar));
        }

        @Override // com.google.common.graph.u, com.google.common.graph.k0
        public Set<E> J(N n9) {
            return Q().u(n9);
        }

        @Override // com.google.common.graph.u
        protected k0<N, E> Q() {
            return this.f34087a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.u, com.google.common.graph.k0, com.google.common.graph.n0, com.google.common.graph.w
        public /* bridge */ /* synthetic */ Iterable a(Object obj) {
            return a((c<N, E>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.u, com.google.common.graph.k0, com.google.common.graph.o0, com.google.common.graph.w
        public /* bridge */ /* synthetic */ Iterable b(Object obj) {
            return b((c<N, E>) obj);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.e, com.google.common.graph.k0
        public boolean d(N n9, N n10) {
            return Q().d(n10, n9);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.e, com.google.common.graph.k0
        public boolean f(r<N> rVar) {
            return Q().f(a0.q(rVar));
        }

        @Override // com.google.common.graph.u, com.google.common.graph.e, com.google.common.graph.k0
        public int i(N n9) {
            return Q().n(n9);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.e, com.google.common.graph.k0
        public int n(N n9) {
            return Q().i(n9);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.k0
        public Set<E> u(N n9) {
            return Q().J(n9);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.e, com.google.common.graph.k0
        public Set<E> w(N n9, N n10) {
            return Q().w(n10, n9);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.k0, com.google.common.graph.n0, com.google.common.graph.w
        public Set<N> a(N n9) {
            return Q().b((k0<N, E>) n9);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.k0, com.google.common.graph.o0, com.google.common.graph.w
        public Set<N> b(N n9) {
            return Q().a((k0<N, E>) n9);
        }
    }

    /* compiled from: Graphs.java */
    /* loaded from: classes2.dex */
    private static class d<N, V> extends v<N, V> {

        /* renamed from: a  reason: collision with root package name */
        private final t0<N, V> f34088a;

        d(t0<N, V> t0Var) {
            this.f34088a = t0Var;
        }

        @Override // com.google.common.graph.v
        protected t0<N, V> Q() {
            return this.f34088a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.v, com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
        public /* bridge */ /* synthetic */ Iterable a(Object obj) {
            return a((d<N, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.v, com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
        public /* bridge */ /* synthetic */ Iterable b(Object obj) {
            return b((d<N, V>) obj);
        }

        @Override // com.google.common.graph.v, com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
        public boolean d(N n9, N n10) {
            return Q().d(n10, n9);
        }

        @Override // com.google.common.graph.v, com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
        public boolean f(r<N> rVar) {
            return Q().f(a0.q(rVar));
        }

        @Override // com.google.common.graph.v, com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
        public int i(N n9) {
            return Q().n(n9);
        }

        @Override // com.google.common.graph.v, com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
        public int n(N n9) {
            return Q().i(n9);
        }

        @Override // com.google.common.graph.v, com.google.common.graph.t0
        @NullableDecl
        public V t(r<N> rVar, @NullableDecl V v9) {
            return Q().t(a0.q(rVar), v9);
        }

        @Override // com.google.common.graph.v, com.google.common.graph.t0
        @NullableDecl
        public V y(N n9, N n10, @NullableDecl V v9) {
            return Q().y(n10, n9, v9);
        }

        @Override // com.google.common.graph.v, com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
        public Set<N> a(N n9) {
            return Q().b((t0<N, V>) n9);
        }

        @Override // com.google.common.graph.v, com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
        public Set<N> b(N n9) {
            return Q().a((t0<N, V>) n9);
        }
    }

    private a0() {
    }

    private static boolean a(w<?> wVar, Object obj, @NullableDecl Object obj2) {
        return wVar.e() || !com.google.common.base.w.a(obj2, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static int b(int i4) {
        com.google.common.base.a0.k(i4 >= 0, "Not true that %s is non-negative.", i4);
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static long c(long j4) {
        com.google.common.base.a0.p(j4 >= 0, "Not true that %s is non-negative.", j4);
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static int d(int i4) {
        com.google.common.base.a0.k(i4 > 0, "Not true that %s is positive.", i4);
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static long e(long j4) {
        com.google.common.base.a0.p(j4 > 0, "Not true that %s is positive.", j4);
        return j4;
    }

    public static <N> h0<N> f(w<N> wVar) {
        h0<N> h0Var = (h0<N>) x.f(wVar).e(wVar.m().size()).b();
        for (N n9 : wVar.m()) {
            h0Var.p(n9);
        }
        for (r<N> rVar : wVar.c()) {
            h0Var.F(rVar.d(), rVar.e());
        }
        return h0Var;
    }

    public static <N, E> i0<N, E> g(k0<N, E> k0Var) {
        i0<N, E> i0Var = (i0<N, E>) l0.i(k0Var).h(k0Var.m().size()).g(k0Var.c().size()).c();
        for (N n9 : k0Var.m()) {
            i0Var.p(n9);
        }
        for (E e4 : k0Var.c()) {
            r<N> E = k0Var.E(e4);
            i0Var.L(E.d(), E.e(), e4);
        }
        return i0Var;
    }

    public static <N, V> j0<N, V> h(t0<N, V> t0Var) {
        j0<N, V> j0Var = (j0<N, V>) u0.f(t0Var).e(t0Var.m().size()).b();
        for (N n9 : t0Var.m()) {
            j0Var.p(n9);
        }
        for (r<N> rVar : t0Var.c()) {
            j0Var.K(rVar.d(), rVar.e(), t0Var.y(rVar.d(), rVar.e(), null));
        }
        return j0Var;
    }

    public static <N> boolean i(w<N> wVar) {
        int size = wVar.c().size();
        if (size == 0) {
            return false;
        }
        if (wVar.e() || size < wVar.m().size()) {
            HashMap a02 = f3.a0(wVar.m().size());
            for (N n9 : wVar.m()) {
                if (o(wVar, a02, n9, null)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public static boolean j(k0<?, ?> k0Var) {
        if (k0Var.e() || !k0Var.x() || k0Var.c().size() <= k0Var.s().c().size()) {
            return i(k0Var.s());
        }
        return true;
    }

    public static <N> h0<N> k(w<N> wVar, Iterable<? extends N> iterable) {
        h0<N> h0Var;
        if (iterable instanceof Collection) {
            h0Var = x.f(wVar).e(((Collection) iterable).size()).b();
        } else {
            h0Var = x.f(wVar).b();
        }
        for (N n9 : iterable) {
            h0Var.p(n9);
        }
        for (N n10 : h0Var.m()) {
            for (N n11 : wVar.b((w<N>) n10)) {
                if (h0Var.m().contains(n11)) {
                    h0Var.F(n10, n11);
                }
            }
        }
        return h0Var;
    }

    public static <N, E> i0<N, E> l(k0<N, E> k0Var, Iterable<? extends N> iterable) {
        i0<N, E> i0Var;
        if (iterable instanceof Collection) {
            i0Var = l0.i(k0Var).h(((Collection) iterable).size()).c();
        } else {
            i0Var = l0.i(k0Var).c();
        }
        for (N n9 : iterable) {
            i0Var.p(n9);
        }
        for (N n10 : i0Var.m()) {
            for (E e4 : k0Var.u(n10)) {
                N a10 = k0Var.E(e4).a(n10);
                if (i0Var.m().contains(a10)) {
                    i0Var.L(n10, a10, e4);
                }
            }
        }
        return i0Var;
    }

    public static <N, V> j0<N, V> m(t0<N, V> t0Var, Iterable<? extends N> iterable) {
        j0<N, V> j0Var;
        if (iterable instanceof Collection) {
            j0Var = u0.f(t0Var).e(((Collection) iterable).size()).b();
        } else {
            j0Var = u0.f(t0Var).b();
        }
        for (N n9 : iterable) {
            j0Var.p(n9);
        }
        for (N n10 : j0Var.m()) {
            for (N n11 : t0Var.b((t0<N, V>) n10)) {
                if (j0Var.m().contains(n11)) {
                    j0Var.K(n10, n11, t0Var.y(n10, n11, null));
                }
            }
        }
        return j0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N> Set<N> n(w<N> wVar, N n9) {
        com.google.common.base.a0.u(wVar.m().contains(n9), "Node %s is not an element of this graph.", n9);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayDeque arrayDeque = new ArrayDeque();
        linkedHashSet.add(n9);
        arrayDeque.add(n9);
        while (!arrayDeque.isEmpty()) {
            for (Object obj : wVar.b((w<N>) arrayDeque.remove())) {
                if (linkedHashSet.add(obj)) {
                    arrayDeque.add(obj);
                }
            }
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    private static <N> boolean o(w<N> wVar, Map<Object, a> map, N n9, @NullableDecl N n10) {
        a aVar = map.get(n9);
        if (aVar == a.COMPLETE) {
            return false;
        }
        a aVar2 = a.PENDING;
        if (aVar == aVar2) {
            return true;
        }
        map.put(n9, aVar2);
        for (N n11 : wVar.b((w<N>) n9)) {
            if (a(wVar, n11, n10) && o(wVar, map, n11, n9)) {
                return true;
            }
        }
        map.put(n9, a.COMPLETE);
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.common.graph.h0, com.google.common.graph.w<N>] */
    public static <N> w<N> p(w<N> wVar) {
        ?? b10 = x.f(wVar).a(true).b();
        if (wVar.e()) {
            for (N n9 : wVar.m()) {
                for (Object obj : n(wVar, n9)) {
                    b10.F(n9, obj);
                }
            }
        } else {
            HashSet hashSet = new HashSet();
            for (N n10 : wVar.m()) {
                if (!hashSet.contains(n10)) {
                    Set n11 = n(wVar, n10);
                    hashSet.addAll(n11);
                    int i4 = 1;
                    for (Object obj2 : n11) {
                        int i10 = i4 + 1;
                        for (Object obj3 : w2.D(n11, i4)) {
                            b10.F(obj2, obj3);
                        }
                        i4 = i10;
                    }
                }
            }
        }
        return b10;
    }

    static <N> r<N> q(r<N> rVar) {
        return rVar.b() ? r.h(rVar.k(), rVar.j()) : rVar;
    }

    public static <N> w<N> r(w<N> wVar) {
        if (wVar.e()) {
            if (wVar instanceof b) {
                return ((b) wVar).f34086a;
            }
            return new b(wVar);
        }
        return wVar;
    }

    public static <N, E> k0<N, E> s(k0<N, E> k0Var) {
        if (k0Var.e()) {
            if (k0Var instanceof c) {
                return ((c) k0Var).f34087a;
            }
            return new c(k0Var);
        }
        return k0Var;
    }

    public static <N, V> t0<N, V> t(t0<N, V> t0Var) {
        if (t0Var.e()) {
            if (t0Var instanceof d) {
                return ((d) t0Var).f34088a;
            }
            return new d(t0Var);
        }
        return t0Var;
    }
}
