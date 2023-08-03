package com.google.common.graph;

import com.google.common.collect.f3;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractValueGraph.java */
@h3.a
/* loaded from: classes2.dex */
public abstract class g<N, V> extends com.google.common.graph.a<N> implements t0<N, V> {

    /* compiled from: AbstractValueGraph.java */
    /* loaded from: classes2.dex */
    class a extends c<N> {
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
            return g.this.c();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public boolean e() {
            return g.this.e();
        }

        @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
        public int g(N n9) {
            return g.this.g(n9);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public ElementOrder<N> h() {
            return g.this.h();
        }

        @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
        public int i(N n9) {
            return g.this.i(n9);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public boolean j() {
            return g.this.j();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public Set<N> k(N n9) {
            return g.this.k(n9);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.w
        public Set<N> m() {
            return g.this.m();
        }

        @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
        public int n(N n9) {
            return g.this.n(n9);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
        public Set<N> a(N n9) {
            return g.this.a((g) n9);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
        public Set<N> b(N n9) {
            return g.this.b((g) n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractValueGraph.java */
    /* loaded from: classes2.dex */
    public static class b implements com.google.common.base.q<r<N>, V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t0 f34122a;

        b(t0 t0Var) {
            this.f34122a = t0Var;
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public V apply(r<N> rVar) {
            return (V) this.f34122a.y(rVar.d(), rVar.e(), null);
        }
    }

    private static <N, V> Map<r<N>, V> P(t0<N, V> t0Var) {
        return f3.j(t0Var.c(), new b(t0Var));
    }

    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ Set c() {
        return super.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ boolean d(Object obj, Object obj2) {
        return super.d(obj, obj2);
    }

    @Override // com.google.common.graph.t0
    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t0) {
            t0 t0Var = (t0) obj;
            return e() == t0Var.e() && m().equals(t0Var.m()) && P(this).equals(P(t0Var));
        }
        return false;
    }

    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ boolean f(r rVar) {
        return super.f(rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int g(Object obj) {
        return super.g(obj);
    }

    @Override // com.google.common.graph.t0
    public final int hashCode() {
        return P(this).hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int i(Object obj) {
        return super.i(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ Set l(Object obj) {
        return super.l(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int n(Object obj) {
        return super.n(obj);
    }

    public w<N> s() {
        return new a();
    }

    public String toString() {
        return "isDirected: " + e() + ", allowsSelfLoops: " + j() + ", nodes: " + m() + ", edges: " + P(this);
    }
}
