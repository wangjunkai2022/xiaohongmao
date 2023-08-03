package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableSortedSet.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class h4<E> extends ImmutableSortedSet<E> {

    /* renamed from: i  reason: collision with root package name */
    static final h4<Comparable> f33548i = new h4<>(ImmutableList.of(), s3.B());
    @h3.d

    /* renamed from: h  reason: collision with root package name */
    final transient ImmutableList<E> f33549h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h4(ImmutableList<E> immutableList, Comparator<? super E> comparator) {
        super(comparator);
        this.f33549h = immutableList;
    }

    private int F(Object obj) throws ClassCastException {
        return Collections.binarySearch(this.f33549h, obj, G());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h4<E> C(int i4, int i10) {
        if (i4 == 0 && i10 == size()) {
            return this;
        }
        if (i4 < i10) {
            return new h4<>(this.f33549h.subList(i4, i10), this.f32846f);
        }
        return ImmutableSortedSet.s(this.f32846f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int D(E e4, boolean z9) {
        int binarySearch = Collections.binarySearch(this.f33549h, com.google.common.base.a0.E(e4), comparator());
        return binarySearch >= 0 ? z9 ? binarySearch + 1 : binarySearch : ~binarySearch;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int E(E e4, boolean z9) {
        int binarySearch = Collections.binarySearch(this.f33549h, com.google.common.base.a0.E(e4), comparator());
        return binarySearch >= 0 ? z9 ? binarySearch : binarySearch + 1 : ~binarySearch;
    }

    Comparator<Object> G() {
        return this.f32846f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int a(Object[] objArr, int i4) {
        return this.f33549h.a(objArr, i4);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        return this.f33549h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] b() {
        return this.f33549h.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int c() {
        return this.f33549h.c();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e4) {
        int E = E(e4, true);
        if (E == size()) {
            return null;
        }
        return this.f33549h.get(E);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        if (obj != null) {
            try {
                return F(obj) >= 0;
            } catch (ClassCastException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof k3) {
            collection = ((k3) collection).elementSet();
        }
        if (s4.b(comparator(), collection) && collection.size() > 1) {
            k5<E> it = iterator();
            Iterator<?> it2 = collection.iterator();
            if (!it.hasNext()) {
                return false;
            }
            Object next = it2.next();
            E next2 = it.next();
            while (true) {
                try {
                    int z9 = z(next2, next);
                    if (z9 < 0) {
                        if (!it.hasNext()) {
                            return false;
                        }
                        next2 = it.next();
                    } else if (z9 == 0) {
                        if (!it2.hasNext()) {
                            return true;
                        }
                        next = it2.next();
                    } else if (z9 > 0) {
                        break;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
        } else {
            return super.containsAll(collection);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int d() {
        return this.f33549h.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return this.f33549h.e();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034 A[Catch: ClassCastException | NoSuchElementException -> 0x0046, TryCatch #0 {ClassCastException | NoSuchElementException -> 0x0046, blocks: (B:17:0x002a, B:18:0x002e, B:20:0x0034, B:22:0x003e), top: B:29:0x002a }] */
    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof java.util.Set
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            java.util.Set r6 = (java.util.Set) r6
            int r1 = r5.size()
            int r3 = r6.size()
            if (r1 == r3) goto L17
            return r2
        L17:
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto L1e
            return r0
        L1e:
            java.util.Comparator<? super E> r1 = r5.f32846f
            boolean r1 = com.google.common.collect.s4.b(r1, r6)
            if (r1 == 0) goto L47
            java.util.Iterator r6 = r6.iterator()
            com.google.common.collect.k5 r1 = r5.iterator()     // Catch: java.lang.Throwable -> L46
        L2e:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L45
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Throwable -> L46
            java.lang.Object r4 = r6.next()     // Catch: java.lang.Throwable -> L46
            if (r4 == 0) goto L44
            int r3 = r5.z(r3, r4)     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L2e
        L44:
            return r2
        L45:
            return r0
        L46:
            return r2
        L47:
            boolean r6 = r5.containsAll(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.h4.equals(java.lang.Object):boolean");
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E first() {
        if (!isEmpty()) {
            return this.f33549h.get(0);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e4) {
        int D = D(e4, true) - 1;
        if (D == -1) {
            return null;
        }
        return this.f33549h.get(D);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e4) {
        int E = E(e4, false);
        if (E == size()) {
            return null;
        }
        return this.f33549h.get(E);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            int binarySearch = Collections.binarySearch(this.f33549h, obj, G());
            if (binarySearch >= 0) {
                return binarySearch;
            }
            return -1;
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E last() {
        if (!isEmpty()) {
            return this.f33549h.get(size() - 1);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e4) {
        int D = D(e4, false) - 1;
        if (D == -1) {
            return null;
        }
        return this.f33549h.get(D);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> r() {
        Comparator reverseOrder = Collections.reverseOrder(this.f32846f);
        if (isEmpty()) {
            return ImmutableSortedSet.s(reverseOrder);
        }
        return new h4(this.f33549h.reverse(), reverseOrder);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f33549h.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> t(E e4, boolean z9) {
        return C(0, D(e4, z9));
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> v(E e4, boolean z9, E e10, boolean z10) {
        return w(e4, z9).t(e10, z10);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> w(E e4, boolean z9) {
        return C(E(e4, z9), size());
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c
    public k5<E> descendingIterator() {
        return this.f33549h.reverse().iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<E> iterator() {
        return this.f33549h.iterator();
    }
}
