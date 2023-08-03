package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {

    /* renamed from: c  reason: collision with root package name */
    static final int f32809c = 1073741824;

    /* renamed from: d  reason: collision with root package name */
    private static final double f32810d = 0.7d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f32811e = 751619276;
    @RetainedWith
    @NullableDecl
    @LazyInit

    /* renamed from: b  reason: collision with root package name */
    private transient ImmutableList<E> f32812b;

    /* loaded from: classes2.dex */
    public static class a<E> extends ImmutableCollection.a<E> {
        @NullableDecl
        @h3.d

        /* renamed from: e  reason: collision with root package name */
        Object[] f32813e;

        /* renamed from: f  reason: collision with root package name */
        private int f32814f;

        public a() {
            super(4);
        }

        private void m(E e4) {
            int length = this.f32813e.length - 1;
            int hashCode = e4.hashCode();
            int c10 = h2.c(hashCode);
            while (true) {
                int i4 = c10 & length;
                Object[] objArr = this.f32813e;
                Object obj = objArr[i4];
                if (obj == null) {
                    objArr[i4] = e4;
                    this.f32814f += hashCode;
                    super.a(e4);
                    return;
                } else if (obj.equals(e4)) {
                    return;
                } else {
                    c10 = i4 + 1;
                }
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.a
        @CanIgnoreReturnValue
        /* renamed from: i */
        public a<E> g(E e4) {
            com.google.common.base.a0.E(e4);
            if (this.f32813e != null && ImmutableSet.l(this.f32704c) <= this.f32813e.length) {
                m(e4);
                return this;
            }
            this.f32813e = null;
            super.a(e4);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: j */
        public a<E> b(E... eArr) {
            if (this.f32813e != null) {
                for (E e4 : eArr) {
                    g(e4);
                }
            } else {
                super.b(eArr);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: k */
        public a<E> c(Iterable<? extends E> iterable) {
            com.google.common.base.a0.E(iterable);
            if (this.f32813e != null) {
                for (E e4 : iterable) {
                    g(e4);
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: l */
        public a<E> d(Iterator<? extends E> it) {
            com.google.common.base.a0.E(it);
            while (it.hasNext()) {
                g(it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* renamed from: n */
        public ImmutableSet<E> e() {
            ImmutableSet<E> m9;
            int i4 = this.f32704c;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (this.f32813e != null && ImmutableSet.l(i4) == this.f32813e.length) {
                        Object[] copyOf = ImmutableSet.p(this.f32704c, this.f32703b.length) ? Arrays.copyOf(this.f32703b, this.f32704c) : this.f32703b;
                        int i10 = this.f32814f;
                        Object[] objArr = this.f32813e;
                        m9 = new f4<>(copyOf, i10, objArr, objArr.length - 1, this.f32704c);
                    } else {
                        m9 = ImmutableSet.m(this.f32704c, this.f32703b);
                        this.f32704c = m9.size();
                    }
                    this.f32705d = true;
                    this.f32813e = null;
                    return m9;
                }
                return ImmutableSet.of(this.f32703b[0]);
            }
            return ImmutableSet.of();
        }

        a(int i4) {
            super(i4);
            this.f32813e = new Object[ImmutableSet.l(i4)];
        }
    }

    /* loaded from: classes2.dex */
    private static class b implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32815b = 0;

        /* renamed from: a  reason: collision with root package name */
        final Object[] f32816a;

        b(Object[] objArr) {
            this.f32816a = objArr;
        }

        Object a() {
            return ImmutableSet.copyOf(this.f32816a);
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

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.e()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return m(array.length, array);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.d
    public static int l(int i4) {
        int max = Math.max(i4, 2);
        if (max < f32811e) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (highestOneBit * f32810d < max) {
                highestOneBit <<= 1;
            }
            return highestOneBit;
        }
        com.google.common.base.a0.e(max < 1073741824, "collection too large");
        return 1073741824;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ImmutableSet<E> m(int i4, Object... objArr) {
        if (i4 != 0) {
            if (i4 != 1) {
                int l10 = l(i4);
                Object[] objArr2 = new Object[l10];
                int i10 = l10 - 1;
                int i11 = 0;
                int i12 = 0;
                for (int i13 = 0; i13 < i4; i13++) {
                    Object a10 = p3.a(objArr[i13], i13);
                    int hashCode = a10.hashCode();
                    int c10 = h2.c(hashCode);
                    while (true) {
                        int i14 = c10 & i10;
                        Object obj = objArr2[i14];
                        if (obj == null) {
                            objArr[i12] = a10;
                            objArr2[i14] = a10;
                            i11 += hashCode;
                            i12++;
                            break;
                        } else if (obj.equals(a10)) {
                            break;
                        } else {
                            c10++;
                        }
                    }
                }
                Arrays.fill(objArr, i12, i4, (Object) null);
                if (i12 == 1) {
                    return new p4(objArr[0], i11);
                }
                if (l(i12) < l10 / 2) {
                    return m(i12, objArr);
                }
                if (p(i12, objArr.length)) {
                    objArr = Arrays.copyOf(objArr, i12);
                }
                return new f4(objArr, i11, objArr2, i10, i12);
            }
            return of(objArr[0]);
        }
        return of();
    }

    public static <E> ImmutableSet<E> of() {
        return f4.f33487k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p(int i4, int i10) {
        return i4 < (i10 >> 1) + (i10 >> 2);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.f32812b;
        if (immutableList == null) {
            ImmutableList<E> n9 = n();
            this.f32812b = n9;
            return n9;
        }
        return immutableList;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && o() && ((ImmutableSet) obj).o() && hashCode() != obj.hashCode()) {
            return false;
        }
        return o4.g(this, obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object h() {
        return new b(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return o4.k(this);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract k5<E> iterator();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableList<E> n() {
        return ImmutableList.j(toArray());
    }

    boolean o() {
        return false;
    }

    public static <E> ImmutableSet<E> of(E e4) {
        return new p4(e4);
    }

    public static <E> ImmutableSet<E> of(E e4, E e10) {
        return m(2, e4, e10);
    }

    public static <E> ImmutableSet<E> of(E e4, E e10, E e11) {
        return m(3, e4, e10, e11);
    }

    public static <E> ImmutableSet<E> of(E e4, E e10, E e11, E e12) {
        return m(4, e4, e10, e11, e12);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> of(E e4, E e10, E e11, E e12, E e13) {
        return m(5, e4, e10, e11, e12, e13);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> of(E e4, E e10, E e11, E e12, E e13, E e14, E... eArr) {
        com.google.common.base.a0.e(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e4;
        objArr[1] = e10;
        objArr[2] = e11;
        objArr[3] = e12;
        objArr[4] = e13;
        objArr[5] = e14;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return m(length, objArr);
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new a().g(next).d(it).e();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length != 0) {
            if (length != 1) {
                return m(eArr.length, (Object[]) eArr.clone());
            }
            return of((Object) eArr[0]);
        }
        return of();
    }
}
