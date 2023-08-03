package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.k3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class ImmutableMultiset<E> extends p2<E> implements k3<E> {
    @LazyInit

    /* renamed from: b  reason: collision with root package name */
    private transient ImmutableList<E> f32758b;
    @LazyInit

    /* renamed from: c  reason: collision with root package name */
    private transient ImmutableSet<k3.a<E>> f32759c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends k5<E> {

        /* renamed from: a  reason: collision with root package name */
        int f32760a;
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        E f32761b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Iterator f32762c;

        a(Iterator it) {
            this.f32762c = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32760a > 0 || this.f32762c.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f32760a <= 0) {
                k3.a aVar = (k3.a) this.f32762c.next();
                this.f32761b = (E) aVar.getElement();
                this.f32760a = aVar.getCount();
            }
            this.f32760a--;
            return this.f32761b;
        }
    }

    /* loaded from: classes2.dex */
    public static class b<E> extends ImmutableCollection.b<E> {

        /* renamed from: b  reason: collision with root package name */
        q3<E> f32764b;

        /* renamed from: c  reason: collision with root package name */
        boolean f32765c;

        /* renamed from: d  reason: collision with root package name */
        boolean f32766d;

        public b() {
            this(4);
        }

        @NullableDecl
        static <T> q3<T> n(Iterable<T> iterable) {
            if (iterable instanceof e4) {
                return (q3<E>) ((e4) iterable).f33389d;
            }
            if (iterable instanceof f) {
                return (q3<E>) ((f) iterable).f33412c;
            }
            return null;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: g */
        public b<E> a(E e4) {
            return k(e4, 1);
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: h */
        public b<E> b(E... eArr) {
            super.b(eArr);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: i */
        public b<E> c(Iterable<? extends E> iterable) {
            if (iterable instanceof k3) {
                k3 d4 = l3.d(iterable);
                q3 n9 = n(d4);
                if (n9 != null) {
                    q3<E> q3Var = this.f32764b;
                    q3Var.e(Math.max(q3Var.D(), n9.D()));
                    for (int f10 = n9.f(); f10 >= 0; f10 = n9.t(f10)) {
                        k(n9.j(f10), n9.l(f10));
                    }
                } else {
                    Set<k3.a<E>> entrySet = d4.entrySet();
                    q3<E> q3Var2 = this.f32764b;
                    q3Var2.e(Math.max(q3Var2.D(), entrySet.size()));
                    for (k3.a<E> aVar : d4.entrySet()) {
                        k(aVar.getElement(), aVar.getCount());
                    }
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: j */
        public b<E> d(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        @CanIgnoreReturnValue
        public b<E> k(E e4, int i4) {
            if (i4 == 0) {
                return this;
            }
            if (this.f32765c) {
                this.f32764b = new q3<>((q3<? extends E>) this.f32764b);
                this.f32766d = false;
            }
            this.f32765c = false;
            com.google.common.base.a0.E(e4);
            q3<E> q3Var = this.f32764b;
            q3Var.v(e4, i4 + q3Var.g(e4));
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* renamed from: l */
        public ImmutableMultiset<E> e() {
            if (this.f32764b.D() == 0) {
                return ImmutableMultiset.of();
            }
            if (this.f32766d) {
                this.f32764b = new q3<>((q3<? extends E>) this.f32764b);
                this.f32766d = false;
            }
            this.f32765c = true;
            return new e4(this.f32764b);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        public b<E> m(E e4, int i4) {
            if (i4 == 0 && !this.f32766d) {
                this.f32764b = new r3(this.f32764b);
                this.f32766d = true;
            } else if (this.f32765c) {
                this.f32764b = new q3<>((q3<? extends E>) this.f32764b);
                this.f32766d = false;
            }
            this.f32765c = false;
            com.google.common.base.a0.E(e4);
            if (i4 == 0) {
                this.f32764b.w(e4);
            } else {
                this.f32764b.v(com.google.common.base.a0.E(e4), i4);
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i4) {
            this.f32765c = false;
            this.f32766d = false;
            this.f32764b = q3.d(i4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(boolean z9) {
            this.f32765c = false;
            this.f32766d = false;
            this.f32764b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class c extends t2<k3.a<E>> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f32767g = 0;

        private c() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof k3.a) {
                k3.a aVar = (k3.a) obj;
                return aVar.getCount() > 0 && ImmutableMultiset.this.count(aVar.getElement()) == aVar.getCount();
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return ImmutableMultiset.this.e();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        @h3.c
        Object h() {
            return new d(ImmutableMultiset.this);
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t2
        /* renamed from: q */
        public k3.a<E> get(int i4) {
            return ImmutableMultiset.this.m(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }

        /* synthetic */ c(ImmutableMultiset immutableMultiset, a aVar) {
            this();
        }
    }

    @h3.c
    /* loaded from: classes2.dex */
    static class d<E> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMultiset<E> f32769a;

        d(ImmutableMultiset<E> immutableMultiset) {
            this.f32769a = immutableMultiset;
        }

        Object a() {
            return this.f32769a.entrySet();
        }
    }

    public static <E> b<E> builder() {
        return new b<>();
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] eArr) {
        return j(eArr);
    }

    private static <E> ImmutableMultiset<E> j(E... eArr) {
        return new b().b(eArr).e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableMultiset<E> k(Collection<? extends k3.a<? extends E>> collection) {
        b bVar = new b(collection.size());
        for (k3.a<? extends E> aVar : collection) {
            bVar.k(aVar.getElement(), aVar.getCount());
        }
        return bVar.e();
    }

    private ImmutableSet<k3.a<E>> l() {
        return isEmpty() ? ImmutableSet.of() : new c(this, null);
    }

    public static <E> ImmutableMultiset<E> of() {
        return e4.f33388g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    @h3.c
    public int a(Object[] objArr, int i4) {
        k5<k3.a<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            k3.a<E> next = it.next();
            Arrays.fill(objArr, i4, next.getCount() + i4, next.getElement());
            i4 += next.getCount();
        }
        return i4;
    }

    @Override // com.google.common.collect.k3
    @CanIgnoreReturnValue
    @Deprecated
    public final int add(E e4, int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.f32758b;
        if (immutableList == null) {
            ImmutableList<E> asList = super.asList();
            this.f32758b = asList;
            return asList;
        }
        return immutableList;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return count(obj) > 0;
    }

    @Override // com.google.common.collect.k3
    public abstract ImmutableSet<E> elementSet();

    @Override // java.util.Collection, com.google.common.collect.k3
    public boolean equals(@NullableDecl Object obj) {
        return l3.i(this, obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    @h3.c
    abstract Object h();

    @Override // java.util.Collection, com.google.common.collect.k3
    public int hashCode() {
        return o4.k(entrySet());
    }

    abstract k3.a<E> m(int i4);

    @Override // com.google.common.collect.k3
    @CanIgnoreReturnValue
    @Deprecated
    public final int remove(Object obj, int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.k3
    @CanIgnoreReturnValue
    @Deprecated
    public final int setCount(E e4, int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.k3
    public String toString() {
        return entrySet().toString();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) iterable;
            if (!immutableMultiset.e()) {
                return immutableMultiset;
            }
        }
        b bVar = new b(l3.l(iterable));
        bVar.c(iterable);
        return bVar.e();
    }

    public static <E> ImmutableMultiset<E> of(E e4) {
        return j(e4);
    }

    @Override // com.google.common.collect.k3
    public ImmutableSet<k3.a<E>> entrySet() {
        ImmutableSet<k3.a<E>> immutableSet = this.f32759c;
        if (immutableSet == null) {
            ImmutableSet<k3.a<E>> l10 = l();
            this.f32759c = l10;
            return l10;
        }
        return immutableSet;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<E> iterator() {
        return new a(entrySet().iterator());
    }

    @Override // com.google.common.collect.k3
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean setCount(E e4, int i4, int i10) {
        throw new UnsupportedOperationException();
    }

    public static <E> ImmutableMultiset<E> of(E e4, E e10) {
        return j(e4, e10);
    }

    public static <E> ImmutableMultiset<E> of(E e4, E e10, E e11) {
        return j(e4, e10, e11);
    }

    public static <E> ImmutableMultiset<E> of(E e4, E e10, E e11, E e12) {
        return j(e4, e10, e11, e12);
    }

    public static <E> ImmutableMultiset<E> of(E e4, E e10, E e11, E e12, E e13) {
        return j(e4, e10, e11, e12, e13);
    }

    public static <E> ImmutableMultiset<E> of(E e4, E e10, E e11, E e12, E e13, E e14, E... eArr) {
        return new b().a(e4).a(e10).a(e11).a(e12).a(e13).a(e14).b(eArr).e();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> it) {
        return new b().d(it).e();
    }
}
