package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Ordering.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class s3<T> implements Comparator<T> {

    /* renamed from: a  reason: collision with root package name */
    static final int f33866a = 1;

    /* renamed from: b  reason: collision with root package name */
    static final int f33867b = -1;

    /* compiled from: Ordering.java */
    @h3.d
    /* loaded from: classes2.dex */
    static class a extends s3<Object> {

        /* renamed from: c  reason: collision with root package name */
        private final AtomicInteger f33868c = new AtomicInteger(0);

        /* renamed from: d  reason: collision with root package name */
        private final ConcurrentMap<Object, Integer> f33869d = u3.k(new d3()).i();

        a() {
        }

        private Integer J(Object obj) {
            Integer num = this.f33869d.get(obj);
            if (num == null) {
                Integer valueOf = Integer.valueOf(this.f33868c.getAndIncrement());
                Integer putIfAbsent = this.f33869d.putIfAbsent(obj, valueOf);
                return putIfAbsent != null ? putIfAbsent : valueOf;
            }
            return num;
        }

        int K(Object obj) {
            return System.identityHashCode(obj);
        }

        @Override // com.google.common.collect.s3, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int K = K(obj);
            int K2 = K(obj2);
            if (K != K2) {
                return K < K2 ? -1 : 1;
            }
            int compareTo = J(obj).compareTo(J(obj2));
            if (compareTo != 0) {
                return compareTo;
            }
            throw new AssertionError();
        }

        public String toString() {
            return "Ordering.arbitrary()";
        }
    }

    /* compiled from: Ordering.java */
    /* loaded from: classes2.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        static final s3<Object> f33870a = new a();

        private b() {
        }
    }

    /* compiled from: Ordering.java */
    @h3.d
    /* loaded from: classes2.dex */
    static class c extends ClassCastException {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33871b = 0;

        /* renamed from: a  reason: collision with root package name */
        final Object f33872a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Object obj) {
            super("Cannot compare value: " + obj);
            this.f33872a = obj;
        }
    }

    @h3.b(serializable = true)
    public static <C extends Comparable> s3<C> B() {
        return m3.f33741e;
    }

    @h3.b(serializable = true)
    public static s3<Object> I() {
        return n5.f33754c;
    }

    @h3.b(serializable = true)
    public static s3<Object> a() {
        return r.f33855c;
    }

    public static s3<Object> b() {
        return b.f33870a;
    }

    @h3.b(serializable = true)
    public static <T> s3<T> d(Iterable<? extends Comparator<? super T>> iterable) {
        return new h0(iterable);
    }

    @h3.b(serializable = true)
    public static <T> s3<T> h(T t9, T... tArr) {
        return i(b3.c(t9, tArr));
    }

    @h3.b(serializable = true)
    public static <T> s3<T> i(List<T> list) {
        return new t0(list);
    }

    @h3.b(serializable = true)
    @Deprecated
    public static <T> s3<T> j(s3<T> s3Var) {
        return (s3) com.google.common.base.a0.E(s3Var);
    }

    @h3.b(serializable = true)
    public static <T> s3<T> k(Comparator<T> comparator) {
        return comparator instanceof s3 ? (s3) comparator : new e0(comparator);
    }

    public <E extends T> E A(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) y(next, it.next());
        }
        return next;
    }

    @h3.b(serializable = true)
    public <S extends T> s3<S> C() {
        return new n3(this);
    }

    @h3.b(serializable = true)
    public <S extends T> s3<S> D() {
        return new o3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T2 extends T> s3<Map.Entry<T2, ?>> E() {
        return (s3<Map.Entry<T2, ?>>) F(f3.R());
    }

    @h3.b(serializable = true)
    public <F> s3<F> F(com.google.common.base.q<F, ? extends T> qVar) {
        return new v(qVar, this);
    }

    @h3.b(serializable = true)
    public <S extends T> s3<S> G() {
        return new k4(this);
    }

    public <E extends T> List<E> H(Iterable<E> iterable) {
        Object[] P = w2.P(iterable);
        Arrays.sort(P, this);
        return b3.r(Arrays.asList(P));
    }

    @Deprecated
    public int c(List<? extends T> list, @NullableDecl T t9) {
        return Collections.binarySearch(list, t9, this);
    }

    @Override // java.util.Comparator
    @CanIgnoreReturnValue
    public abstract int compare(@NullableDecl T t9, @NullableDecl T t10);

    @h3.b(serializable = true)
    public <U extends T> s3<U> e(Comparator<? super U> comparator) {
        return new h0(this, (Comparator) com.google.common.base.a0.E(comparator));
    }

    public <E extends T> List<E> l(Iterable<E> iterable, int i4) {
        return G().q(iterable, i4);
    }

    public <E extends T> List<E> m(Iterator<E> it, int i4) {
        return G().r(it, i4);
    }

    public <E extends T> ImmutableList<E> n(Iterable<E> iterable) {
        return ImmutableList.sortedCopyOf(this, iterable);
    }

    public boolean o(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (compare(next, next2) > 0) {
                    return false;
                }
                next = next2;
            }
            return true;
        }
        return true;
    }

    public boolean p(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (compare(next, next2) >= 0) {
                    return false;
                }
                next = next2;
            }
            return true;
        }
        return true;
    }

    public <E extends T> List<E> q(Iterable<E> iterable, int i4) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= i4 * 2) {
                Object[] array = collection.toArray();
                Arrays.sort(array, this);
                if (array.length > i4) {
                    array = Arrays.copyOf(array, i4);
                }
                return Collections.unmodifiableList(Arrays.asList(array));
            }
        }
        return r(iterable.iterator(), i4);
    }

    public <E extends T> List<E> r(Iterator<E> it, int i4) {
        com.google.common.base.a0.E(it);
        y.b(i4, "k");
        if (i4 == 0 || !it.hasNext()) {
            return Collections.emptyList();
        }
        if (i4 >= 1073741823) {
            ArrayList s9 = b3.s(it);
            Collections.sort(s9, this);
            if (s9.size() > i4) {
                s9.subList(i4, s9.size()).clear();
            }
            s9.trimToSize();
            return Collections.unmodifiableList(s9);
        }
        f5 d4 = f5.d(i4, this);
        d4.g(it);
        return d4.j();
    }

    @h3.b(serializable = true)
    public <S extends T> s3<Iterable<S>> s() {
        return new y2(this);
    }

    public <E extends T> E t(Iterable<E> iterable) {
        return (E) w(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E u(@NullableDecl E e4, @NullableDecl E e10) {
        return compare(e4, e10) >= 0 ? e4 : e10;
    }

    public <E extends T> E v(@NullableDecl E e4, @NullableDecl E e10, @NullableDecl E e11, E... eArr) {
        E e12 = (E) u(u(e4, e10), e11);
        for (E e13 : eArr) {
            e12 = (E) u(e12, e13);
        }
        return e12;
    }

    public <E extends T> E w(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) u(next, it.next());
        }
        return next;
    }

    public <E extends T> E x(Iterable<E> iterable) {
        return (E) A(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E y(@NullableDecl E e4, @NullableDecl E e10) {
        return compare(e4, e10) <= 0 ? e4 : e10;
    }

    public <E extends T> E z(@NullableDecl E e4, @NullableDecl E e10, @NullableDecl E e11, E... eArr) {
        E e12 = (E) y(y(e4, e10), e11);
        for (E e13 : eArr) {
            e12 = (E) y(e12, e13);
        }
        return e12;
    }
}
