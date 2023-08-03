package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.k3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

@h3.c
/* loaded from: classes2.dex */
public abstract class ImmutableSortedMultiset<E> extends r2<E> implements v4<E> {
    @LazyInit

    /* renamed from: d  reason: collision with root package name */
    transient ImmutableSortedMultiset<E> f32837d;

    /* loaded from: classes2.dex */
    public static class a<E> extends ImmutableMultiset.b<E> {

        /* renamed from: e  reason: collision with root package name */
        private final Comparator<? super E> f32838e;
        @h3.d

        /* renamed from: f  reason: collision with root package name */
        E[] f32839f;

        /* renamed from: g  reason: collision with root package name */
        private int[] f32840g;

        /* renamed from: h  reason: collision with root package name */
        private int f32841h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f32842i;

        public a(Comparator<? super E> comparator) {
            super(true);
            this.f32838e = (Comparator) com.google.common.base.a0.E(comparator);
            this.f32839f = (E[]) new Object[4];
            this.f32840g = new int[4];
        }

        private void u(boolean z9) {
            int i4 = this.f32841h;
            if (i4 == 0) {
                return;
            }
            E[] eArr = (E[]) Arrays.copyOf(this.f32839f, i4);
            Arrays.sort(eArr, this.f32838e);
            int i10 = 1;
            for (int i11 = 1; i11 < eArr.length; i11++) {
                if (this.f32838e.compare((Object) eArr[i10 - 1], (Object) eArr[i11]) < 0) {
                    eArr[i10] = eArr[i11];
                    i10++;
                }
            }
            Arrays.fill(eArr, i10, this.f32841h, (Object) null);
            if (z9) {
                int i12 = i10 * 4;
                int i13 = this.f32841h;
                if (i12 > i13 * 3) {
                    eArr = (E[]) Arrays.copyOf(eArr, com.google.common.math.d.t(i13, (i13 / 2) + 1));
                }
            }
            int[] iArr = new int[eArr.length];
            for (int i14 = 0; i14 < this.f32841h; i14++) {
                int binarySearch = Arrays.binarySearch(eArr, 0, i10, this.f32839f[i14], this.f32838e);
                int[] iArr2 = this.f32840g;
                if (iArr2[i14] >= 0) {
                    iArr[binarySearch] = iArr[binarySearch] + iArr2[i14];
                } else {
                    iArr[binarySearch] = ~iArr2[i14];
                }
            }
            this.f32839f = eArr;
            this.f32840g = iArr;
            this.f32841h = i10;
        }

        private void v() {
            u(false);
            int i4 = 0;
            int i10 = 0;
            while (true) {
                int i11 = this.f32841h;
                if (i4 < i11) {
                    int[] iArr = this.f32840g;
                    if (iArr[i4] > 0) {
                        E[] eArr = this.f32839f;
                        eArr[i10] = eArr[i4];
                        iArr[i10] = iArr[i4];
                        i10++;
                    }
                    i4++;
                } else {
                    Arrays.fill(this.f32839f, i10, i11, (Object) null);
                    Arrays.fill(this.f32840g, i10, this.f32841h, 0);
                    this.f32841h = i10;
                    return;
                }
            }
        }

        private void w() {
            int i4 = this.f32841h;
            E[] eArr = this.f32839f;
            if (i4 == eArr.length) {
                u(true);
            } else if (this.f32842i) {
                this.f32839f = (E[]) Arrays.copyOf(eArr, eArr.length);
            }
            this.f32842i = false;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        @CanIgnoreReturnValue
        /* renamed from: o */
        public a<E> g(E e4) {
            return k(e4, 1);
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        @CanIgnoreReturnValue
        /* renamed from: p */
        public a<E> h(E... eArr) {
            for (E e4 : eArr) {
                g(e4);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        @CanIgnoreReturnValue
        /* renamed from: q */
        public a<E> i(Iterable<? extends E> iterable) {
            if (iterable instanceof k3) {
                for (k3.a<E> aVar : ((k3) iterable).entrySet()) {
                    k(aVar.getElement(), aVar.getCount());
                }
            } else {
                for (E e4 : iterable) {
                    g(e4);
                }
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        @CanIgnoreReturnValue
        /* renamed from: r */
        public a<E> j(Iterator<? extends E> it) {
            while (it.hasNext()) {
                g(it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        @CanIgnoreReturnValue
        /* renamed from: s */
        public a<E> k(E e4, int i4) {
            com.google.common.base.a0.E(e4);
            y.b(i4, "occurrences");
            if (i4 == 0) {
                return this;
            }
            w();
            E[] eArr = this.f32839f;
            int i10 = this.f32841h;
            eArr[i10] = e4;
            this.f32840g[i10] = i4;
            this.f32841h = i10 + 1;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* renamed from: t */
        public ImmutableSortedMultiset<E> l() {
            v();
            int i4 = this.f32841h;
            if (i4 == 0) {
                return ImmutableSortedMultiset.o(this.f32838e);
            }
            h4 h4Var = (h4) ImmutableSortedSet.q(this.f32838e, i4, this.f32839f);
            long[] jArr = new long[this.f32841h + 1];
            int i10 = 0;
            while (i10 < this.f32841h) {
                int i11 = i10 + 1;
                jArr[i11] = jArr[i10] + this.f32840g[i10];
                i10 = i11;
            }
            this.f32842i = true;
            return new g4(h4Var, jArr, 0, this.f32841h);
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        @CanIgnoreReturnValue
        /* renamed from: x */
        public a<E> m(E e4, int i4) {
            com.google.common.base.a0.E(e4);
            y.b(i4, "count");
            w();
            E[] eArr = this.f32839f;
            int i10 = this.f32841h;
            eArr[i10] = e4;
            this.f32840g[i10] = ~i4;
            this.f32841h = i10 + 1;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    private static final class b<E> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super E> f32843a;

        /* renamed from: b  reason: collision with root package name */
        final E[] f32844b;

        /* renamed from: c  reason: collision with root package name */
        final int[] f32845c;

        b(v4<E> v4Var) {
            this.f32843a = v4Var.comparator();
            int size = v4Var.entrySet().size();
            this.f32844b = (E[]) new Object[size];
            this.f32845c = new int[size];
            int i4 = 0;
            for (k3.a<E> aVar : v4Var.entrySet()) {
                this.f32844b[i4] = aVar.getElement();
                this.f32845c[i4] = aVar.getCount();
                i4++;
            }
        }

        Object a() {
            int length = this.f32844b.length;
            a aVar = new a(this.f32843a);
            for (int i4 = 0; i4 < length; i4++) {
                aVar.k(this.f32844b[i4], this.f32845c[i4]);
            }
            return aVar.l();
        }
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset copyOf(Comparable[] comparableArr) {
        return copyOf(s3.B(), Arrays.asList(comparableArr));
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSorted(v4<E> v4Var) {
        return n(v4Var.comparator(), b3.r(v4Var.entrySet()));
    }

    private static <E> ImmutableSortedMultiset<E> n(Comparator<? super E> comparator, Collection<k3.a<E>> collection) {
        if (collection.isEmpty()) {
            return o(comparator);
        }
        ImmutableList.a aVar = new ImmutableList.a(collection.size());
        long[] jArr = new long[collection.size() + 1];
        int i4 = 0;
        for (k3.a<E> aVar2 : collection) {
            aVar.g(aVar2.getElement());
            int i10 = i4 + 1;
            jArr[i10] = jArr[i4] + aVar2.getCount();
            i4 = i10;
        }
        return new g4(new h4(aVar.e(), comparator), jArr, 0, collection.size());
    }

    public static <E extends Comparable<?>> a<E> naturalOrder() {
        return new a<>(s3.B());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableSortedMultiset<E> o(Comparator<? super E> comparator) {
        if (s3.B().equals(comparator)) {
            return (ImmutableSortedMultiset<E>) g4.f33529j;
        }
        return new g4(comparator);
    }

    public static <E> ImmutableSortedMultiset<E> of() {
        return (ImmutableSortedMultiset<E>) g4.f33529j;
    }

    public static <E> a<E> orderedBy(Comparator<E> comparator) {
        return new a<>(comparator);
    }

    public static <E extends Comparable<?>> a<E> reverseOrder() {
        return new a<>(s3.B().G());
    }

    @Override // com.google.common.collect.v4, com.google.common.collect.r4
    public final Comparator<? super E> comparator() {
        return elementSet().comparator();
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.k3
    public abstract ImmutableSortedSet<E> elementSet();

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    Object h() {
        return new b(this);
    }

    @Override // com.google.common.collect.v4
    public abstract ImmutableSortedMultiset<E> headMultiset(E e4, BoundType boundType);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 headMultiset(Object obj, BoundType boundType) {
        return headMultiset((ImmutableSortedMultiset<E>) obj, boundType);
    }

    @Override // com.google.common.collect.v4
    @CanIgnoreReturnValue
    @Deprecated
    public final k3.a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.v4
    @CanIgnoreReturnValue
    @Deprecated
    public final k3.a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return subMultiset((BoundType) obj, boundType, (BoundType) obj2, boundType2);
    }

    @Override // com.google.common.collect.v4
    public abstract ImmutableSortedMultiset<E> tailMultiset(E e4, BoundType boundType);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((ImmutableSortedMultiset<E>) obj, boundType);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(s3.B(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable) {
        return new g4((h4) ImmutableSortedSet.of(comparable), new long[]{0, 1}, 0, 1);
    }

    @Override // com.google.common.collect.v4
    public ImmutableSortedMultiset<E> descendingMultiset() {
        ImmutableSortedMultiset<E> immutableSortedMultiset = this.f32837d;
        if (immutableSortedMultiset == null) {
            immutableSortedMultiset = isEmpty() ? o(s3.k(comparator()).G()) : new m0<>(this);
            this.f32837d = immutableSortedMultiset;
        }
        return immutableSortedMultiset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.v4
    public ImmutableSortedMultiset<E> subMultiset(E e4, BoundType boundType, E e10, BoundType boundType2) {
        com.google.common.base.a0.y(comparator().compare(e4, e10) <= 0, "Expected lowerBound <= upperBound but %s > %s", e4, e10);
        return tailMultiset((ImmutableSortedMultiset<E>) e4, boundType).headMultiset((ImmutableSortedMultiset<E>) e10, boundType2);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> it) {
        return copyOf(s3.B(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2) {
        return copyOf(s3.B(), Arrays.asList(comparable, comparable2));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        com.google.common.base.a0.E(comparator);
        return new a(comparator).j(it).l();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return copyOf(s3.B(), Arrays.asList(comparable, comparable2, comparable3));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return copyOf(s3.B(), Arrays.asList(comparable, comparable2, comparable3, comparable4));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableSortedMultiset) {
            ImmutableSortedMultiset<E> immutableSortedMultiset = (ImmutableSortedMultiset) iterable;
            if (comparator.equals(immutableSortedMultiset.comparator())) {
                return immutableSortedMultiset.e() ? n(comparator, immutableSortedMultiset.entrySet().asList()) : immutableSortedMultiset;
            }
        }
        return new a(comparator).i(iterable).l();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return copyOf(s3.B(), Arrays.asList(comparable, comparable2, comparable3, comparable4, comparable5));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        ArrayList u9 = b3.u(comparableArr.length + 6);
        Collections.addAll(u9, comparable, comparable2, comparable3, comparable4, comparable5, comparable6);
        Collections.addAll(u9, comparableArr);
        return copyOf(s3.B(), u9);
    }
}
