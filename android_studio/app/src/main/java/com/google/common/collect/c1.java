package com.google.common.collect;

import com.google.common.base.Optional;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: FluentIterable.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class c1<E> implements Iterable<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Optional<Iterable<E>> f33175a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FluentIterable.java */
    /* loaded from: classes2.dex */
    public static class a extends c1<E> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33176b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f33176b = iterable2;
        }

        @Override // java.lang.Iterable
        public Iterator<E> iterator() {
            return this.f33176b.iterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FluentIterable.java */
    /* loaded from: classes2.dex */
    public static class b extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33177b;

        b(Iterable iterable) {
            this.f33177b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.i(x2.c0(this.f33177b.iterator(), w2.S()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FluentIterable.java */
    /* loaded from: classes2.dex */
    public static class c extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable[] f33178b;

        /* compiled from: FluentIterable.java */
        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.b<Iterator<? extends T>> {
            a(int i4) {
                super(i4);
            }

            @Override // com.google.common.collect.b
            /* renamed from: b */
            public Iterator<? extends T> a(int i4) {
                return c.this.f33178b[i4].iterator();
            }
        }

        c(Iterable[] iterableArr) {
            this.f33178b = iterableArr;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.i(new a(this.f33178b.length));
        }
    }

    /* compiled from: FluentIterable.java */
    /* loaded from: classes2.dex */
    private static class d<E> implements com.google.common.base.q<Iterable<E>, c1<E>> {
        private d() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public c1<E> apply(Iterable<E> iterable) {
            return c1.s(iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c1() {
        this.f33175a = Optional.absent();
    }

    @h3.a
    public static <E> c1<E> C() {
        return s(ImmutableList.of());
    }

    @h3.a
    public static <E> c1<E> D(@NullableDecl E e4, E... eArr) {
        return s(b3.c(e4, eArr));
    }

    @h3.a
    public static <T> c1<T> e(Iterable<? extends Iterable<? extends T>> iterable) {
        com.google.common.base.a0.E(iterable);
        return new b(iterable);
    }

    @h3.a
    public static <T> c1<T> f(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return k(iterable, iterable2);
    }

    @h3.a
    public static <T> c1<T> g(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return k(iterable, iterable2, iterable3);
    }

    @h3.a
    public static <T> c1<T> h(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return k(iterable, iterable2, iterable3, iterable4);
    }

    @h3.a
    public static <T> c1<T> j(Iterable<? extends T>... iterableArr) {
        return k((Iterable[]) Arrays.copyOf(iterableArr, iterableArr.length));
    }

    private static <T> c1<T> k(Iterable<? extends T>... iterableArr) {
        for (Iterable<? extends T> iterable : iterableArr) {
            com.google.common.base.a0.E(iterable);
        }
        return new c(iterableArr);
    }

    @Deprecated
    public static <E> c1<E> r(c1<E> c1Var) {
        return (c1) com.google.common.base.a0.E(c1Var);
    }

    public static <E> c1<E> s(Iterable<E> iterable) {
        return iterable instanceof c1 ? (c1) iterable : new a(iterable, iterable);
    }

    @h3.a
    public static <E> c1<E> t(E[] eArr) {
        return s(Arrays.asList(eArr));
    }

    private Iterable<E> u() {
        return this.f33175a.or((Optional<Iterable<E>>) this);
    }

    public final c1<E> B(int i4) {
        return s(w2.D(u(), i4));
    }

    public final c1<E> E(int i4) {
        return s(w2.N(u(), i4));
    }

    @h3.c
    public final E[] F(Class<E> cls) {
        return (E[]) w2.Q(u(), cls);
    }

    public final ImmutableList<E> G() {
        return ImmutableList.copyOf(u());
    }

    public final <V> ImmutableMap<E, V> H(com.google.common.base.q<? super E, V> qVar) {
        return f3.u0(u(), qVar);
    }

    public final ImmutableMultiset<E> I() {
        return ImmutableMultiset.copyOf(u());
    }

    public final ImmutableSet<E> J() {
        return ImmutableSet.copyOf(u());
    }

    public final ImmutableList<E> K(Comparator<? super E> comparator) {
        return s3.k(comparator).n(u());
    }

    public final ImmutableSortedSet<E> L(Comparator<? super E> comparator) {
        return ImmutableSortedSet.copyOf(comparator, u());
    }

    public final <T> c1<T> M(com.google.common.base.q<? super E, T> qVar) {
        return s(w2.U(u(), qVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> c1<T> N(com.google.common.base.q<? super E, ? extends Iterable<? extends T>> qVar) {
        return e(M(qVar));
    }

    public final <K> ImmutableMap<K, E> O(com.google.common.base.q<? super E, K> qVar) {
        return f3.E0(u(), qVar);
    }

    public final boolean a(com.google.common.base.b0<? super E> b0Var) {
        return w2.b(u(), b0Var);
    }

    public final boolean b(com.google.common.base.b0<? super E> b0Var) {
        return w2.c(u(), b0Var);
    }

    @h3.a
    public final c1<E> c(Iterable<? extends E> iterable) {
        return f(u(), iterable);
    }

    public final boolean contains(@NullableDecl Object obj) {
        return w2.k(u(), obj);
    }

    @h3.a
    public final c1<E> d(E... eArr) {
        return f(u(), Arrays.asList(eArr));
    }

    public final E get(int i4) {
        return (E) w2.t(u(), i4);
    }

    public final boolean isEmpty() {
        return !u().iterator().hasNext();
    }

    @CanIgnoreReturnValue
    public final <C extends Collection<? super E>> C l(C c10) {
        com.google.common.base.a0.E(c10);
        Iterable<E> u9 = u();
        if (u9 instanceof Collection) {
            c10.addAll(z.b(u9));
        } else {
            for (E e4 : u9) {
                c10.add(e4);
            }
        }
        return c10;
    }

    public final c1<E> m() {
        return s(w2.l(u()));
    }

    public final c1<E> n(com.google.common.base.b0<? super E> b0Var) {
        return s(w2.o(u(), b0Var));
    }

    @h3.c
    public final <T> c1<T> o(Class<T> cls) {
        return s(w2.p(u(), cls));
    }

    public final Optional<E> p() {
        Iterator<E> it = u().iterator();
        return it.hasNext() ? Optional.of(it.next()) : Optional.absent();
    }

    public final Optional<E> q(com.google.common.base.b0<? super E> b0Var) {
        return w2.V(u(), b0Var);
    }

    public final int size() {
        return w2.M(u());
    }

    public String toString() {
        return w2.T(u());
    }

    public final <K> ImmutableListMultimap<K, E> v(com.google.common.base.q<? super E, K> qVar) {
        return j3.r(u(), qVar);
    }

    @h3.a
    public final String w(com.google.common.base.u uVar) {
        return uVar.k(this);
    }

    public final Optional<E> z() {
        E next;
        Iterable<E> u9 = u();
        if (u9 instanceof List) {
            List list = (List) u9;
            if (list.isEmpty()) {
                return Optional.absent();
            }
            return Optional.of(list.get(list.size() - 1));
        }
        Iterator<E> it = u9.iterator();
        if (!it.hasNext()) {
            return Optional.absent();
        }
        if (u9 instanceof SortedSet) {
            return Optional.of(((SortedSet) u9).last());
        }
        do {
            next = it.next();
        } while (it.hasNext());
        return Optional.of(next);
    }

    c1(Iterable<E> iterable) {
        com.google.common.base.a0.E(iterable);
        this.f33175a = Optional.fromNullable(this == iterable ? null : iterable);
    }
}
