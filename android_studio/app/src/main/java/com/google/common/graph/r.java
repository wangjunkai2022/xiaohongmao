package com.google.common.graph;

import com.google.common.collect.k5;
import com.google.common.collect.x2;
import com.google.errorprone.annotations.Immutable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: EndpointPair.java */
@Immutable(containerOf = {"N"})
@h3.a
/* loaded from: classes2.dex */
public abstract class r<N> implements Iterable<N> {

    /* renamed from: a  reason: collision with root package name */
    private final N f34197a;

    /* renamed from: b  reason: collision with root package name */
    private final N f34198b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EndpointPair.java */
    /* loaded from: classes2.dex */
    public static final class b<N> extends r<N> {
        @Override // com.google.common.graph.r
        public boolean b() {
            return true;
        }

        @Override // com.google.common.graph.r
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof r) {
                r rVar = (r) obj;
                return b() == rVar.b() && j().equals(rVar.j()) && k().equals(rVar.k());
            }
            return false;
        }

        @Override // com.google.common.graph.r
        public int hashCode() {
            return com.google.common.base.w.b(j(), k());
        }

        @Override // com.google.common.graph.r, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.graph.r
        public N j() {
            return d();
        }

        @Override // com.google.common.graph.r
        public N k() {
            return e();
        }

        public String toString() {
            return "<" + j() + " -> " + k() + ">";
        }

        private b(N n9, N n10) {
            super(n9, n10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EndpointPair.java */
    /* loaded from: classes2.dex */
    public static final class c<N> extends r<N> {
        @Override // com.google.common.graph.r
        public boolean b() {
            return false;
        }

        @Override // com.google.common.graph.r
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof r) {
                r rVar = (r) obj;
                if (b() != rVar.b()) {
                    return false;
                }
                if (d().equals(rVar.d())) {
                    return e().equals(rVar.e());
                }
                return d().equals(rVar.e()) && e().equals(rVar.d());
            }
            return false;
        }

        @Override // com.google.common.graph.r
        public int hashCode() {
            return d().hashCode() + e().hashCode();
        }

        @Override // com.google.common.graph.r, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.graph.r
        public N j() {
            throw new UnsupportedOperationException("Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.");
        }

        @Override // com.google.common.graph.r
        public N k() {
            throw new UnsupportedOperationException("Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.");
        }

        public String toString() {
            return "[" + d() + ", " + e() + "]";
        }

        private c(N n9, N n10) {
            super(n9, n10);
        }
    }

    static <N> r<N> f(w<?> wVar, N n9, N n10) {
        return wVar.e() ? h(n9, n10) : l(n9, n10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N> r<N> g(k0<?, ?> k0Var, N n9, N n10) {
        return k0Var.e() ? h(n9, n10) : l(n9, n10);
    }

    public static <N> r<N> h(N n9, N n10) {
        return new b(n9, n10);
    }

    public static <N> r<N> l(N n9, N n10) {
        return new c(n10, n9);
    }

    public final N a(Object obj) {
        if (obj.equals(this.f34197a)) {
            return this.f34198b;
        }
        if (obj.equals(this.f34198b)) {
            return this.f34197a;
        }
        throw new IllegalArgumentException("EndpointPair " + this + " does not contain node " + obj);
    }

    public abstract boolean b();

    @Override // java.lang.Iterable
    /* renamed from: c */
    public final k5<N> iterator() {
        return x2.B(this.f34197a, this.f34198b);
    }

    public final N d() {
        return this.f34197a;
    }

    public final N e() {
        return this.f34198b;
    }

    public abstract boolean equals(@NullableDecl Object obj);

    public abstract int hashCode();

    public abstract N j();

    public abstract N k();

    private r(N n9, N n10) {
        this.f34197a = (N) com.google.common.base.a0.E(n9);
        this.f34198b = (N) com.google.common.base.a0.E(n10);
    }
}
