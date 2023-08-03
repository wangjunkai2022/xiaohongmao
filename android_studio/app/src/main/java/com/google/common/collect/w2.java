package com.google.common.collect;

import com.google.common.base.Optional;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Iterables.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class w2 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    public static class a implements com.google.common.base.q<Iterable<? extends T>, Iterator<? extends T>> {
        a() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public Iterator<? extends T> apply(Iterable<? extends T> iterable) {
            return iterable.iterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    public static class b extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33917b;

        b(Iterable iterable) {
            this.f33917b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.r(this.f33917b);
        }

        @Override // com.google.common.collect.c1
        public String toString() {
            return this.f33917b.toString() + " (cycled)";
        }
    }

    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    static class c extends c1<List<T>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33918b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33919c;

        c(Iterable iterable, int i4) {
            this.f33918b = iterable;
            this.f33919c = i4;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return x2.Q(this.f33918b.iterator(), this.f33919c);
        }
    }

    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    static class d extends c1<List<T>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33920b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33921c;

        d(Iterable iterable, int i4) {
            this.f33920b = iterable;
            this.f33921c = i4;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return x2.P(this.f33920b.iterator(), this.f33921c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    public static class e extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33922b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.b0 f33923c;

        e(Iterable iterable, com.google.common.base.b0 b0Var) {
            this.f33922b = iterable;
            this.f33923c = b0Var;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.x(this.f33922b.iterator(), this.f33923c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    public static class f extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33924b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.q f33925c;

        f(Iterable iterable, com.google.common.base.q qVar) {
            this.f33924b = iterable;
            this.f33925c = qVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.c0(this.f33924b.iterator(), this.f33925c);
        }
    }

    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    static class g extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33926b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33927c;

        /* compiled from: Iterables.java */
        /* loaded from: classes2.dex */
        class a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            boolean f33928a = true;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Iterator f33929b;

            a(Iterator it) {
                this.f33929b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33929b.hasNext();
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
            @Override // java.util.Iterator
            public T next() {
                ?? next = this.f33929b.next();
                this.f33928a = false;
                return next;
            }

            @Override // java.util.Iterator
            public void remove() {
                y.e(!this.f33928a);
                this.f33929b.remove();
            }
        }

        g(Iterable iterable, int i4) {
            this.f33926b = iterable;
            this.f33927c = i4;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f33926b;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f33927c), list.size()).iterator();
            }
            Iterator it = iterable.iterator();
            x2.b(it, this.f33927c);
            return new a(it);
        }
    }

    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    static class h extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33931b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33932c;

        h(Iterable iterable, int i4) {
            this.f33931b = iterable;
            this.f33932c = i4;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.N(this.f33931b.iterator(), this.f33932c);
        }
    }

    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    static class i extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33933b;

        i(Iterable iterable) {
            this.f33933b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f33933b;
            return iterable instanceof Queue ? new i0((Queue) iterable) : x2.p(iterable.iterator());
        }

        @Override // com.google.common.collect.c1
        public String toString() {
            return "Iterables.consumingIterable(...)";
        }
    }

    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    static class j extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f33934b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Comparator f33935c;

        j(Iterable iterable, Comparator comparator) {
            this.f33934b = iterable;
            this.f33935c = comparator;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.O(w2.U(this.f33934b, w2.S()), this.f33935c);
        }
    }

    /* compiled from: Iterables.java */
    /* loaded from: classes2.dex */
    private static final class k<T> extends c1<T> {

        /* renamed from: b  reason: collision with root package name */
        private final Iterable<? extends T> f33936b;

        /* synthetic */ k(Iterable iterable, b bVar) {
            this(iterable);
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.f0(this.f33936b.iterator());
        }

        @Override // com.google.common.collect.c1
        public String toString() {
            return this.f33936b.toString();
        }

        private k(Iterable<? extends T> iterable) {
            this.f33936b = iterable;
        }
    }

    private w2() {
    }

    @NullableDecl
    public static <T> T A(Iterable<? extends T> iterable, @NullableDecl T t9) {
        return (T) x2.L(iterable.iterator(), t9);
    }

    public static <T> int B(Iterable<T> iterable, com.google.common.base.b0<? super T> b0Var) {
        return x2.M(iterable.iterator(), b0Var);
    }

    public static boolean C(Iterable<?> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).isEmpty();
        }
        return !iterable.iterator().hasNext();
    }

    public static <T> Iterable<T> D(Iterable<T> iterable, int i4) {
        com.google.common.base.a0.E(iterable);
        com.google.common.base.a0.e(i4 >= 0, "limit is negative");
        return new h(iterable, i4);
    }

    @h3.a
    public static <T> Iterable<T> E(Iterable<? extends Iterable<? extends T>> iterable, Comparator<? super T> comparator) {
        com.google.common.base.a0.F(iterable, "iterables");
        com.google.common.base.a0.F(comparator, "comparator");
        return new k(new j(iterable, comparator), null);
    }

    public static <T> Iterable<List<T>> F(Iterable<T> iterable, int i4) {
        com.google.common.base.a0.E(iterable);
        com.google.common.base.a0.d(i4 > 0);
        return new d(iterable, i4);
    }

    public static <T> Iterable<List<T>> G(Iterable<T> iterable, int i4) {
        com.google.common.base.a0.E(iterable);
        com.google.common.base.a0.d(i4 > 0);
        return new c(iterable, i4);
    }

    @CanIgnoreReturnValue
    public static boolean H(Iterable<?> iterable, Collection<?> collection) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).removeAll((Collection) com.google.common.base.a0.E(collection));
        }
        return x2.V(iterable.iterator(), collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NullableDecl
    public static <T> T I(Iterable<T> iterable, com.google.common.base.b0<? super T> b0Var) {
        com.google.common.base.a0.E(b0Var);
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            T next = it.next();
            if (b0Var.apply(next)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    @CanIgnoreReturnValue
    public static <T> boolean J(Iterable<T> iterable, com.google.common.base.b0<? super T> b0Var) {
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            return K((List) iterable, (com.google.common.base.b0) com.google.common.base.a0.E(b0Var));
        }
        return x2.W(iterable.iterator(), b0Var);
    }

    private static <T> boolean K(List<T> list, com.google.common.base.b0<? super T> b0Var) {
        int i4 = 0;
        int i10 = 0;
        while (i4 < list.size()) {
            T t9 = list.get(i4);
            if (!b0Var.apply(t9)) {
                if (i4 > i10) {
                    try {
                        list.set(i10, t9);
                    } catch (IllegalArgumentException unused) {
                        O(list, b0Var, i10, i4);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        O(list, b0Var, i10, i4);
                        return true;
                    }
                }
                i10++;
            }
            i4++;
        }
        list.subList(i10, list.size()).clear();
        return i4 != i10;
    }

    @CanIgnoreReturnValue
    public static boolean L(Iterable<?> iterable, Collection<?> collection) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).retainAll((Collection) com.google.common.base.a0.E(collection));
        }
        return x2.X(iterable.iterator(), collection);
    }

    public static int M(Iterable<?> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return x2.Z(iterable.iterator());
    }

    public static <T> Iterable<T> N(Iterable<T> iterable, int i4) {
        com.google.common.base.a0.E(iterable);
        com.google.common.base.a0.e(i4 >= 0, "number to skip cannot be negative");
        return new g(iterable, i4);
    }

    private static <T> void O(List<T> list, com.google.common.base.b0<? super T> b0Var, int i4, int i10) {
        for (int size = list.size() - 1; size > i10; size--) {
            if (b0Var.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            list.remove(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] P(Iterable<?> iterable) {
        return d(iterable).toArray();
    }

    @h3.c
    public static <T> T[] Q(Iterable<? extends T> iterable, Class<T> cls) {
        return (T[]) R(iterable, p3.i(cls, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] R(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) d(iterable).toArray(tArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> com.google.common.base.q<Iterable<? extends T>, Iterator<? extends T>> S() {
        return new a();
    }

    public static String T(Iterable<?> iterable) {
        return x2.b0(iterable.iterator());
    }

    public static <F, T> Iterable<T> U(Iterable<F> iterable, com.google.common.base.q<? super F, ? extends T> qVar) {
        com.google.common.base.a0.E(iterable);
        com.google.common.base.a0.E(qVar);
        return new f(iterable, qVar);
    }

    public static <T> Optional<T> V(Iterable<T> iterable, com.google.common.base.b0<? super T> b0Var) {
        return x2.d0(iterable.iterator(), b0Var);
    }

    @Deprecated
    public static <E> Iterable<E> W(ImmutableCollection<E> immutableCollection) {
        return (Iterable) com.google.common.base.a0.E(immutableCollection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Iterable<T> X(Iterable<? extends T> iterable) {
        com.google.common.base.a0.E(iterable);
        return ((iterable instanceof k) || (iterable instanceof ImmutableCollection)) ? iterable : new k(iterable, null);
    }

    @CanIgnoreReturnValue
    public static <T> boolean a(Collection<T> collection, Iterable<? extends T> iterable) {
        if (iterable instanceof Collection) {
            return collection.addAll(z.b(iterable));
        }
        return x2.a(collection, ((Iterable) com.google.common.base.a0.E(iterable)).iterator());
    }

    public static <T> boolean b(Iterable<T> iterable, com.google.common.base.b0<? super T> b0Var) {
        return x2.c(iterable.iterator(), b0Var);
    }

    public static <T> boolean c(Iterable<T> iterable, com.google.common.base.b0<? super T> b0Var) {
        return x2.d(iterable.iterator(), b0Var);
    }

    private static <E> Collection<E> d(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : b3.s(iterable.iterator());
    }

    public static <T> Iterable<T> e(Iterable<? extends Iterable<? extends T>> iterable) {
        return c1.e(iterable);
    }

    public static <T> Iterable<T> f(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return c1.f(iterable, iterable2);
    }

    public static <T> Iterable<T> g(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return c1.g(iterable, iterable2, iterable3);
    }

    public static <T> Iterable<T> h(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return c1.h(iterable, iterable2, iterable3, iterable4);
    }

    @SafeVarargs
    public static <T> Iterable<T> i(Iterable<? extends T>... iterableArr) {
        return c1.j(iterableArr);
    }

    public static <T> Iterable<T> j(Iterable<T> iterable) {
        com.google.common.base.a0.E(iterable);
        return new i(iterable);
    }

    public static boolean k(Iterable<?> iterable, @NullableDecl Object obj) {
        if (iterable instanceof Collection) {
            return z.k((Collection) iterable, obj);
        }
        return x2.q(iterable.iterator(), obj);
    }

    public static <T> Iterable<T> l(Iterable<T> iterable) {
        com.google.common.base.a0.E(iterable);
        return new b(iterable);
    }

    @SafeVarargs
    public static <T> Iterable<T> m(T... tArr) {
        return l(b3.t(tArr));
    }

    public static boolean n(Iterable<?> iterable, Iterable<?> iterable2) {
        if ((iterable instanceof Collection) && (iterable2 instanceof Collection) && ((Collection) iterable).size() != ((Collection) iterable2).size()) {
            return false;
        }
        return x2.t(iterable.iterator(), iterable2.iterator());
    }

    public static <T> Iterable<T> o(Iterable<T> iterable, com.google.common.base.b0<? super T> b0Var) {
        com.google.common.base.a0.E(iterable);
        com.google.common.base.a0.E(b0Var);
        return new e(iterable, b0Var);
    }

    @h3.c
    public static <T> Iterable<T> p(Iterable<?> iterable, Class<T> cls) {
        com.google.common.base.a0.E(iterable);
        com.google.common.base.a0.E(cls);
        return o(iterable, com.google.common.base.c0.o(cls));
    }

    public static <T> T q(Iterable<T> iterable, com.google.common.base.b0<? super T> b0Var) {
        return (T) x2.z(iterable.iterator(), b0Var);
    }

    @NullableDecl
    public static <T> T r(Iterable<? extends T> iterable, com.google.common.base.b0<? super T> b0Var, @NullableDecl T t9) {
        return (T) x2.A(iterable.iterator(), b0Var, t9);
    }

    public static int s(Iterable<?> iterable, @NullableDecl Object obj) {
        if (iterable instanceof k3) {
            return ((k3) iterable).count(obj);
        }
        if (iterable instanceof Set) {
            return ((Set) iterable).contains(obj) ? 1 : 0;
        }
        return x2.E(iterable.iterator(), obj);
    }

    public static <T> T t(Iterable<T> iterable, int i4) {
        com.google.common.base.a0.E(iterable);
        if (iterable instanceof List) {
            return (T) ((List) iterable).get(i4);
        }
        return (T) x2.F(iterable.iterator(), i4);
    }

    @NullableDecl
    public static <T> T u(Iterable<? extends T> iterable, int i4, @NullableDecl T t9) {
        com.google.common.base.a0.E(iterable);
        x2.g(i4);
        if (iterable instanceof List) {
            List f10 = b3.f(iterable);
            return i4 < f10.size() ? (T) f10.get(i4) : t9;
        }
        Iterator<? extends T> it = iterable.iterator();
        x2.b(it, i4);
        return (T) x2.J(it, t9);
    }

    @NullableDecl
    public static <T> T v(Iterable<? extends T> iterable, @NullableDecl T t9) {
        return (T) x2.J(iterable.iterator(), t9);
    }

    public static <T> T w(Iterable<T> iterable) {
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (!list.isEmpty()) {
                return (T) y(list);
            }
            throw new NoSuchElementException();
        }
        return (T) x2.H(iterable.iterator());
    }

    @NullableDecl
    public static <T> T x(Iterable<? extends T> iterable, @NullableDecl T t9) {
        if (iterable instanceof Collection) {
            if (z.b(iterable).isEmpty()) {
                return t9;
            }
            if (iterable instanceof List) {
                return (T) y(b3.f(iterable));
            }
        }
        return (T) x2.I(iterable.iterator(), t9);
    }

    private static <T> T y(List<T> list) {
        return list.get(list.size() - 1);
    }

    public static <T> T z(Iterable<T> iterable) {
        return (T) x2.K(iterable.iterator());
    }
}
