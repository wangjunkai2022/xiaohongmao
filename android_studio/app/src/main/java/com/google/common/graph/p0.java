package com.google.common.graph;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.k5;
import com.google.common.collect.w2;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Traverser.java */
@h3.a
/* loaded from: classes2.dex */
public abstract class p0<N> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Traverser.java */
    /* loaded from: classes2.dex */
    public static final class b<N> extends p0<N> {

        /* renamed from: a  reason: collision with root package name */
        private final o0<N> f34158a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        public class a implements Iterable<N> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterable f34159a;

            a(Iterable iterable) {
                this.f34159a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new d(this.f34159a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Traverser.java */
        /* renamed from: com.google.common.graph.p0$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0253b implements Iterable<N> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterable f34161a;

            C0253b(Iterable iterable) {
                this.f34161a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new e(this.f34161a, c.PREORDER);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        public class c implements Iterable<N> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterable f34163a;

            c(Iterable iterable) {
                this.f34163a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new e(this.f34163a, c.POSTORDER);
            }
        }

        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        private final class d extends k5<N> {

            /* renamed from: a  reason: collision with root package name */
            private final Queue<N> f34165a = new ArrayDeque();

            /* renamed from: b  reason: collision with root package name */
            private final Set<N> f34166b = new HashSet();

            d(Iterable<? extends N> iterable) {
                for (N n9 : iterable) {
                    if (this.f34166b.add(n9)) {
                        this.f34165a.add(n9);
                    }
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f34165a.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                N remove = this.f34165a.remove();
                for (N n9 : b.this.f34158a.b(remove)) {
                    if (this.f34166b.add(n9)) {
                        this.f34165a.add(n9);
                    }
                }
                return remove;
            }
        }

        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        private final class e extends com.google.common.collect.c<N> {

            /* renamed from: c  reason: collision with root package name */
            private final Deque<b<N>.e.a> f34168c;

            /* renamed from: d  reason: collision with root package name */
            private final Set<N> f34169d;

            /* renamed from: e  reason: collision with root package name */
            private final c f34170e;

            /* JADX INFO: Access modifiers changed from: private */
            /* compiled from: Traverser.java */
            /* loaded from: classes2.dex */
            public final class a {
                @NullableDecl

                /* renamed from: a  reason: collision with root package name */
                final N f34172a;

                /* renamed from: b  reason: collision with root package name */
                final Iterator<? extends N> f34173b;

                a(@NullableDecl N n9, Iterable<? extends N> iterable) {
                    this.f34172a = n9;
                    this.f34173b = iterable.iterator();
                }
            }

            e(Iterable<? extends N> iterable, c cVar) {
                ArrayDeque arrayDeque = new ArrayDeque();
                this.f34168c = arrayDeque;
                this.f34169d = new HashSet();
                arrayDeque.push(new a(null, iterable));
                this.f34170e = cVar;
            }

            @Override // com.google.common.collect.c
            protected N a() {
                N n9;
                while (!this.f34168c.isEmpty()) {
                    b<N>.e.a first = this.f34168c.getFirst();
                    boolean add = this.f34169d.add(first.f34172a);
                    boolean z9 = true;
                    boolean z10 = !first.f34173b.hasNext();
                    if ((!add || this.f34170e != c.PREORDER) && (!z10 || this.f34170e != c.POSTORDER)) {
                        z9 = false;
                    }
                    if (z10) {
                        this.f34168c.pop();
                    } else {
                        N next = first.f34173b.next();
                        if (!this.f34169d.contains(next)) {
                            this.f34168c.push(d(next));
                        }
                    }
                    if (z9 && (n9 = first.f34172a) != null) {
                        return n9;
                    }
                }
                return (N) b();
            }

            b<N>.e.a d(N n9) {
                return new a(n9, b.this.f34158a.b(n9));
            }
        }

        b(o0<N> o0Var) {
            super();
            this.f34158a = (o0) com.google.common.base.a0.E(o0Var);
        }

        private void j(N n9) {
            this.f34158a.b(n9);
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> a(Iterable<? extends N> iterable) {
            com.google.common.base.a0.E(iterable);
            if (w2.C(iterable)) {
                return ImmutableSet.of();
            }
            for (N n9 : iterable) {
                j(n9);
            }
            return new a(iterable);
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> b(N n9) {
            com.google.common.base.a0.E(n9);
            return a(ImmutableSet.of(n9));
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> c(Iterable<? extends N> iterable) {
            com.google.common.base.a0.E(iterable);
            if (w2.C(iterable)) {
                return ImmutableSet.of();
            }
            for (N n9 : iterable) {
                j(n9);
            }
            return new c(iterable);
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> d(N n9) {
            com.google.common.base.a0.E(n9);
            return c(ImmutableSet.of(n9));
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> e(Iterable<? extends N> iterable) {
            com.google.common.base.a0.E(iterable);
            if (w2.C(iterable)) {
                return ImmutableSet.of();
            }
            for (N n9 : iterable) {
                j(n9);
            }
            return new C0253b(iterable);
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> f(N n9) {
            com.google.common.base.a0.E(n9);
            return e(ImmutableSet.of(n9));
        }
    }

    /* compiled from: Traverser.java */
    /* loaded from: classes2.dex */
    private enum c {
        PREORDER,
        POSTORDER
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Traverser.java */
    /* loaded from: classes2.dex */
    public static final class d<N> extends p0<N> {

        /* renamed from: a  reason: collision with root package name */
        private final o0<N> f34178a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        public class a implements Iterable<N> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterable f34179a;

            a(Iterable iterable) {
                this.f34179a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new C0254d(this.f34179a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        public class b implements Iterable<N> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterable f34181a;

            b(Iterable iterable) {
                this.f34181a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new f(this.f34181a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        public class c implements Iterable<N> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterable f34183a;

            c(Iterable iterable) {
                this.f34183a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new e(this.f34183a);
            }
        }

        /* compiled from: Traverser.java */
        /* renamed from: com.google.common.graph.p0$d$d  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private final class C0254d extends k5<N> {

            /* renamed from: a  reason: collision with root package name */
            private final Queue<N> f34185a = new ArrayDeque();

            C0254d(Iterable<? extends N> iterable) {
                for (N n9 : iterable) {
                    this.f34185a.add(n9);
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f34185a.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                N remove = this.f34185a.remove();
                w2.a(this.f34185a, d.this.f34178a.b(remove));
                return remove;
            }
        }

        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        private final class e extends com.google.common.collect.c<N> {

            /* renamed from: c  reason: collision with root package name */
            private final ArrayDeque<d<N>.e.a> f34187c;

            /* JADX INFO: Access modifiers changed from: private */
            /* compiled from: Traverser.java */
            /* loaded from: classes2.dex */
            public final class a {
                @NullableDecl

                /* renamed from: a  reason: collision with root package name */
                final N f34189a;

                /* renamed from: b  reason: collision with root package name */
                final Iterator<? extends N> f34190b;

                a(@NullableDecl N n9, Iterable<? extends N> iterable) {
                    this.f34189a = n9;
                    this.f34190b = iterable.iterator();
                }
            }

            e(Iterable<? extends N> iterable) {
                ArrayDeque<d<N>.e.a> arrayDeque = new ArrayDeque<>();
                this.f34187c = arrayDeque;
                arrayDeque.addLast(new a(null, iterable));
            }

            @Override // com.google.common.collect.c
            protected N a() {
                while (!this.f34187c.isEmpty()) {
                    d<N>.e.a last = this.f34187c.getLast();
                    if (last.f34190b.hasNext()) {
                        this.f34187c.addLast(d(last.f34190b.next()));
                    } else {
                        this.f34187c.removeLast();
                        N n9 = last.f34189a;
                        if (n9 != null) {
                            return n9;
                        }
                    }
                }
                return (N) b();
            }

            d<N>.e.a d(N n9) {
                return new a(n9, d.this.f34178a.b(n9));
            }
        }

        /* compiled from: Traverser.java */
        /* loaded from: classes2.dex */
        private final class f extends k5<N> {

            /* renamed from: a  reason: collision with root package name */
            private final Deque<Iterator<? extends N>> f34192a;

            f(Iterable<? extends N> iterable) {
                ArrayDeque arrayDeque = new ArrayDeque();
                this.f34192a = arrayDeque;
                arrayDeque.addLast(iterable.iterator());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f34192a.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                Iterator<? extends N> last = this.f34192a.getLast();
                N n9 = (N) com.google.common.base.a0.E(last.next());
                if (!last.hasNext()) {
                    this.f34192a.removeLast();
                }
                Iterator<? extends N> it = d.this.f34178a.b(n9).iterator();
                if (it.hasNext()) {
                    this.f34192a.addLast(it);
                }
                return n9;
            }
        }

        d(o0<N> o0Var) {
            super();
            this.f34178a = (o0) com.google.common.base.a0.E(o0Var);
        }

        private void j(N n9) {
            this.f34178a.b(n9);
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> a(Iterable<? extends N> iterable) {
            com.google.common.base.a0.E(iterable);
            if (w2.C(iterable)) {
                return ImmutableSet.of();
            }
            for (N n9 : iterable) {
                j(n9);
            }
            return new a(iterable);
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> b(N n9) {
            com.google.common.base.a0.E(n9);
            return a(ImmutableSet.of(n9));
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> c(Iterable<? extends N> iterable) {
            com.google.common.base.a0.E(iterable);
            if (w2.C(iterable)) {
                return ImmutableSet.of();
            }
            for (N n9 : iterable) {
                j(n9);
            }
            return new c(iterable);
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> d(N n9) {
            com.google.common.base.a0.E(n9);
            return c(ImmutableSet.of(n9));
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> e(Iterable<? extends N> iterable) {
            com.google.common.base.a0.E(iterable);
            if (w2.C(iterable)) {
                return ImmutableSet.of();
            }
            for (N n9 : iterable) {
                j(n9);
            }
            return new b(iterable);
        }

        @Override // com.google.common.graph.p0
        public Iterable<N> f(N n9) {
            com.google.common.base.a0.E(n9);
            return e(ImmutableSet.of(n9));
        }
    }

    public static <N> p0<N> g(o0<N> o0Var) {
        com.google.common.base.a0.E(o0Var);
        return new b(o0Var);
    }

    public static <N> p0<N> h(o0<N> o0Var) {
        com.google.common.base.a0.E(o0Var);
        if (o0Var instanceof h) {
            com.google.common.base.a0.e(((h) o0Var).e(), "Undirected graphs can never be trees.");
        }
        if (o0Var instanceof k0) {
            com.google.common.base.a0.e(((k0) o0Var).e(), "Undirected networks can never be trees.");
        }
        return new d(o0Var);
    }

    public abstract Iterable<N> a(Iterable<? extends N> iterable);

    public abstract Iterable<N> b(N n9);

    public abstract Iterable<N> c(Iterable<? extends N> iterable);

    public abstract Iterable<N> d(N n9);

    public abstract Iterable<N> e(Iterable<? extends N> iterable);

    public abstract Iterable<N> f(N n9);

    private p0() {
    }
}
