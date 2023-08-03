package com.google.common.graph;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.k5;
import com.google.common.collect.o4;
import com.google.common.collect.x2;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractBaseGraph.java */
/* loaded from: classes2.dex */
public abstract class a<N> implements h<N> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractBaseGraph.java */
    /* renamed from: com.google.common.graph.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0243a extends AbstractSet<r<N>> {
        C0243a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public k5<r<N>> iterator() {
            return s.e(a.this);
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

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return com.google.common.primitives.f.x(a.this.M());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractBaseGraph.java */
    /* loaded from: classes2.dex */
    public static abstract class b<N> extends AbstractSet<r<N>> {

        /* renamed from: a  reason: collision with root package name */
        protected final N f34078a;

        /* renamed from: b  reason: collision with root package name */
        protected final h<N> f34079b;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: AbstractBaseGraph.java */
        /* renamed from: com.google.common.graph.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0244a<N> extends b<N> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: AbstractBaseGraph.java */
            /* renamed from: com.google.common.graph.a$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0245a implements com.google.common.base.q<N, r<N>> {
                C0245a() {
                }

                @Override // com.google.common.base.q
                /* renamed from: a */
                public r<N> apply(N n9) {
                    return r.h(n9, C0244a.this.f34078a);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: AbstractBaseGraph.java */
            /* renamed from: com.google.common.graph.a$b$a$b  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0246b implements com.google.common.base.q<N, r<N>> {
                C0246b() {
                }

                @Override // com.google.common.base.q
                /* renamed from: a */
                public r<N> apply(N n9) {
                    return r.h(C0244a.this.f34078a, n9);
                }
            }

            /* synthetic */ C0244a(h hVar, Object obj, C0243a c0243a) {
                this(hVar, obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            /* renamed from: b */
            public k5<r<N>> iterator() {
                return x2.f0(x2.j(x2.c0(this.f34079b.a((h<N>) this.f34078a).iterator(), new C0245a()), x2.c0(o4.f(this.f34079b.b((h<N>) this.f34078a), ImmutableSet.of(this.f34078a)).iterator(), new C0246b())));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@NullableDecl Object obj) {
                if (obj instanceof r) {
                    r rVar = (r) obj;
                    if (rVar.b()) {
                        Object j4 = rVar.j();
                        Object k10 = rVar.k();
                        return (this.f34078a.equals(j4) && this.f34079b.b((h<N>) this.f34078a).contains(k10)) || (this.f34078a.equals(k10) && this.f34079b.a((h<N>) this.f34078a).contains(j4));
                    }
                    return false;
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return (this.f34079b.n(this.f34078a) + this.f34079b.i(this.f34078a)) - (this.f34079b.b((h<N>) this.f34078a).contains(this.f34078a) ? 1 : 0);
            }

            private C0244a(h<N> hVar, N n9) {
                super(hVar, n9, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: AbstractBaseGraph.java */
        /* renamed from: com.google.common.graph.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0247b<N> extends b<N> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: AbstractBaseGraph.java */
            /* renamed from: com.google.common.graph.a$b$b$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0248a implements com.google.common.base.q<N, r<N>> {
                C0248a() {
                }

                @Override // com.google.common.base.q
                /* renamed from: a */
                public r<N> apply(N n9) {
                    return r.l(C0247b.this.f34078a, n9);
                }
            }

            /* synthetic */ C0247b(h hVar, Object obj, C0243a c0243a) {
                this(hVar, obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            /* renamed from: b */
            public k5<r<N>> iterator() {
                return x2.f0(x2.c0(this.f34079b.k(this.f34078a).iterator(), new C0248a()));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@NullableDecl Object obj) {
                if (obj instanceof r) {
                    r rVar = (r) obj;
                    if (rVar.b()) {
                        return false;
                    }
                    Set<N> k10 = this.f34079b.k(this.f34078a);
                    Object d4 = rVar.d();
                    Object e4 = rVar.e();
                    return (this.f34078a.equals(e4) && k10.contains(d4)) || (this.f34078a.equals(d4) && k10.contains(e4));
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return this.f34079b.k(this.f34078a).size();
            }

            private C0247b(h<N> hVar, N n9) {
                super(hVar, n9, null);
            }
        }

        /* synthetic */ b(h hVar, Object obj, C0243a c0243a) {
            this(hVar, obj);
        }

        public static <N> b<N> a(h<N> hVar, N n9) {
            return hVar.e() ? new C0244a(hVar, n9, null) : new C0247b(hVar, n9, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        private b(h<N> hVar, N n9) {
            this.f34079b = hVar;
            this.f34078a = n9;
        }
    }

    protected long M() {
        Iterator<N> it;
        long j4 = 0;
        while (m().iterator().hasNext()) {
            j4 += g(it.next());
        }
        com.google.common.base.a0.g0((1 & j4) == 0);
        return j4 >>> 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean N(r<?> rVar) {
        return rVar.b() || !e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void O(r<?> rVar) {
        com.google.common.base.a0.E(rVar);
        com.google.common.base.a0.e(N(rVar), "Mismatch: unordered endpoints cannot be used with directed graphs");
    }

    @Override // com.google.common.graph.h
    public Set<r<N>> c() {
        return new C0243a();
    }

    @Override // com.google.common.graph.h
    public boolean d(N n9, N n10) {
        com.google.common.base.a0.E(n9);
        com.google.common.base.a0.E(n10);
        return m().contains(n9) && b((a<N>) n9).contains(n10);
    }

    @Override // com.google.common.graph.h
    public boolean f(r<N> rVar) {
        com.google.common.base.a0.E(rVar);
        if (N(rVar)) {
            N d4 = rVar.d();
            return m().contains(d4) && b((a<N>) d4).contains(rVar.e());
        }
        return false;
    }

    @Override // com.google.common.graph.h
    public int g(N n9) {
        if (e()) {
            return com.google.common.math.d.t(a((a<N>) n9).size(), b((a<N>) n9).size());
        }
        Set<N> k10 = k(n9);
        return com.google.common.math.d.t(k10.size(), (j() && k10.contains(n9)) ? 1 : 0);
    }

    @Override // com.google.common.graph.h
    public int i(N n9) {
        return e() ? b((a<N>) n9).size() : g(n9);
    }

    @Override // com.google.common.graph.h
    public Set<r<N>> l(N n9) {
        com.google.common.base.a0.E(n9);
        com.google.common.base.a0.u(m().contains(n9), "Node %s is not an element of this graph.", n9);
        return b.a(this, n9);
    }

    @Override // com.google.common.graph.h
    public int n(N n9) {
        return e() ? a((a<N>) n9).size() : g(n9);
    }
}
