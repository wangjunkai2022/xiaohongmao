package com.google.common.collect;

import com.google.common.collect.ImmutableSet;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class ImmutableSortedSet<E> extends s2<E> implements NavigableSet<E>, r4<E> {

    /* renamed from: f  reason: collision with root package name */
    final transient Comparator<? super E> f32846f;
    @h3.c
    @LazyInit

    /* renamed from: g  reason: collision with root package name */
    transient ImmutableSortedSet<E> f32847g;

    /* loaded from: classes2.dex */
    public static final class a<E> extends ImmutableSet.a<E> {

        /* renamed from: g  reason: collision with root package name */
        private final Comparator<? super E> f32848g;

        public a(Comparator<? super E> comparator) {
            this.f32848g = (Comparator) com.google.common.base.a0.E(comparator);
        }

        @Override // com.google.common.collect.ImmutableSet.a
        @CanIgnoreReturnValue
        /* renamed from: o */
        public a<E> i(E e4) {
            super.g(e4);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        @CanIgnoreReturnValue
        /* renamed from: p */
        public a<E> j(E... eArr) {
            super.b(eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        @CanIgnoreReturnValue
        /* renamed from: q */
        public a<E> k(Iterable<? extends E> iterable) {
            super.c(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        @CanIgnoreReturnValue
        /* renamed from: r */
        public a<E> l(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* renamed from: s */
        public ImmutableSortedSet<E> n() {
            ImmutableSortedSet<E> q9 = ImmutableSortedSet.q(this.f32848g, this.f32704c, this.f32703b);
            this.f32704c = q9.size();
            this.f32705d = true;
            return q9;
        }
    }

    /* loaded from: classes2.dex */
    private static class b<E> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32849c = 0;

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super E> f32850a;

        /* renamed from: b  reason: collision with root package name */
        final Object[] f32851b;

        public b(Comparator<? super E> comparator, Object[] objArr) {
            this.f32850a = comparator;
            this.f32851b = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        Object a() {
            return new a(this.f32850a).j(this.f32851b).n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSortedSet(Comparator<? super E> comparator) {
        this.f32846f = comparator;
    }

    static int B(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet copyOf(Comparable[] comparableArr) {
        return q(s3.B(), comparableArr.length, (Object[]) comparableArr.clone());
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator a10 = s4.a(sortedSet);
        ImmutableList copyOf = ImmutableList.copyOf((Collection) sortedSet);
        if (copyOf.isEmpty()) {
            return s(a10);
        }
        return new h4(copyOf, a10);
    }

    public static <E extends Comparable<?>> a<E> naturalOrder() {
        return new a<>(s3.B());
    }

    public static <E> ImmutableSortedSet<E> of() {
        return h4.f33548i;
    }

    public static <E> a<E> orderedBy(Comparator<E> comparator) {
        return new a<>(comparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <E> ImmutableSortedSet<E> q(Comparator<? super E> comparator, int i4, E... eArr) {
        if (i4 == 0) {
            return s(comparator);
        }
        p3.c(eArr, i4);
        Arrays.sort(eArr, 0, i4, comparator);
        int i10 = 1;
        for (int i11 = 1; i11 < i4; i11++) {
            Object obj = (Object) eArr[i11];
            if (comparator.compare(obj, (Object) eArr[i10 - 1]) != 0) {
                eArr[i10] = obj;
                i10++;
            }
        }
        Arrays.fill(eArr, i10, i4, (Object) null);
        if (i10 < eArr.length / 2) {
            eArr = (E[]) Arrays.copyOf(eArr, i10);
        }
        return new h4(ImmutableList.k(eArr, i10), comparator);
    }

    public static <E extends Comparable<?>> a<E> reverseOrder() {
        return new a<>(Collections.reverseOrder());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> h4<E> s(Comparator<? super E> comparator) {
        if (s3.B().equals(comparator)) {
            return (h4<E>) h4.f33548i;
        }
        return new h4<>(ImmutableList.of(), comparator);
    }

    private void u(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.NavigableSet
    @h3.c
    public E ceiling(E e4) {
        return (E) w2.v(tailSet((ImmutableSortedSet<E>) e4, true), null);
    }

    @Override // java.util.SortedSet, com.google.common.collect.r4
    public Comparator<? super E> comparator() {
        return this.f32846f;
    }

    @Override // java.util.NavigableSet
    @h3.c
    public abstract k5<E> descendingIterator();

    @Override // java.util.SortedSet
    public E first() {
        return iterator().next();
    }

    @Override // java.util.NavigableSet
    @h3.c
    public E floor(E e4) {
        return (E) x2.J(headSet((ImmutableSortedSet<E>) e4, true).descendingIterator(), null);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object h() {
        return new b(this.f32846f, toArray());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ NavigableSet headSet(Object obj, boolean z9) {
        return headSet((ImmutableSortedSet<E>) obj, z9);
    }

    @Override // java.util.NavigableSet
    @h3.c
    public E higher(E e4) {
        return (E) w2.v(tailSet((ImmutableSortedSet<E>) e4, false), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int indexOf(@NullableDecl Object obj);

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract k5<E> iterator();

    @Override // java.util.SortedSet
    public E last() {
        return descendingIterator().next();
    }

    @Override // java.util.NavigableSet
    @h3.c
    public E lower(E e4) {
        return (E) x2.J(headSet((ImmutableSortedSet<E>) e4, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @CanIgnoreReturnValue
    @h3.c
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @CanIgnoreReturnValue
    @h3.c
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    @h3.c
    abstract ImmutableSortedSet<E> r();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ NavigableSet subSet(Object obj, boolean z9, Object obj2, boolean z10) {
        return subSet((boolean) obj, z9, (boolean) obj2, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableSortedSet<E> t(E e4, boolean z9);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ NavigableSet tailSet(Object obj, boolean z9) {
        return tailSet((ImmutableSortedSet<E>) obj, z9);
    }

    abstract ImmutableSortedSet<E> v(E e4, boolean z9, E e10, boolean z10);

    abstract ImmutableSortedSet<E> w(E e4, boolean z9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int z(Object obj, Object obj2) {
        return B(this.f32846f, obj, obj2);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(s3.B(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable) {
        return new h4(ImmutableList.of(comparable), s3.B());
    }

    @Override // java.util.NavigableSet
    @h3.c
    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.f32847g;
        if (immutableSortedSet == null) {
            ImmutableSortedSet<E> r9 = r();
            this.f32847g = r9;
            r9.f32847g = this;
            return r9;
        }
        return immutableSortedSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet((ImmutableSortedSet<E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet((ImmutableSortedSet<E>) obj);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2) {
        return q(s3.B(), 2, comparable, comparable2);
    }

    public ImmutableSortedSet<E> headSet(E e4) {
        return headSet((ImmutableSortedSet<E>) e4, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public ImmutableSortedSet<E> subSet(E e4, E e10) {
        return subSet((boolean) e4, true, (boolean) e10, false);
    }

    public ImmutableSortedSet<E> tailSet(E e4) {
        return tailSet((ImmutableSortedSet<E>) e4, true);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) s3.B(), (Collection) collection);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return q(s3.B(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    public ImmutableSortedSet<E> headSet(E e4, boolean z9) {
        return t(com.google.common.base.a0.E(e4), z9);
    }

    @h3.c
    public ImmutableSortedSet<E> subSet(E e4, boolean z9, E e10, boolean z10) {
        com.google.common.base.a0.E(e4);
        com.google.common.base.a0.E(e10);
        com.google.common.base.a0.d(this.f32846f.compare(e4, e10) <= 0);
        return v(e4, z9, e10, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    public ImmutableSortedSet<E> tailSet(E e4, boolean z9) {
        return w(com.google.common.base.a0.E(e4), z9);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return q(s3.B(), 4, comparable, comparable2, comparable3, comparable4);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> it) {
        return copyOf(s3.B(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return q(s3.B(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return q(s3.B(), length, comparableArr2);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new a(comparator).l(it).n();
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.a0.E(comparator);
        if (s4.b(comparator, iterable) && (iterable instanceof ImmutableSortedSet)) {
            ImmutableSortedSet<E> immutableSortedSet = (ImmutableSortedSet) iterable;
            if (!immutableSortedSet.e()) {
                return immutableSortedSet;
            }
        }
        Object[] P = w2.P(iterable);
        return q(comparator, P.length, P);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }
}
