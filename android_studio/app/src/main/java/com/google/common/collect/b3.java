package com.google.common.collect;

import java.io.Serializable;
import java.math.RoundingMode;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.concurrent.CopyOnWriteArrayList;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Lists.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class b3 {

    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    static class a extends g<E> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33091b = 0;

        a(List list) {
            super(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int i4) {
            return this.f33093a.listIterator(i4);
        }
    }

    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    static class b extends c<E> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33092b = 0;

        b(List list) {
            super(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int i4) {
            return this.f33093a.listIterator(i4);
        }
    }

    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    private static class c<E> extends AbstractList<E> {

        /* renamed from: a  reason: collision with root package name */
        final List<E> f33093a;

        c(List<E> list) {
            this.f33093a = (List) com.google.common.base.a0.E(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i4, E e4) {
            this.f33093a.add(i4, e4);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i4, Collection<? extends E> collection) {
            return this.f33093a.addAll(i4, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.f33093a.contains(obj);
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i4) {
            return this.f33093a.get(i4);
        }

        @Override // java.util.AbstractList, java.util.List
        public E remove(int i4) {
            return this.f33093a.remove(i4);
        }

        @Override // java.util.AbstractList, java.util.List
        public E set(int i4, E e4) {
            return this.f33093a.set(i4, e4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33093a.size();
        }
    }

    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    private static final class d extends AbstractList<Character> {

        /* renamed from: a  reason: collision with root package name */
        private final CharSequence f33094a;

        d(CharSequence charSequence) {
            this.f33094a = charSequence;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Character get(int i4) {
            com.google.common.base.a0.C(i4, size());
            return Character.valueOf(this.f33094a.charAt(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33094a.length();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    public static class e<E> extends AbstractList<E> implements Serializable, RandomAccess {

        /* renamed from: c  reason: collision with root package name */
        private static final long f33095c = 0;
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        final E f33096a;

        /* renamed from: b  reason: collision with root package name */
        final E[] f33097b;

        e(@NullableDecl E e4, E[] eArr) {
            this.f33096a = e4;
            this.f33097b = (E[]) ((Object[]) com.google.common.base.a0.E(eArr));
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i4) {
            com.google.common.base.a0.C(i4, size());
            return i4 == 0 ? this.f33096a : this.f33097b[i4 - 1];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.google.common.math.d.t(this.f33097b.length, 1);
        }
    }

    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    private static class f<T> extends AbstractList<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final List<T> f33098a;

        /* renamed from: b  reason: collision with root package name */
        final int f33099b;

        f(List<T> list, int i4) {
            this.f33098a = list;
            this.f33099b = i4;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public List<T> get(int i4) {
            com.google.common.base.a0.C(i4, size());
            int i10 = this.f33099b;
            int i11 = i4 * i10;
            return this.f33098a.subList(i11, Math.min(i10 + i11, this.f33098a.size()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f33098a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.google.common.math.d.g(this.f33098a.size(), this.f33099b, RoundingMode.CEILING);
        }
    }

    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    private static class g<E> extends c<E> implements RandomAccess {
        g(List<E> list) {
            super(list);
        }
    }

    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    private static class h<T> extends f<T> implements RandomAccess {
        h(List<T> list, int i4) {
            super(list, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    public static class i<T> extends j<T> implements RandomAccess {
        i(List<T> list) {
            super(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    public static class j<T> extends AbstractList<T> {

        /* renamed from: a  reason: collision with root package name */
        private final List<T> f33100a;

        /* compiled from: Lists.java */
        /* loaded from: classes2.dex */
        class a implements ListIterator<T> {

            /* renamed from: a  reason: collision with root package name */
            boolean f33101a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ListIterator f33102b;

            a(ListIterator listIterator) {
                this.f33102b = listIterator;
            }

            @Override // java.util.ListIterator
            public void add(T t9) {
                this.f33102b.add(t9);
                this.f33102b.previous();
                this.f33101a = false;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f33102b.hasPrevious();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f33102b.hasNext();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public T next() {
                if (hasNext()) {
                    this.f33101a = true;
                    return (T) this.f33102b.previous();
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return j.this.d(this.f33102b.nextIndex());
            }

            @Override // java.util.ListIterator
            public T previous() {
                if (hasPrevious()) {
                    this.f33101a = true;
                    return (T) this.f33102b.next();
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return nextIndex() - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                y.e(this.f33101a);
                this.f33102b.remove();
                this.f33101a = false;
            }

            @Override // java.util.ListIterator
            public void set(T t9) {
                com.google.common.base.a0.g0(this.f33101a);
                this.f33102b.set(t9);
            }
        }

        j(List<T> list) {
            this.f33100a = (List) com.google.common.base.a0.E(list);
        }

        private int c(int i4) {
            int size = size();
            com.google.common.base.a0.C(i4, size);
            return (size - 1) - i4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int d(int i4) {
            int size = size();
            com.google.common.base.a0.d0(i4, size);
            return size - i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i4, @NullableDecl T t9) {
            this.f33100a.add(d(i4), t9);
        }

        List<T> b() {
            return this.f33100a;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f33100a.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i4) {
            return this.f33100a.get(c(i4));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i4) {
            return new a(this.f33100a.listIterator(d(i4)));
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i4) {
            return this.f33100a.remove(c(i4));
        }

        @Override // java.util.AbstractList
        protected void removeRange(int i4, int i10) {
            subList(i4, i10).clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T set(int i4, @NullableDecl T t9) {
            return this.f33100a.set(c(i4), t9);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33100a.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<T> subList(int i4, int i10) {
            com.google.common.base.a0.f0(i4, i10, size());
            return b3.B(this.f33100a.subList(d(i10), d(i4)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    public static final class k extends ImmutableList<Character> {

        /* renamed from: c  reason: collision with root package name */
        private final String f33104c;

        k(String str) {
            this.f33104c = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return false;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(@NullableDecl Object obj) {
            if (obj instanceof Character) {
                return this.f33104c.indexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(@NullableDecl Object obj) {
            if (obj instanceof Character) {
                return this.f33104c.lastIndexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // java.util.List
        /* renamed from: o */
        public Character get(int i4) {
            com.google.common.base.a0.C(i4, size());
            return Character.valueOf(this.f33104c.charAt(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33104c.length();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<Character> subList(int i4, int i10) {
            com.google.common.base.a0.f0(i4, i10, size());
            return b3.g(this.f33104c.substring(i4, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    public static class l<F, T> extends AbstractList<T> implements RandomAccess, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f33105c = 0;

        /* renamed from: a  reason: collision with root package name */
        final List<F> f33106a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.base.q<? super F, ? extends T> f33107b;

        /* compiled from: Lists.java */
        /* loaded from: classes2.dex */
        class a extends h5<F, T> {
            a(ListIterator listIterator) {
                super(listIterator);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.g5
            public T a(F f10) {
                return l.this.f33107b.apply(f10);
            }
        }

        l(List<F> list, com.google.common.base.q<? super F, ? extends T> qVar) {
            this.f33106a = (List) com.google.common.base.a0.E(list);
            this.f33107b = (com.google.common.base.q) com.google.common.base.a0.E(qVar);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f33106a.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i4) {
            return this.f33107b.apply((F) this.f33106a.get(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f33106a.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i4) {
            return new a(this.f33106a.listIterator(i4));
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i4) {
            return this.f33107b.apply((F) this.f33106a.remove(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33106a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    public static class m<F, T> extends AbstractSequentialList<T> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f33109c = 0;

        /* renamed from: a  reason: collision with root package name */
        final List<F> f33110a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.base.q<? super F, ? extends T> f33111b;

        /* compiled from: Lists.java */
        /* loaded from: classes2.dex */
        class a extends h5<F, T> {
            a(ListIterator listIterator) {
                super(listIterator);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.g5
            public T a(F f10) {
                return m.this.f33111b.apply(f10);
            }
        }

        m(List<F> list, com.google.common.base.q<? super F, ? extends T> qVar) {
            this.f33110a = (List) com.google.common.base.a0.E(list);
            this.f33111b = (com.google.common.base.q) com.google.common.base.a0.E(qVar);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f33110a.clear();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i4) {
            return new a(this.f33110a.listIterator(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33110a.size();
        }
    }

    /* compiled from: Lists.java */
    /* loaded from: classes2.dex */
    private static class n<E> extends AbstractList<E> implements Serializable, RandomAccess {

        /* renamed from: d  reason: collision with root package name */
        private static final long f33113d = 0;
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        final E f33114a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        final E f33115b;

        /* renamed from: c  reason: collision with root package name */
        final E[] f33116c;

        n(@NullableDecl E e4, @NullableDecl E e10, E[] eArr) {
            this.f33114a = e4;
            this.f33115b = e10;
            this.f33116c = (E[]) ((Object[]) com.google.common.base.a0.E(eArr));
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i4) {
            if (i4 != 0) {
                if (i4 != 1) {
                    com.google.common.base.a0.C(i4, size());
                    return this.f33116c[i4 - 2];
                }
                return this.f33115b;
            }
            return this.f33114a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.google.common.math.d.t(this.f33116c.length, 2);
        }
    }

    private b3() {
    }

    public static <T> List<List<T>> A(List<T> list, int i4) {
        com.google.common.base.a0.E(list);
        com.google.common.base.a0.d(i4 > 0);
        return list instanceof RandomAccess ? new h(list, i4) : new f(list, i4);
    }

    public static <T> List<T> B(List<T> list) {
        if (list instanceof ImmutableList) {
            return ((ImmutableList) list).reverse();
        }
        if (list instanceof j) {
            return ((j) list).b();
        }
        if (list instanceof RandomAccess) {
            return new i(list);
        }
        return new j(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> List<E> C(List<E> list, int i4, int i10) {
        List bVar;
        if (list instanceof RandomAccess) {
            bVar = new a(list);
        } else {
            bVar = new b(list);
        }
        return bVar.subList(i4, i10);
    }

    public static <F, T> List<T> D(List<F> list, com.google.common.base.q<? super F, ? extends T> qVar) {
        return list instanceof RandomAccess ? new l(list, qVar) : new m(list, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> boolean a(List<E> list, int i4, Iterable<? extends E> iterable) {
        ListIterator<E> listIterator = list.listIterator(i4);
        boolean z9 = false;
        for (E e4 : iterable) {
            listIterator.add(e4);
            z9 = true;
        }
        return z9;
    }

    public static <E> List<E> b(@NullableDecl E e4, @NullableDecl E e10, E[] eArr) {
        return new n(e4, e10, eArr);
    }

    public static <E> List<E> c(@NullableDecl E e4, E[] eArr) {
        return new e(e4, eArr);
    }

    public static <B> List<List<B>> d(List<? extends List<? extends B>> list) {
        return w.c(list);
    }

    @SafeVarargs
    public static <B> List<List<B>> e(List<? extends B>... listArr) {
        return d(Arrays.asList(listArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<T> f(Iterable<T> iterable) {
        return (List) iterable;
    }

    public static ImmutableList<Character> g(String str) {
        return new k((String) com.google.common.base.a0.E(str));
    }

    @h3.a
    public static List<Character> h(CharSequence charSequence) {
        return new d((CharSequence) com.google.common.base.a0.E(charSequence));
    }

    @h3.d
    static int i(int i4) {
        y.b(i4, "arraySize");
        return com.google.common.primitives.f.x(i4 + 5 + (i4 / 10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j(List<?> list, @NullableDecl Object obj) {
        if (obj == com.google.common.base.a0.E(list)) {
            return true;
        }
        if (obj instanceof List) {
            List list2 = (List) obj;
            int size = list.size();
            if (size != list2.size()) {
                return false;
            }
            if ((list instanceof RandomAccess) && (list2 instanceof RandomAccess)) {
                for (int i4 = 0; i4 < size; i4++) {
                    if (!com.google.common.base.w.a(list.get(i4), list2.get(i4))) {
                        return false;
                    }
                }
                return true;
            }
            return x2.t(list.iterator(), list2.iterator());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(List<?> list) {
        Iterator<?> it = list.iterator();
        int i4 = 1;
        while (it.hasNext()) {
            Object next = it.next();
            i4 = ~(~((i4 * 31) + (next == null ? 0 : next.hashCode())));
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(List<?> list, @NullableDecl Object obj) {
        if (list instanceof RandomAccess) {
            return m(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (com.google.common.base.w.a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    private static int m(List<?> list, @NullableDecl Object obj) {
        int size = list.size();
        int i4 = 0;
        if (obj == null) {
            while (i4 < size) {
                if (list.get(i4) == null) {
                    return i4;
                }
                i4++;
            }
            return -1;
        }
        while (i4 < size) {
            if (obj.equals(list.get(i4))) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(List<?> list, @NullableDecl Object obj) {
        if (list instanceof RandomAccess) {
            return o(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (com.google.common.base.w.a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    private static int o(List<?> list, @NullableDecl Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ListIterator<E> p(List<E> list, int i4) {
        return new c(list).listIterator(i4);
    }

    @h3.b(serializable = true)
    public static <E> ArrayList<E> q() {
        return new ArrayList<>();
    }

    @h3.b(serializable = true)
    public static <E> ArrayList<E> r(Iterable<? extends E> iterable) {
        com.google.common.base.a0.E(iterable);
        if (iterable instanceof Collection) {
            return new ArrayList<>(z.b(iterable));
        }
        return s(iterable.iterator());
    }

    @h3.b(serializable = true)
    public static <E> ArrayList<E> s(Iterator<? extends E> it) {
        ArrayList<E> q9 = q();
        x2.a(q9, it);
        return q9;
    }

    @h3.b(serializable = true)
    @SafeVarargs
    public static <E> ArrayList<E> t(E... eArr) {
        com.google.common.base.a0.E(eArr);
        ArrayList<E> arrayList = new ArrayList<>(i(eArr.length));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    @h3.b(serializable = true)
    public static <E> ArrayList<E> u(int i4) {
        y.b(i4, "initialArraySize");
        return new ArrayList<>(i4);
    }

    @h3.b(serializable = true)
    public static <E> ArrayList<E> v(int i4) {
        return new ArrayList<>(i(i4));
    }

    @h3.c
    public static <E> CopyOnWriteArrayList<E> w() {
        return new CopyOnWriteArrayList<>();
    }

    @h3.c
    public static <E> CopyOnWriteArrayList<E> x(Iterable<? extends E> iterable) {
        return new CopyOnWriteArrayList<>(iterable instanceof Collection ? z.b(iterable) : r(iterable));
    }

    @h3.b(serializable = true)
    public static <E> LinkedList<E> y() {
        return new LinkedList<>();
    }

    @h3.b(serializable = true)
    public static <E> LinkedList<E> z(Iterable<? extends E> iterable) {
        LinkedList<E> y9 = y();
        w2.a(y9, iterable);
        return y9;
    }
}
