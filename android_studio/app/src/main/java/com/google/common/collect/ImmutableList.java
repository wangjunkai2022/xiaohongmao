package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    private static final l5<Object> f32707b = new b(c4.f33180e, 0);

    /* loaded from: classes2.dex */
    public static final class a<E> extends ImmutableCollection.a<E> {
        public a() {
            this(4);
        }

        @Override // com.google.common.collect.ImmutableCollection.a
        @CanIgnoreReturnValue
        /* renamed from: i */
        public a<E> g(E e4) {
            super.a(e4);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: j */
        public a<E> b(E... eArr) {
            super.b(eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: k */
        public a<E> c(Iterable<? extends E> iterable) {
            super.c(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: l */
        public a<E> d(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* renamed from: m */
        public ImmutableList<E> e() {
            this.f32705d = true;
            return ImmutableList.k(this.f32703b, this.f32704c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i4) {
            super(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b<E> extends com.google.common.collect.b<E> {

        /* renamed from: c  reason: collision with root package name */
        private final ImmutableList<E> f32708c;

        b(ImmutableList<E> immutableList, int i4) {
            super(immutableList.size(), i4);
            this.f32708c = immutableList;
        }

        @Override // com.google.common.collect.b
        protected E a(int i4) {
            return this.f32708c.get(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c<E> extends ImmutableList<E> {

        /* renamed from: c  reason: collision with root package name */
        private final transient ImmutableList<E> f32709c;

        c(ImmutableList<E> immutableList) {
            this.f32709c = immutableList;
        }

        private int o(int i4) {
            return (size() - 1) - i4;
        }

        private int p(int i4) {
            return size() - i4;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return this.f32709c.contains(obj);
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean e() {
            return this.f32709c.e();
        }

        @Override // java.util.List
        public E get(int i4) {
            com.google.common.base.a0.C(i4, size());
            return this.f32709c.get(o(i4));
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(@NullableDecl Object obj) {
            int lastIndexOf = this.f32709c.lastIndexOf(obj);
            if (lastIndexOf >= 0) {
                return o(lastIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(@NullableDecl Object obj) {
            int indexOf = this.f32709c.indexOf(obj);
            if (indexOf >= 0) {
                return o(indexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.ImmutableList
        public ImmutableList<E> reverse() {
            return this.f32709c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f32709c.size();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i4) {
            return super.listIterator(i4);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i4, int i10) {
            com.google.common.base.a0.f0(i4, i10, size());
            return this.f32709c.subList(p(i10), p(i4)).reverse();
        }
    }

    /* loaded from: classes2.dex */
    static class d implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32710b = 0;

        /* renamed from: a  reason: collision with root package name */
        final Object[] f32711a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(Object[] objArr) {
            this.f32711a = objArr;
        }

        Object a() {
            return ImmutableList.copyOf(this.f32711a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends ImmutableList<E> {

        /* renamed from: c  reason: collision with root package name */
        final transient int f32712c;

        /* renamed from: d  reason: collision with root package name */
        final transient int f32713d;

        e(int i4, int i10) {
            this.f32712c = i4;
            this.f32713d = i10;
        }

        @Override // com.google.common.collect.ImmutableCollection
        Object[] b() {
            return ImmutableList.this.b();
        }

        @Override // com.google.common.collect.ImmutableCollection
        int c() {
            return ImmutableList.this.d() + this.f32712c + this.f32713d;
        }

        @Override // com.google.common.collect.ImmutableCollection
        int d() {
            return ImmutableList.this.d() + this.f32712c;
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean e() {
            return true;
        }

        @Override // java.util.List
        public E get(int i4) {
            com.google.common.base.a0.C(i4, this.f32713d);
            return ImmutableList.this.get(i4 + this.f32712c);
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f32713d;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i4) {
            return super.listIterator(i4);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i4, int i10) {
            com.google.common.base.a0.f0(i4, i10, this.f32713d);
            ImmutableList immutableList = ImmutableList.this;
            int i11 = this.f32712c;
            return immutableList.subList(i4 + i11, i10 + i11);
        }
    }

    public static <E> a<E> builder() {
        return new a<>();
    }

    @h3.a
    public static <E> a<E> builderWithExpectedSize(int i4) {
        y.b(i4, "expectedSize");
        return new a<>(i4);
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> iterable) {
        com.google.common.base.a0.E(iterable);
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableList<E> j(Object[] objArr) {
        return k(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableList<E> k(Object[] objArr, int i4) {
        if (i4 == 0) {
            return of();
        }
        return new c4(objArr, i4);
    }

    private static <E> ImmutableList<E> l(Object... objArr) {
        return j(p3.b(objArr));
    }

    private void m(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E> ImmutableList<E> of() {
        return (ImmutableList<E>) c4.f33180e;
    }

    public static <E extends Comparable<? super E>> ImmutableList<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) w2.R(iterable, new Comparable[0]);
        p3.b(comparableArr);
        Arrays.sort(comparableArr);
        return j(comparableArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int a(Object[] objArr, int i4) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            objArr[i4 + i10] = get(i10);
        }
        return i4 + size;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i4, E e4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean addAll(int i4, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList<E> asList() {
        return this;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        return b3.j(this, obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object h() {
        return new d(toArray());
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i4 = 1;
        for (int i10 = 0; i10 < size; i10++) {
            i4 = ~(~((i4 * 31) + get(i10).hashCode()));
        }
        return i4;
    }

    @Override // java.util.List
    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        return b3.l(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        return b3.n(this, obj);
    }

    ImmutableList<E> n(int i4, int i10) {
        return new e(i4, i10 - i4);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final E remove(int i4) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> reverse() {
        return size() <= 1 ? this : new c(this);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final E set(int i4, E e4) {
        throw new UnsupportedOperationException();
    }

    public static <E> ImmutableList<E> of(E e4) {
        return l(e4);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public ImmutableList<E> subList(int i4, int i10) {
        com.google.common.base.a0.f0(i4, i10, size());
        int i11 = i10 - i4;
        if (i11 == size()) {
            return this;
        }
        if (i11 == 0) {
            return of();
        }
        return n(i4, i10);
    }

    public static <E> ImmutableList<E> of(E e4, E e10) {
        return l(e4, e10);
    }

    @Override // java.util.List
    public l5<E> listIterator() {
        return listIterator(0);
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11) {
        return l(e4, e10, e11);
    }

    @Override // java.util.List
    public l5<E> listIterator(int i4) {
        com.google.common.base.a0.d0(i4, size());
        if (isEmpty()) {
            return (l5<E>) f32707b;
        }
        return new b(this, i4);
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList<E> asList = ((ImmutableCollection) collection).asList();
            return asList.e() ? j(asList.toArray()) : asList;
        }
        return l(collection.toArray());
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12) {
        return l(e4, e10, e11, e12);
    }

    public static <E> ImmutableList<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.a0.E(comparator);
        Object[] P = w2.P(iterable);
        p3.b(P);
        Arrays.sort(P, comparator);
        return j(P);
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12, E e13) {
        return l(e4, e10, e11, e12, e13);
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12, E e13, E e14) {
        return l(e4, e10, e11, e12, e13, e14);
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12, E e13, E e14, E e15) {
        return l(e4, e10, e11, e12, e13, e14, e15);
    }

    public static <E> ImmutableList<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new a().g(next).d(it).e();
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12, E e13, E e14, E e15, E e16) {
        return l(e4, e10, e11, e12, e13, e14, e15, e16);
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17) {
        return l(e4, e10, e11, e12, e13, e14, e15, e16, e17);
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18) {
        return l(e4, e10, e11, e12, e13, e14, e15, e16, e17, e18);
    }

    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19) {
        return l(e4, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19);
    }

    @SafeVarargs
    public static <E> ImmutableList<E> of(E e4, E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20, E... eArr) {
        com.google.common.base.a0.e(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e4;
        objArr[1] = e10;
        objArr[2] = e11;
        objArr[3] = e12;
        objArr[4] = e13;
        objArr[5] = e14;
        objArr[6] = e15;
        objArr[7] = e16;
        objArr[8] = e17;
        objArr[9] = e18;
        objArr[10] = e19;
        objArr[11] = e20;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return l(objArr);
    }

    public static <E> ImmutableList<E> copyOf(E[] eArr) {
        if (eArr.length == 0) {
            return of();
        }
        return l((Object[]) eArr.clone());
    }
}
