package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.z;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Sets.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class o4 {

    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    static class a extends m<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f33772a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f33773b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Sets.java */
        /* renamed from: com.google.common.collect.o4$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0233a extends com.google.common.collect.c<E> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<? extends E> f33774c;

            /* renamed from: d  reason: collision with root package name */
            final Iterator<? extends E> f33775d;

            C0233a() {
                this.f33774c = a.this.f33772a.iterator();
                this.f33775d = a.this.f33773b.iterator();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v6, types: [E, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r0v8, types: [E, java.lang.Object] */
            @Override // com.google.common.collect.c
            protected E a() {
                if (this.f33774c.hasNext()) {
                    return this.f33774c.next();
                }
                while (this.f33775d.hasNext()) {
                    ?? next = this.f33775d.next();
                    if (!a.this.f33772a.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set, Set set2) {
            super(null);
            this.f33772a = set;
            this.f33773b = set2;
        }

        @Override // com.google.common.collect.o4.m
        public <S extends Set<E>> S a(S s9) {
            s9.addAll(this.f33772a);
            s9.addAll(this.f33773b);
            return s9;
        }

        @Override // com.google.common.collect.o4.m
        public ImmutableSet<E> b() {
            return new ImmutableSet.a().c(this.f33772a).c(this.f33773b).e();
        }

        @Override // com.google.common.collect.o4.m, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: c */
        public k5<E> iterator() {
            return new C0233a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f33772a.contains(obj) || this.f33773b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f33772a.isEmpty() && this.f33773b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int size = this.f33772a.size();
            for (Object obj : this.f33773b) {
                if (!this.f33772a.contains(obj)) {
                    size++;
                }
            }
            return size;
        }
    }

    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    static class b extends m<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f33777a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f33778b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Sets.java */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<E> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<E> f33779c;

            a() {
                this.f33779c = b.this.f33777a.iterator();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v4, types: [E, java.lang.Object] */
            @Override // com.google.common.collect.c
            protected E a() {
                while (this.f33779c.hasNext()) {
                    ?? next = this.f33779c.next();
                    if (b.this.f33778b.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Set set, Set set2) {
            super(null);
            this.f33777a = set;
            this.f33778b = set2;
        }

        @Override // com.google.common.collect.o4.m, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: c */
        public k5<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f33777a.contains(obj) && this.f33778b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.f33777a.containsAll(collection) && this.f33778b.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.f33778b, this.f33777a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i4 = 0;
            for (Object obj : this.f33777a) {
                if (this.f33778b.contains(obj)) {
                    i4++;
                }
            }
            return i4;
        }
    }

    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    static class c extends m<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f33781a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f33782b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Sets.java */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<E> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<E> f33783c;

            a() {
                this.f33783c = c.this.f33781a.iterator();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v4, types: [E, java.lang.Object] */
            @Override // com.google.common.collect.c
            protected E a() {
                while (this.f33783c.hasNext()) {
                    ?? next = this.f33783c.next();
                    if (!c.this.f33782b.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Set set, Set set2) {
            super(null);
            this.f33781a = set;
            this.f33782b = set2;
        }

        @Override // com.google.common.collect.o4.m, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: c */
        public k5<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f33781a.contains(obj) && !this.f33782b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f33782b.containsAll(this.f33781a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i4 = 0;
            for (Object obj : this.f33781a) {
                if (!this.f33782b.contains(obj)) {
                    i4++;
                }
            }
            return i4;
        }
    }

    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    static class d extends m<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f33785a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f33786b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Sets.java */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<E> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33787c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Iterator f33788d;

            a(Iterator it, Iterator it2) {
                this.f33787c = it;
                this.f33788d = it2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v6, types: [E, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r0v8, types: [E, java.lang.Object] */
            @Override // com.google.common.collect.c
            public E a() {
                while (this.f33787c.hasNext()) {
                    ?? next = this.f33787c.next();
                    if (!d.this.f33786b.contains(next)) {
                        return next;
                    }
                }
                while (this.f33788d.hasNext()) {
                    ?? next2 = this.f33788d.next();
                    if (!d.this.f33785a.contains(next2)) {
                        return next2;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Set set, Set set2) {
            super(null);
            this.f33785a = set;
            this.f33786b = set2;
        }

        @Override // com.google.common.collect.o4.m, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: c */
        public k5<E> iterator() {
            return new a(this.f33785a.iterator(), this.f33786b.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f33786b.contains(obj) ^ this.f33785a.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f33785a.equals(this.f33786b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i4 = 0;
            for (Object obj : this.f33785a) {
                if (!this.f33786b.contains(obj)) {
                    i4++;
                }
            }
            for (Object obj2 : this.f33786b) {
                if (!this.f33785a.contains(obj2)) {
                    i4++;
                }
            }
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    public static class e extends AbstractSet<Set<E>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33790a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmutableMap f33791b;

        /* compiled from: Sets.java */
        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.c<Set<E>> {

            /* renamed from: c  reason: collision with root package name */
            final BitSet f33792c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Sets.java */
            /* renamed from: com.google.common.collect.o4$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0234a extends AbstractSet<E> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ BitSet f33794a;

                /* compiled from: Sets.java */
                /* renamed from: com.google.common.collect.o4$e$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes2.dex */
                class C0235a extends com.google.common.collect.c<E> {

                    /* renamed from: c  reason: collision with root package name */
                    int f33796c = -1;

                    C0235a() {
                    }

                    @Override // com.google.common.collect.c
                    protected E a() {
                        int nextSetBit = C0234a.this.f33794a.nextSetBit(this.f33796c + 1);
                        this.f33796c = nextSetBit;
                        if (nextSetBit == -1) {
                            return b();
                        }
                        return e.this.f33791b.keySet().asList().get(this.f33796c);
                    }
                }

                C0234a(BitSet bitSet) {
                    this.f33794a = bitSet;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean contains(@NullableDecl Object obj) {
                    Integer num = (Integer) e.this.f33791b.get(obj);
                    return num != null && this.f33794a.get(num.intValue());
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<E> iterator() {
                    return new C0235a();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return e.this.f33790a;
                }
            }

            a() {
                this.f33792c = new BitSet(e.this.f33791b.size());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Set<E> a() {
                if (this.f33792c.isEmpty()) {
                    this.f33792c.set(0, e.this.f33790a);
                } else {
                    int nextSetBit = this.f33792c.nextSetBit(0);
                    int nextClearBit = this.f33792c.nextClearBit(nextSetBit);
                    if (nextClearBit == e.this.f33791b.size()) {
                        return (Set) b();
                    }
                    int i4 = (nextClearBit - nextSetBit) - 1;
                    this.f33792c.set(0, i4);
                    this.f33792c.clear(i4, nextClearBit);
                    this.f33792c.set(nextClearBit);
                }
                return new C0234a((BitSet) this.f33792c.clone());
            }
        }

        e(int i4, ImmutableMap immutableMap) {
            this.f33790a = i4;
            this.f33791b = immutableMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Set) {
                Set set = (Set) obj;
                return set.size() == this.f33790a && this.f33791b.keySet().containsAll(set);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return com.google.common.math.d.a(this.f33791b.size(), this.f33790a);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "Sets.combinations(" + this.f33791b.keySet() + ", " + this.f33790a + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    public static final class f<E> extends e1<List<E>> implements Set<List<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final transient ImmutableList<ImmutableSet<E>> f33798a;

        /* renamed from: b  reason: collision with root package name */
        private final transient w<E> f33799b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Sets.java */
        /* loaded from: classes2.dex */
        public static class a extends ImmutableList<List<E>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ImmutableList f33800c;

            a(ImmutableList immutableList) {
                this.f33800c = immutableList;
            }

            @Override // com.google.common.collect.ImmutableCollection
            boolean e() {
                return true;
            }

            @Override // java.util.List
            /* renamed from: o */
            public List<E> get(int i4) {
                return ((ImmutableSet) this.f33800c.get(i4)).asList();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.f33800c.size();
            }
        }

        private f(ImmutableList<ImmutableSet<E>> immutableList, w<E> wVar) {
            this.f33798a = immutableList;
            this.f33799b = wVar;
        }

        static <E> Set<List<E>> Y(List<? extends Set<? extends E>> list) {
            ImmutableList.a aVar = new ImmutableList.a(list.size());
            for (Set<? extends E> set : list) {
                ImmutableSet copyOf = ImmutableSet.copyOf((Collection) set);
                if (copyOf.isEmpty()) {
                    return ImmutableSet.of();
                }
                aVar.g(copyOf);
            }
            ImmutableList<E> e4 = aVar.e();
            return new f(e4, new w(new a(e4)));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.e1, com.google.common.collect.v1
        /* renamed from: M */
        public Collection<List<E>> L() {
            return this.f33799b;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                return this.f33798a.equals(((f) obj).f33798a);
            }
            return super.equals(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int i4 = 1;
            int size = size() - 1;
            for (int i10 = 0; i10 < this.f33798a.size(); i10++) {
                size = ~(~(size * 31));
            }
            k5<ImmutableSet<E>> it = this.f33798a.iterator();
            while (it.hasNext()) {
                ImmutableSet<E> next = it.next();
                i4 = ~(~((i4 * 31) + ((size() / next.size()) * next.hashCode())));
            }
            return ~(~(i4 + size));
        }
    }

    /* compiled from: Sets.java */
    @h3.c
    /* loaded from: classes2.dex */
    static class g<E> extends u1<E> {

        /* renamed from: a  reason: collision with root package name */
        private final NavigableSet<E> f33801a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(NavigableSet<E> navigableSet) {
            this.f33801a = navigableSet;
        }

        private static <T> s3<T> r0(Comparator<T> comparator) {
            return s3.k(comparator).G();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public E ceiling(E e4) {
            return this.f33801a.floor(e4);
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator = this.f33801a.comparator();
            if (comparator == null) {
                return s3.B().G();
            }
            return r0(comparator);
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return this.f33801a.iterator();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return this.f33801a;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u1, com.google.common.collect.b2
        /* renamed from: e0 */
        public NavigableSet<E> b0() {
            return this.f33801a;
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public E first() {
            return this.f33801a.last();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public E floor(E e4) {
            return this.f33801a.ceiling(e4);
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public NavigableSet<E> headSet(E e4, boolean z9) {
            return this.f33801a.tailSet(e4, z9).descendingSet();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public E higher(E e4) {
            return this.f33801a.lower(e4);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return this.f33801a.descendingIterator();
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public E last() {
            return this.f33801a.first();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public E lower(E e4) {
            return this.f33801a.higher(e4);
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public E pollFirst() {
            return this.f33801a.pollLast();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public E pollLast() {
            return this.f33801a.pollFirst();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public NavigableSet<E> subSet(E e4, boolean z9, E e10, boolean z10) {
            return this.f33801a.subSet(e10, z10, e4, z9).descendingSet();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public NavigableSet<E> tailSet(E e4, boolean z9) {
            return this.f33801a.headSet(e4, z9).descendingSet();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return V();
        }

        @Override // com.google.common.collect.v1
        public String toString() {
            return X();
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> headSet(E e4) {
            return i0(e4);
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> subSet(E e4, E e10) {
            return c0(e4, e10);
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> tailSet(E e4) {
            return q0(e4);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) W(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Sets.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static class h<E> extends j<E> implements NavigableSet<E> {
        h(NavigableSet<E> navigableSet, com.google.common.base.b0<? super E> b0Var) {
            super(navigableSet, b0Var);
        }

        NavigableSet<E> b() {
            return (NavigableSet) this.f33980a;
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e4) {
            return (E) w2.r(b().tailSet(e4, true), this.f33981b, null);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return x2.x(b().descendingIterator(), this.f33981b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return o4.h(b().descendingSet(), this.f33981b);
        }

        @Override // java.util.NavigableSet
        @NullableDecl
        public E floor(E e4) {
            return (E) x2.A(b().headSet(e4, true).descendingIterator(), this.f33981b, null);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e4, boolean z9) {
            return o4.h(b().headSet(e4, z9), this.f33981b);
        }

        @Override // java.util.NavigableSet
        public E higher(E e4) {
            return (E) w2.r(b().tailSet(e4, false), this.f33981b, null);
        }

        @Override // com.google.common.collect.o4.j, java.util.SortedSet
        public E last() {
            return (E) x2.z(b().descendingIterator(), this.f33981b);
        }

        @Override // java.util.NavigableSet
        @NullableDecl
        public E lower(E e4) {
            return (E) x2.A(b().headSet(e4, false).descendingIterator(), this.f33981b, null);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) w2.I(b(), this.f33981b);
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) w2.I(b().descendingSet(), this.f33981b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e4, boolean z9, E e10, boolean z10) {
            return o4.h(b().subSet(e4, z9, e10, z10), this.f33981b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e4, boolean z9) {
            return o4.h(b().tailSet(e4, z9), this.f33981b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    public static class i<E> extends z.a<E> implements Set<E> {
        i(Set<E> set, com.google.common.base.b0<? super E> b0Var) {
            super(set, b0Var);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return o4.g(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return o4.k(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    public static class j<E> extends i<E> implements SortedSet<E> {
        j(SortedSet<E> sortedSet, com.google.common.base.b0<? super E> b0Var) {
            super(sortedSet, b0Var);
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.f33980a).comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) x2.z(this.f33980a.iterator(), this.f33981b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e4) {
            return new j(((SortedSet) this.f33980a).headSet(e4), this.f33981b);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [E, java.lang.Object] */
        public E last() {
            SortedSet sortedSet = (SortedSet) this.f33980a;
            while (true) {
                ?? r12 = (Object) sortedSet.last();
                if (this.f33981b.apply(r12)) {
                    return r12;
                }
                sortedSet = sortedSet.headSet(r12);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e4, E e10) {
            return new j(((SortedSet) this.f33980a).subSet(e4, e10), this.f33981b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e4) {
            return new j(((SortedSet) this.f33980a).tailSet(e4), this.f33981b);
        }
    }

    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    static abstract class k<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return o4.I(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) com.google.common.base.a0.E(collection));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    public static final class l<E> extends AbstractSet<Set<E>> {

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMap<E, Integer> f33802a;

        /* compiled from: Sets.java */
        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.b<Set<E>> {
            a(int i4) {
                super(i4);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.b
            /* renamed from: b */
            public Set<E> a(int i4) {
                return new n(l.this.f33802a, i4);
            }
        }

        l(Set<E> set) {
            com.google.common.base.a0.k(set.size() <= 30, "Too many elements to create power set: %s > 30", set.size());
            this.f33802a = f3.Q(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Set) {
                return this.f33802a.keySet().containsAll((Set) obj);
            }
            return false;
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof l) {
                return this.f33802a.equals(((l) obj).f33802a);
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.f33802a.keySet().hashCode() << (this.f33802a.size() - 1);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new a(size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return 1 << this.f33802a.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "powerSet(" + this.f33802a + ")";
        }
    }

    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    public static abstract class m<E> extends AbstractSet<E> {
        /* synthetic */ m(a aVar) {
            this();
        }

        @CanIgnoreReturnValue
        public <S extends Set<E>> S a(S s9) {
            s9.addAll(this);
            return s9;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean add(E e4) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        public ImmutableSet<E> b() {
            return ImmutableSet.copyOf((Collection) this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: c */
        public abstract k5<E> iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        private m() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    public static final class n<E> extends AbstractSet<E> {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap<E, Integer> f33804a;

        /* renamed from: b  reason: collision with root package name */
        private final int f33805b;

        /* compiled from: Sets.java */
        /* loaded from: classes2.dex */
        class a extends k5<E> {

            /* renamed from: a  reason: collision with root package name */
            final ImmutableList<E> f33806a;

            /* renamed from: b  reason: collision with root package name */
            int f33807b;

            a() {
                this.f33806a = n.this.f33804a.keySet().asList();
                this.f33807b = n.this.f33805b;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33807b != 0;
            }

            @Override // java.util.Iterator
            public E next() {
                int numberOfTrailingZeros = Integer.numberOfTrailingZeros(this.f33807b);
                if (numberOfTrailingZeros != 32) {
                    this.f33807b &= ~(1 << numberOfTrailingZeros);
                    return this.f33806a.get(numberOfTrailingZeros);
                }
                throw new NoSuchElementException();
            }
        }

        n(ImmutableMap<E, Integer> immutableMap, int i4) {
            this.f33804a = immutableMap;
            this.f33805b = i4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            Integer num = this.f33804a.get(obj);
            if (num != null) {
                if (((1 << num.intValue()) & this.f33805b) != 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Integer.bitCount(this.f33805b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Sets.java */
    /* loaded from: classes2.dex */
    public static final class o<E> extends b2<E> implements NavigableSet<E>, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f33809d = 0;

        /* renamed from: a  reason: collision with root package name */
        private final NavigableSet<E> f33810a;

        /* renamed from: b  reason: collision with root package name */
        private final SortedSet<E> f33811b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        private transient o<E> f33812c;

        o(NavigableSet<E> navigableSet) {
            this.f33810a = (NavigableSet) com.google.common.base.a0.E(navigableSet);
            this.f33811b = Collections.unmodifiableSortedSet(navigableSet);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.b2, com.google.common.collect.x1
        /* renamed from: b0 */
        public SortedSet<E> Y() {
            return this.f33811b;
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e4) {
            return this.f33810a.ceiling(e4);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return x2.f0(this.f33810a.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            o<E> oVar = this.f33812c;
            if (oVar == null) {
                o<E> oVar2 = new o<>(this.f33810a.descendingSet());
                this.f33812c = oVar2;
                oVar2.f33812c = this;
                return oVar2;
            }
            return oVar;
        }

        @Override // java.util.NavigableSet
        public E floor(E e4) {
            return this.f33810a.floor(e4);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e4, boolean z9) {
            return o4.O(this.f33810a.headSet(e4, z9));
        }

        @Override // java.util.NavigableSet
        public E higher(E e4) {
            return this.f33810a.higher(e4);
        }

        @Override // java.util.NavigableSet
        public E lower(E e4) {
            return this.f33810a.lower(e4);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e4, boolean z9, E e10, boolean z10) {
            return o4.O(this.f33810a.subSet(e4, z9, e10, z10));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e4, boolean z9) {
            return o4.O(this.f33810a.tailSet(e4, z9));
        }
    }

    private o4() {
    }

    public static <E> LinkedHashSet<E> A() {
        return new LinkedHashSet<>();
    }

    public static <E> LinkedHashSet<E> B(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedHashSet<>(z.b(iterable));
        }
        LinkedHashSet<E> A = A();
        w2.a(A, iterable);
        return A;
    }

    public static <E> LinkedHashSet<E> C(int i4) {
        return new LinkedHashSet<>(f3.o(i4));
    }

    @Deprecated
    public static <E> Set<E> D(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    public static <E extends Comparable> TreeSet<E> E() {
        return new TreeSet<>();
    }

    public static <E extends Comparable> TreeSet<E> F(Iterable<? extends E> iterable) {
        TreeSet<E> E = E();
        w2.a(E, iterable);
        return E;
    }

    public static <E> TreeSet<E> G(Comparator<? super E> comparator) {
        return new TreeSet<>((Comparator) com.google.common.base.a0.E(comparator));
    }

    @h3.b(serializable = false)
    public static <E> Set<Set<E>> H(Set<E> set) {
        return new l(set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean I(Set<?> set, Collection<?> collection) {
        com.google.common.base.a0.E(collection);
        if (collection instanceof k3) {
            collection = ((k3) collection).elementSet();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return x2.V(set.iterator(), collection);
        }
        return J(set, collection.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean J(Set<?> set, Iterator<?> it) {
        boolean z9 = false;
        while (it.hasNext()) {
            z9 |= set.remove(it.next());
        }
        return z9;
    }

    @h3.c
    @h3.a
    public static <K extends Comparable<? super K>> NavigableSet<K> K(NavigableSet<K> navigableSet, Range<K> range) {
        if (navigableSet.comparator() != null && navigableSet.comparator() != s3.B() && range.hasLowerBound() && range.hasUpperBound()) {
            com.google.common.base.a0.e(navigableSet.comparator().compare(range.lowerEndpoint(), range.upperEndpoint()) <= 0, "set is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.hasLowerBound() && range.hasUpperBound()) {
            K lowerEndpoint = range.lowerEndpoint();
            BoundType lowerBoundType = range.lowerBoundType();
            BoundType boundType = BoundType.CLOSED;
            return navigableSet.subSet(lowerEndpoint, lowerBoundType == boundType, range.upperEndpoint(), range.upperBoundType() == boundType);
        } else if (range.hasLowerBound()) {
            return navigableSet.tailSet(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED);
        } else if (range.hasUpperBound()) {
            return navigableSet.headSet(range.upperEndpoint(), range.upperBoundType() == BoundType.CLOSED);
        } else {
            return (NavigableSet) com.google.common.base.a0.E(navigableSet);
        }
    }

    public static <E> m<E> L(Set<? extends E> set, Set<? extends E> set2) {
        com.google.common.base.a0.F(set, "set1");
        com.google.common.base.a0.F(set2, "set2");
        return new d(set, set2);
    }

    @h3.c
    public static <E> NavigableSet<E> M(NavigableSet<E> navigableSet) {
        return c5.q(navigableSet);
    }

    public static <E> m<E> N(Set<? extends E> set, Set<? extends E> set2) {
        com.google.common.base.a0.F(set, "set1");
        com.google.common.base.a0.F(set2, "set2");
        return new a(set, set2);
    }

    public static <E> NavigableSet<E> O(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof o)) ? navigableSet : new o(navigableSet);
    }

    public static <B> Set<List<B>> a(List<? extends Set<? extends B>> list) {
        return f.Y(list);
    }

    @SafeVarargs
    public static <B> Set<List<B>> b(Set<? extends B>... setArr) {
        return a(Arrays.asList(setArr));
    }

    @h3.a
    public static <E> Set<Set<E>> c(Set<E> set, int i4) {
        ImmutableMap Q = f3.Q(set);
        y.b(i4, com.qennnsad.aknkaksd.data.repository.f.f47745b);
        com.google.common.base.a0.m(i4 <= Q.size(), "size (%s) must be <= set.size() (%s)", i4, Q.size());
        if (i4 == 0) {
            return ImmutableSet.of(ImmutableSet.of());
        }
        if (i4 == Q.size()) {
            return ImmutableSet.of(Q.keySet());
        }
        return new e(i4, Q);
    }

    public static <E extends Enum<E>> EnumSet<E> d(Collection<E> collection) {
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        com.google.common.base.a0.e(!collection.isEmpty(), "collection is empty; use the other version of this method");
        return o(collection, collection.iterator().next().getDeclaringClass());
    }

    public static <E extends Enum<E>> EnumSet<E> e(Collection<E> collection, Class<E> cls) {
        com.google.common.base.a0.E(collection);
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        return o(collection, cls);
    }

    public static <E> m<E> f(Set<E> set, Set<?> set2) {
        com.google.common.base.a0.F(set, "set1");
        com.google.common.base.a0.F(set2, "set2");
        return new c(set, set2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(Set<?> set, @NullableDecl Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @h3.c
    public static <E> NavigableSet<E> h(NavigableSet<E> navigableSet, com.google.common.base.b0<? super E> b0Var) {
        if (navigableSet instanceof i) {
            i iVar = (i) navigableSet;
            return new h((NavigableSet) iVar.f33980a, com.google.common.base.c0.d(iVar.f33981b, b0Var));
        }
        return new h((NavigableSet) com.google.common.base.a0.E(navigableSet), (com.google.common.base.b0) com.google.common.base.a0.E(b0Var));
    }

    public static <E> Set<E> i(Set<E> set, com.google.common.base.b0<? super E> b0Var) {
        if (set instanceof SortedSet) {
            return j((SortedSet) set, b0Var);
        }
        if (set instanceof i) {
            i iVar = (i) set;
            return new i((Set) iVar.f33980a, com.google.common.base.c0.d(iVar.f33981b, b0Var));
        }
        return new i((Set) com.google.common.base.a0.E(set), (com.google.common.base.b0) com.google.common.base.a0.E(b0Var));
    }

    public static <E> SortedSet<E> j(SortedSet<E> sortedSet, com.google.common.base.b0<? super E> b0Var) {
        if (sortedSet instanceof i) {
            i iVar = (i) sortedSet;
            return new j((SortedSet) iVar.f33980a, com.google.common.base.c0.d(iVar.f33981b, b0Var));
        }
        return new j((SortedSet) com.google.common.base.a0.E(sortedSet), (com.google.common.base.b0) com.google.common.base.a0.E(b0Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i4 = ~(~(i4 + (next != null ? next.hashCode() : 0)));
        }
        return i4;
    }

    @h3.b(serializable = true)
    public static <E extends Enum<E>> ImmutableSet<E> l(E e4, E... eArr) {
        return l2.q(EnumSet.of((Enum) e4, (Enum[]) eArr));
    }

    @h3.b(serializable = true)
    public static <E extends Enum<E>> ImmutableSet<E> m(Iterable<E> iterable) {
        if (iterable instanceof l2) {
            return (l2) iterable;
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.isEmpty()) {
                return ImmutableSet.of();
            }
            return l2.q(EnumSet.copyOf(collection));
        }
        Iterator<E> it = iterable.iterator();
        if (it.hasNext()) {
            EnumSet of = EnumSet.of((Enum) it.next());
            x2.a(of, it);
            return l2.q(of);
        }
        return ImmutableSet.of();
    }

    public static <E> m<E> n(Set<E> set, Set<?> set2) {
        com.google.common.base.a0.F(set, "set1");
        com.google.common.base.a0.F(set2, "set2");
        return new b(set, set2);
    }

    private static <E extends Enum<E>> EnumSet<E> o(Collection<E> collection, Class<E> cls) {
        EnumSet<E> allOf = EnumSet.allOf(cls);
        allOf.removeAll(collection);
        return allOf;
    }

    public static <E> Set<E> p() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public static <E> Set<E> q(Iterable<? extends E> iterable) {
        Set<E> p9 = p();
        w2.a(p9, iterable);
        return p9;
    }

    @h3.c
    public static <E> CopyOnWriteArraySet<E> r() {
        return new CopyOnWriteArraySet<>();
    }

    @h3.c
    public static <E> CopyOnWriteArraySet<E> s(Iterable<? extends E> iterable) {
        Collection r9;
        if (iterable instanceof Collection) {
            r9 = z.b(iterable);
        } else {
            r9 = b3.r(iterable);
        }
        return new CopyOnWriteArraySet<>(r9);
    }

    public static <E extends Enum<E>> EnumSet<E> t(Iterable<E> iterable, Class<E> cls) {
        EnumSet<E> noneOf = EnumSet.noneOf(cls);
        w2.a(noneOf, iterable);
        return noneOf;
    }

    public static <E> HashSet<E> u() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> v(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new HashSet<>(z.b(iterable));
        }
        return w(iterable.iterator());
    }

    public static <E> HashSet<E> w(Iterator<? extends E> it) {
        HashSet<E> u9 = u();
        x2.a(u9, it);
        return u9;
    }

    public static <E> HashSet<E> x(E... eArr) {
        HashSet<E> y9 = y(eArr.length);
        Collections.addAll(y9, eArr);
        return y9;
    }

    public static <E> HashSet<E> y(int i4) {
        return new HashSet<>(f3.o(i4));
    }

    public static <E> Set<E> z() {
        return Collections.newSetFromMap(f3.b0());
    }
}
