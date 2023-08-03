package com.google.common.collect;

import com.ksyun.media.player.KSYMediaMeta;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Collections2.java */
@h3.b
/* loaded from: classes2.dex */
public final class z {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Collections2.java */
    /* loaded from: classes2.dex */
    public static class a<E> extends AbstractCollection<E> {

        /* renamed from: a  reason: collision with root package name */
        final Collection<E> f33980a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.base.b0<? super E> f33981b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Collection<E> collection, com.google.common.base.b0<? super E> b0Var) {
            this.f33980a = collection;
            this.f33981b = b0Var;
        }

        a<E> a(com.google.common.base.b0<? super E> b0Var) {
            return new a<>(this.f33980a, com.google.common.base.c0.d(this.f33981b, b0Var));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(E e4) {
            com.google.common.base.a0.d(this.f33981b.apply(e4));
            return this.f33980a.add(e4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            for (E e4 : collection) {
                com.google.common.base.a0.d(this.f33981b.apply(e4));
            }
            return this.f33980a.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            w2.J(this.f33980a, this.f33981b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (z.k(this.f33980a, obj)) {
                return this.f33981b.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return z.c(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !w2.c(this.f33980a, this.f33981b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return x2.x(this.f33980a.iterator(), this.f33981b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            return contains(obj) && this.f33980a.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<E> it = this.f33980a.iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f33981b.apply(next) && collection.contains(next)) {
                    it.remove();
                    z9 = true;
                }
            }
            return z9;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = this.f33980a.iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f33981b.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z9 = true;
                }
            }
            return z9;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i4 = 0;
            for (E e4 : this.f33980a) {
                if (this.f33981b.apply(e4)) {
                    i4++;
                }
            }
            return i4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return b3.s(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) b3.s(iterator()).toArray(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Collections2.java */
    /* loaded from: classes2.dex */
    public static final class b<E> extends AbstractCollection<List<E>> {

        /* renamed from: a  reason: collision with root package name */
        final ImmutableList<E> f33982a;

        /* renamed from: b  reason: collision with root package name */
        final Comparator<? super E> f33983b;

        /* renamed from: c  reason: collision with root package name */
        final int f33984c;

        b(Iterable<E> iterable, Comparator<? super E> comparator) {
            ImmutableList<E> sortedCopyOf = ImmutableList.sortedCopyOf(comparator, iterable);
            this.f33982a = sortedCopyOf;
            this.f33983b = comparator;
            this.f33984c = a(sortedCopyOf, comparator);
        }

        private static <E> int a(List<E> list, Comparator<? super E> comparator) {
            int i4 = 1;
            int i10 = 1;
            int i11 = 1;
            while (i4 < list.size()) {
                if (comparator.compare(list.get(i4 - 1), list.get(i4)) < 0) {
                    i10 = com.google.common.math.d.u(i10, com.google.common.math.d.a(i4, i11));
                    i11 = 0;
                    if (i10 == Integer.MAX_VALUE) {
                        return Integer.MAX_VALUE;
                    }
                }
                i4++;
                i11++;
            }
            return com.google.common.math.d.u(i10, com.google.common.math.d.a(i4, i11));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof List) {
                return z.f(this.f33982a, (List) obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new c(this.f33982a, this.f33983b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f33984c;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "orderedPermutationCollection(" + this.f33982a + ")";
        }
    }

    /* compiled from: Collections2.java */
    /* loaded from: classes2.dex */
    private static final class c<E> extends com.google.common.collect.c<List<E>> {
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        List<E> f33985c;

        /* renamed from: d  reason: collision with root package name */
        final Comparator<? super E> f33986d;

        c(List<E> list, Comparator<? super E> comparator) {
            this.f33985c = b3.r(list);
            this.f33986d = comparator;
        }

        void d() {
            int f10 = f();
            if (f10 == -1) {
                this.f33985c = null;
                return;
            }
            Collections.swap(this.f33985c, f10, g(f10));
            Collections.reverse(this.f33985c.subList(f10 + 1, this.f33985c.size()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.c
        /* renamed from: e */
        public List<E> a() {
            List<E> list = this.f33985c;
            if (list == null) {
                return b();
            }
            ImmutableList copyOf = ImmutableList.copyOf((Collection) list);
            d();
            return copyOf;
        }

        int f() {
            for (int size = this.f33985c.size() - 2; size >= 0; size--) {
                if (this.f33986d.compare((E) this.f33985c.get(size), (E) this.f33985c.get(size + 1)) < 0) {
                    return size;
                }
            }
            return -1;
        }

        int g(int i4) {
            E e4 = this.f33985c.get(i4);
            for (int size = this.f33985c.size() - 1; size > i4; size--) {
                if (this.f33986d.compare(e4, (E) this.f33985c.get(size)) < 0) {
                    return size;
                }
            }
            throw new AssertionError("this statement should be unreachable");
        }
    }

    /* compiled from: Collections2.java */
    /* loaded from: classes2.dex */
    private static final class d<E> extends AbstractCollection<List<E>> {

        /* renamed from: a  reason: collision with root package name */
        final ImmutableList<E> f33987a;

        d(ImmutableList<E> immutableList) {
            this.f33987a = immutableList;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof List) {
                return z.f(this.f33987a, (List) obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new e(this.f33987a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return com.google.common.math.d.h(this.f33987a.size());
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "permutations(" + this.f33987a + ")";
        }
    }

    /* compiled from: Collections2.java */
    /* loaded from: classes2.dex */
    private static class e<E> extends com.google.common.collect.c<List<E>> {

        /* renamed from: c  reason: collision with root package name */
        final List<E> f33988c;

        /* renamed from: d  reason: collision with root package name */
        final int[] f33989d;

        /* renamed from: e  reason: collision with root package name */
        final int[] f33990e;

        /* renamed from: f  reason: collision with root package name */
        int f33991f;

        e(List<E> list) {
            this.f33988c = new ArrayList(list);
            int size = list.size();
            int[] iArr = new int[size];
            this.f33989d = iArr;
            int[] iArr2 = new int[size];
            this.f33990e = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 1);
            this.f33991f = Integer.MAX_VALUE;
        }

        void d() {
            int size = this.f33988c.size() - 1;
            this.f33991f = size;
            if (size == -1) {
                return;
            }
            int i4 = 0;
            while (true) {
                int[] iArr = this.f33989d;
                int i10 = this.f33991f;
                int i11 = iArr[i10] + this.f33990e[i10];
                if (i11 < 0) {
                    f();
                } else if (i11 != i10 + 1) {
                    Collections.swap(this.f33988c, (i10 - iArr[i10]) + i4, (i10 - i11) + i4);
                    this.f33989d[this.f33991f] = i11;
                    return;
                } else if (i10 == 0) {
                    return;
                } else {
                    i4++;
                    f();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.c
        /* renamed from: e */
        public List<E> a() {
            if (this.f33991f <= 0) {
                return b();
            }
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f33988c);
            d();
            return copyOf;
        }

        void f() {
            int[] iArr = this.f33990e;
            int i4 = this.f33991f;
            iArr[i4] = -iArr[i4];
            this.f33991f = i4 - 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Collections2.java */
    /* loaded from: classes2.dex */
    public static class f<F, T> extends AbstractCollection<T> {

        /* renamed from: a  reason: collision with root package name */
        final Collection<F> f33992a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.base.q<? super F, ? extends T> f33993b;

        f(Collection<F> collection, com.google.common.base.q<? super F, ? extends T> qVar) {
            this.f33992a = (Collection) com.google.common.base.a0.E(collection);
            this.f33993b = (com.google.common.base.q) com.google.common.base.a0.E(qVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f33992a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f33992a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<T> iterator() {
            return x2.c0(this.f33992a.iterator(), this.f33993b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f33992a.size();
        }
    }

    private z() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Collection<T> b(Iterable<T> iterable) {
        return (Collection) iterable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    private static <E> q3<E> d(Collection<E> collection) {
        q3<E> q3Var = new q3<>();
        for (E e4 : collection) {
            q3Var.v(e4, q3Var.g(e4) + 1);
        }
        return q3Var;
    }

    public static <E> Collection<E> e(Collection<E> collection, com.google.common.base.b0<? super E> b0Var) {
        if (collection instanceof a) {
            return ((a) collection).a(b0Var);
        }
        return new a((Collection) com.google.common.base.a0.E(collection), (com.google.common.base.b0) com.google.common.base.a0.E(b0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f(List<?> list, List<?> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        q3 d4 = d(list);
        q3 d10 = d(list2);
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            if (d4.l(i4) != d10.g(d4.j(i4))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder g(int i4) {
        y.b(i4, com.qennnsad.aknkaksd.data.repository.f.f47745b);
        return new StringBuilder((int) Math.min(i4 * 8, (long) KSYMediaMeta.AV_CH_STEREO_RIGHT));
    }

    @h3.a
    public static <E extends Comparable<? super E>> Collection<List<E>> h(Iterable<E> iterable) {
        return i(iterable, s3.B());
    }

    @h3.a
    public static <E> Collection<List<E>> i(Iterable<E> iterable, Comparator<? super E> comparator) {
        return new b(iterable, comparator);
    }

    @h3.a
    public static <E> Collection<List<E>> j(Collection<E> collection) {
        return new d(ImmutableList.copyOf((Collection) collection));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean k(Collection<?> collection, @NullableDecl Object obj) {
        com.google.common.base.a0.E(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l(Collection<?> collection, @NullableDecl Object obj) {
        com.google.common.base.a0.E(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m(Collection<?> collection) {
        StringBuilder g4 = g(collection.size());
        g4.append('[');
        boolean z9 = true;
        for (Object obj : collection) {
            if (!z9) {
                g4.append(", ");
            }
            z9 = false;
            if (obj == collection) {
                g4.append("(this Collection)");
            } else {
                g4.append(obj);
            }
        }
        g4.append(']');
        return g4.toString();
    }

    public static <F, T> Collection<T> n(Collection<F> collection, com.google.common.base.q<? super F, T> qVar) {
        return new f(collection, qVar);
    }
}
