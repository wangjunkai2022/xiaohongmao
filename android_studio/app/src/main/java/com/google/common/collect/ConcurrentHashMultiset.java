package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.m4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.c
/* loaded from: classes2.dex */
public final class ConcurrentHashMultiset<E> extends i<E> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f32623d = 1;

    /* renamed from: c  reason: collision with root package name */
    private final transient ConcurrentMap<E, AtomicInteger> f32624c;

    /* loaded from: classes2.dex */
    class a extends x1<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f32625a;

        a(Set set) {
            this.f32625a = set;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<E> M() {
            return this.f32625a;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return obj != null && z.k(this.f32625a, obj);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return Q(collection);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return obj != null && z.l(this.f32625a, obj);
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return T(collection);
        }
    }

    /* loaded from: classes2.dex */
    class b extends com.google.common.collect.c<k3.a<E>> {

        /* renamed from: c  reason: collision with root package name */
        private final Iterator<Map.Entry<E, AtomicInteger>> f32627c;

        b() {
            this.f32627c = ConcurrentHashMultiset.this.f32624c.entrySet().iterator();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.c
        /* renamed from: d */
        public k3.a<E> a() {
            while (this.f32627c.hasNext()) {
                Map.Entry<E, AtomicInteger> next = this.f32627c.next();
                int i4 = next.getValue().get();
                if (i4 != 0) {
                    return l3.k(next.getKey(), i4);
                }
            }
            return b();
        }
    }

    /* loaded from: classes2.dex */
    class c extends l1<k3.a<E>> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private k3.a<E> f32629a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterator f32630b;

        c(Iterator it) {
            this.f32630b = it;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.l1, com.google.common.collect.v1
        /* renamed from: M */
        public Iterator<k3.a<E>> L() {
            return this.f32630b;
        }

        @Override // com.google.common.collect.l1, java.util.Iterator
        /* renamed from: N */
        public k3.a<E> next() {
            k3.a<E> aVar = (k3.a) super.next();
            this.f32629a = aVar;
            return aVar;
        }

        @Override // com.google.common.collect.l1, java.util.Iterator
        public void remove() {
            y.e(this.f32629a != null);
            ConcurrentHashMultiset.this.setCount(this.f32629a.getElement(), 0);
            this.f32629a = null;
        }
    }

    /* loaded from: classes2.dex */
    private class d extends i<E>.b {
        private d() {
            super();
        }

        private List<k3.a<E>> g() {
            ArrayList v9 = b3.v(size());
            x2.a(v9, iterator());
            return v9;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.i.b, com.google.common.collect.l3.i
        /* renamed from: f */
        public ConcurrentHashMultiset<E> e() {
            return ConcurrentHashMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return g().toArray();
        }

        /* synthetic */ d(ConcurrentHashMultiset concurrentHashMultiset, a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) g().toArray(tArr);
        }
    }

    /* loaded from: classes2.dex */
    private static class e {

        /* renamed from: a  reason: collision with root package name */
        static final m4.b<ConcurrentHashMultiset> f32633a = m4.a(ConcurrentHashMultiset.class, "countMap");

        private e() {
        }
    }

    @h3.d
    ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        com.google.common.base.a0.u(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.f32624c = concurrentMap;
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    private void h(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        e.f32633a.b(this, (ConcurrentMap) objectInputStream.readObject());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<E> j() {
        ArrayList v9 = b3.v(size());
        for (k3.a aVar : entrySet()) {
            Object element = aVar.getElement();
            for (int count = aVar.getCount(); count > 0; count--) {
                v9.add(element);
            }
        }
        return v9;
    }

    private void k(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f32624c);
    }

    @Override // com.google.common.collect.i
    Set<E> a() {
        return new a(this.f32624c.keySet());
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        r2 = new java.util.concurrent.atomic.AtomicInteger(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
        if (r4.f32624c.putIfAbsent(r5, r2) == null) goto L31;
     */
    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int add(E r5, int r6) {
        /*
            r4 = this;
            com.google.common.base.a0.E(r5)
            if (r6 != 0) goto La
            int r5 = r4.count(r5)
            return r5
        La:
            java.lang.String r0 = "occurences"
            com.google.common.collect.y.d(r6, r0)
        Lf:
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r4.f32624c
            java.lang.Object r0 = com.google.common.collect.f3.p0(r0, r5)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            r1 = 0
            if (r0 != 0) goto L2a
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r4.f32624c
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r2.<init>(r6)
            java.lang.Object r0 = r0.putIfAbsent(r5, r2)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            if (r0 != 0) goto L2a
            return r1
        L2a:
            int r2 = r0.get()
            if (r2 == 0) goto L5a
            int r3 = com.google.common.math.d.c(r2, r6)     // Catch: java.lang.ArithmeticException -> L3b
            boolean r3 = r0.compareAndSet(r2, r3)     // Catch: java.lang.ArithmeticException -> L3b
            if (r3 == 0) goto L2a
            return r2
        L3b:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Overflow adding "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = " occurrences to a count of "
            r0.append(r6)
            r0.append(r2)
            java.lang.String r6 = r0.toString()
            r5.<init>(r6)
            throw r5
        L5a:
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r2.<init>(r6)
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r3 = r4.f32624c
            java.lang.Object r3 = r3.putIfAbsent(r5, r2)
            if (r3 == 0) goto L6f
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r3 = r4.f32624c
            boolean r0 = r3.replace(r5, r0, r2)
            if (r0 == 0) goto Lf
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ConcurrentHashMultiset.add(java.lang.Object, int):int");
    }

    @Override // com.google.common.collect.i
    int b() {
        return this.f32624c.size();
    }

    @Override // com.google.common.collect.i
    Iterator<E> c() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f32624c.clear();
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.k3
    public int count(@NullableDecl Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) f3.p0(this.f32624c, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override // com.google.common.collect.i
    @Deprecated
    public Set<k3.a<E>> createEntrySet() {
        return new d(this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.i
    public Iterator<k3.a<E>> d() {
        return new c(new b());
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f32624c.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.k3
    public Iterator<E> iterator() {
        return l3.n(this);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj, int i4) {
        int i10;
        int max;
        if (i4 == 0) {
            return count(obj);
        }
        y.d(i4, "occurences");
        AtomicInteger atomicInteger = (AtomicInteger) f3.p0(this.f32624c, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i10 = atomicInteger.get();
            if (i10 == 0) {
                return 0;
            }
            max = Math.max(0, i10 - i4);
        } while (!atomicInteger.compareAndSet(i10, max));
        if (max == 0) {
            this.f32624c.remove(obj, atomicInteger);
        }
        return i10;
    }

    @CanIgnoreReturnValue
    public boolean removeExactly(@NullableDecl Object obj, int i4) {
        int i10;
        int i11;
        if (i4 == 0) {
            return true;
        }
        y.d(i4, "occurences");
        AtomicInteger atomicInteger = (AtomicInteger) f3.p0(this.f32624c, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i10 = atomicInteger.get();
            if (i10 < i4) {
                return false;
            }
            i11 = i10 - i4;
        } while (!atomicInteger.compareAndSet(i10, i11));
        if (i11 == 0) {
            this.f32624c.remove(obj, atomicInteger);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
        if (r6 != 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        r2 = new java.util.concurrent.atomic.AtomicInteger(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        if (r4.f32624c.putIfAbsent(r5, r2) == null) goto L29;
     */
    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int setCount(E r5, int r6) {
        /*
            r4 = this;
            com.google.common.base.a0.E(r5)
            java.lang.String r0 = "count"
            com.google.common.collect.y.b(r6, r0)
        L8:
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r4.f32624c
            java.lang.Object r0 = com.google.common.collect.f3.p0(r0, r5)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            r1 = 0
            if (r0 != 0) goto L26
            if (r6 != 0) goto L16
            return r1
        L16:
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r4.f32624c
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r2.<init>(r6)
            java.lang.Object r0 = r0.putIfAbsent(r5, r2)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            if (r0 != 0) goto L26
            return r1
        L26:
            int r2 = r0.get()
            if (r2 != 0) goto L45
            if (r6 != 0) goto L2f
            return r1
        L2f:
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r2.<init>(r6)
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r3 = r4.f32624c
            java.lang.Object r3 = r3.putIfAbsent(r5, r2)
            if (r3 == 0) goto L44
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r3 = r4.f32624c
            boolean r0 = r3.replace(r5, r0, r2)
            if (r0 == 0) goto L8
        L44:
            return r1
        L45:
            boolean r3 = r0.compareAndSet(r2, r6)
            if (r3 == 0) goto L26
            if (r6 != 0) goto L52
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r6 = r4.f32624c
            r6.remove(r5, r0)
        L52:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ConcurrentHashMultiset.setCount(java.lang.Object, int):int");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public int size() {
        long j4 = 0;
        for (AtomicInteger atomicInteger : this.f32624c.values()) {
            j4 += atomicInteger.get();
        }
        return com.google.common.primitives.f.x(j4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return j().toArray();
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> create = create();
        w2.a(create, iterable);
        return create;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) j().toArray(tArr);
    }

    @h3.a
    public static <E> ConcurrentHashMultiset<E> create(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new ConcurrentHashMultiset<>(concurrentMap);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public boolean setCount(E e4, int i4, int i10) {
        com.google.common.base.a0.E(e4);
        y.b(i4, "oldCount");
        y.b(i10, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) f3.p0(this.f32624c, e4);
        if (atomicInteger == null) {
            if (i4 != 0) {
                return false;
            }
            return i10 == 0 || this.f32624c.putIfAbsent(e4, new AtomicInteger(i10)) == null;
        }
        int i11 = atomicInteger.get();
        if (i11 == i4) {
            if (i11 == 0) {
                if (i10 == 0) {
                    this.f32624c.remove(e4, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i10);
                return this.f32624c.putIfAbsent(e4, atomicInteger2) == null || this.f32624c.replace(e4, atomicInteger, atomicInteger2);
            } else if (atomicInteger.compareAndSet(i11, i10)) {
                if (i10 == 0) {
                    this.f32624c.remove(e4, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }
}
