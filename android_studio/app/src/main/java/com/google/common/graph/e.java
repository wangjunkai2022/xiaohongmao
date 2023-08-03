package com.google.common.graph;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.f3;
import com.google.common.collect.o4;
import com.google.common.collect.x2;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractNetwork.java */
@h3.a
/* loaded from: classes2.dex */
public abstract class e<N, E> implements k0<N, E> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractNetwork.java */
    /* loaded from: classes2.dex */
    public class a extends com.google.common.graph.c<N> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AbstractNetwork.java */
        /* renamed from: com.google.common.graph.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0249a extends AbstractSet<r<N>> {

            /* compiled from: AbstractNetwork.java */
            /* renamed from: com.google.common.graph.e$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0250a implements com.google.common.base.q<E, r<N>> {
                C0250a() {
                }

                @Override // com.google.common.base.q
                /* renamed from: a */
                public r<N> apply(E e4) {
                    return e.this.E(e4);
                }
            }

            C0249a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@NullableDecl Object obj) {
                if (obj instanceof r) {
                    r<?> rVar = (r) obj;
                    return a.this.N(rVar) && a.this.m().contains(rVar.d()) && a.this.b((a) rVar.d()).contains(rVar.e());
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<r<N>> iterator() {
                return x2.c0(e.this.c().iterator(), new C0250a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return e.this.c().size();
            }
        }

        a() {
        }

        @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
        public /* bridge */ /* synthetic */ Iterable a(Object obj) {
            return a((a) obj);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
        public /* bridge */ /* synthetic */ Iterable b(Object obj) {
            return b((a) obj);
        }

        @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
        public Set<r<N>> c() {
            if (e.this.x()) {
                return super.c();
            }
            return new C0249a();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public boolean e() {
            return e.this.e();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public ElementOrder<N> h() {
            return e.this.h();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public boolean j() {
            return e.this.j();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public Set<N> k(N n9) {
            return e.this.k(n9);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public Set<N> m() {
            return e.this.m();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
        public Set<N> a(N n9) {
            return e.this.a((e) n9);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
        public Set<N> b(N n9) {
            return e.this.b((e) n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractNetwork.java */
    /* loaded from: classes2.dex */
    public class b implements com.google.common.base.b0<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f34107a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f34108b;

        b(Object obj, Object obj2) {
            this.f34107a = obj;
            this.f34108b = obj2;
        }

        @Override // com.google.common.base.b0
        public boolean apply(E e4) {
            return e.this.E(e4).a(this.f34107a).equals(this.f34108b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractNetwork.java */
    /* loaded from: classes2.dex */
    public static class c implements com.google.common.base.q<E, r<N>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k0 f34110a;

        c(k0 k0Var) {
            this.f34110a = k0Var;
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public r<N> apply(E e4) {
            return this.f34110a.E(e4);
        }
    }

    private com.google.common.base.b0<E> M(N n9, N n10) {
        return new b(n9, n10);
    }

    private static <N, E> Map<E, r<N>> N(k0<N, E> k0Var) {
        return f3.j(k0Var.c(), new c(k0Var));
    }

    @Override // com.google.common.graph.k0
    public Set<E> C(r<N> rVar) {
        P(rVar);
        return w(rVar.d(), rVar.e());
    }

    @Override // com.google.common.graph.k0
    @NullableDecl
    public E D(N n9, N n10) {
        Set<E> w9 = w(n9, n10);
        int size = w9.size();
        if (size != 0) {
            if (size == 1) {
                return w9.iterator().next();
            }
            throw new IllegalArgumentException(String.format("Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead.", n9, n10));
        }
        return null;
    }

    @Override // com.google.common.graph.k0
    @NullableDecl
    public E H(r<N> rVar) {
        P(rVar);
        return D(rVar.d(), rVar.e());
    }

    protected final boolean O(r<?> rVar) {
        return rVar.b() || !e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void P(r<?> rVar) {
        com.google.common.base.a0.E(rVar);
        com.google.common.base.a0.e(O(rVar), "Mismatch: unordered endpoints cannot be used with directed graphs");
    }

    @Override // com.google.common.graph.k0
    public boolean d(N n9, N n10) {
        return !w(n9, n10).isEmpty();
    }

    @Override // com.google.common.graph.k0
    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k0) {
            k0 k0Var = (k0) obj;
            return e() == k0Var.e() && m().equals(k0Var.m()) && N(this).equals(N(k0Var));
        }
        return false;
    }

    @Override // com.google.common.graph.k0
    public boolean f(r<N> rVar) {
        com.google.common.base.a0.E(rVar);
        if (O(rVar)) {
            return !w(rVar.d(), rVar.e()).isEmpty();
        }
        return false;
    }

    @Override // com.google.common.graph.k0
    public int g(N n9) {
        if (e()) {
            return com.google.common.math.d.t(J(n9).size(), u(n9).size());
        }
        return com.google.common.math.d.t(l(n9).size(), w(n9, n9).size());
    }

    @Override // com.google.common.graph.k0
    public final int hashCode() {
        return N(this).hashCode();
    }

    @Override // com.google.common.graph.k0
    public int i(N n9) {
        return e() ? u(n9).size() : g(n9);
    }

    @Override // com.google.common.graph.k0
    public int n(N n9) {
        return e() ? J(n9).size() : g(n9);
    }

    @Override // com.google.common.graph.k0
    public w<N> s() {
        return new a();
    }

    public String toString() {
        return "isDirected: " + e() + ", allowsParallelEdges: " + x() + ", allowsSelfLoops: " + j() + ", nodes: " + m() + ", edges: " + N(this);
    }

    @Override // com.google.common.graph.k0
    public Set<E> v(E e4) {
        r<N> E = E(e4);
        return o4.f(o4.N(l(E.d()), l(E.e())), ImmutableSet.of((Object) e4));
    }

    @Override // com.google.common.graph.k0
    public Set<E> w(N n9, N n10) {
        Set<E> u9 = u(n9);
        Set<E> J = J(n10);
        if (u9.size() <= J.size()) {
            return Collections.unmodifiableSet(o4.i(u9, M(n9, n10)));
        }
        return Collections.unmodifiableSet(o4.i(J, M(n10, n9)));
    }
}
