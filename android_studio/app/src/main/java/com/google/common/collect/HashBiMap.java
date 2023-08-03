package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.RetainedWith;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b
/* loaded from: classes2.dex */
public final class HashBiMap<K, V> extends AbstractMap<K, V> implements u<K, V>, Serializable {

    /* renamed from: q  reason: collision with root package name */
    private static final int f32659q = -1;

    /* renamed from: r  reason: collision with root package name */
    private static final int f32660r = -2;

    /* renamed from: a  reason: collision with root package name */
    transient K[] f32661a;

    /* renamed from: b  reason: collision with root package name */
    transient V[] f32662b;

    /* renamed from: c  reason: collision with root package name */
    transient int f32663c;

    /* renamed from: d  reason: collision with root package name */
    transient int f32664d;

    /* renamed from: e  reason: collision with root package name */
    private transient int[] f32665e;

    /* renamed from: f  reason: collision with root package name */
    private transient int[] f32666f;

    /* renamed from: g  reason: collision with root package name */
    private transient int[] f32667g;

    /* renamed from: h  reason: collision with root package name */
    private transient int[] f32668h;
    @NullableDecl

    /* renamed from: i  reason: collision with root package name */
    private transient int f32669i;
    @NullableDecl

    /* renamed from: j  reason: collision with root package name */
    private transient int f32670j;

    /* renamed from: k  reason: collision with root package name */
    private transient int[] f32671k;

    /* renamed from: l  reason: collision with root package name */
    private transient int[] f32672l;

    /* renamed from: m  reason: collision with root package name */
    private transient Set<K> f32673m;

    /* renamed from: n  reason: collision with root package name */
    private transient Set<V> f32674n;

    /* renamed from: o  reason: collision with root package name */
    private transient Set<Map.Entry<K, V>> f32675o;
    @RetainedWith
    @MonotonicNonNullDecl

    /* renamed from: p  reason: collision with root package name */
    private transient u<V, K> f32676p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class a extends com.google.common.collect.g<K, V> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        final K f32677a;

        /* renamed from: b  reason: collision with root package name */
        int f32678b;

        a(int i4) {
            this.f32677a = HashBiMap.this.f32661a[i4];
            this.f32678b = i4;
        }

        void e() {
            int i4 = this.f32678b;
            if (i4 != -1) {
                HashBiMap hashBiMap = HashBiMap.this;
                if (i4 <= hashBiMap.f32663c && com.google.common.base.w.a(hashBiMap.f32661a[i4], this.f32677a)) {
                    return;
                }
            }
            this.f32678b = HashBiMap.this.o(this.f32677a);
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public K getKey() {
            return this.f32677a;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        @NullableDecl
        public V getValue() {
            e();
            int i4 = this.f32678b;
            if (i4 == -1) {
                return null;
            }
            return HashBiMap.this.f32662b[i4];
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V setValue(V v9) {
            e();
            int i4 = this.f32678b;
            if (i4 == -1) {
                return (V) HashBiMap.this.put(this.f32677a, v9);
            }
            V v10 = HashBiMap.this.f32662b[i4];
            if (com.google.common.base.w.a(v10, v9)) {
                return v9;
            }
            HashBiMap.this.I(this.f32678b, v9, false);
            return v10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b<K, V> extends com.google.common.collect.g<V, K> {

        /* renamed from: a  reason: collision with root package name */
        final HashBiMap<K, V> f32680a;

        /* renamed from: b  reason: collision with root package name */
        final V f32681b;

        /* renamed from: c  reason: collision with root package name */
        int f32682c;

        b(HashBiMap<K, V> hashBiMap, int i4) {
            this.f32680a = hashBiMap;
            this.f32681b = hashBiMap.f32662b[i4];
            this.f32682c = i4;
        }

        private void e() {
            int i4 = this.f32682c;
            if (i4 != -1) {
                HashBiMap<K, V> hashBiMap = this.f32680a;
                if (i4 <= hashBiMap.f32663c && com.google.common.base.w.a(this.f32681b, hashBiMap.f32662b[i4])) {
                    return;
                }
            }
            this.f32682c = this.f32680a.q(this.f32681b);
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V getKey() {
            return this.f32681b;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public K getValue() {
            e();
            int i4 = this.f32682c;
            if (i4 == -1) {
                return null;
            }
            return this.f32680a.f32661a[i4];
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public K setValue(K k10) {
            e();
            int i4 = this.f32682c;
            if (i4 == -1) {
                return this.f32680a.A(this.f32681b, k10, false);
            }
            K k11 = this.f32680a.f32661a[i4];
            if (com.google.common.base.w.a(k11, k10)) {
                return k10;
            }
            this.f32680a.H(this.f32682c, k10, false);
            return k11;
        }
    }

    /* loaded from: classes2.dex */
    final class c extends h<K, V, Map.Entry<K, V>> {
        c() {
            super(HashBiMap.this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.HashBiMap.h
        /* renamed from: b */
        public Map.Entry<K, V> a(int i4) {
            return new a(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                int o9 = HashBiMap.this.o(key);
                return o9 != -1 && com.google.common.base.w.a(value, HashBiMap.this.f32662b[o9]);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        public boolean remove(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                int d4 = h2.d(key);
                int p9 = HashBiMap.this.p(key, d4);
                if (p9 == -1 || !com.google.common.base.w.a(value, HashBiMap.this.f32662b[p9])) {
                    return false;
                }
                HashBiMap.this.E(p9, d4);
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    static class d<K, V> extends AbstractMap<V, K> implements u<V, K>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final HashBiMap<K, V> f32684a;

        /* renamed from: b  reason: collision with root package name */
        private transient Set<Map.Entry<V, K>> f32685b;

        d(HashBiMap<K, V> hashBiMap) {
            this.f32684a = hashBiMap;
        }

        @h3.c("serialization")
        private void a(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            ((HashBiMap) this.f32684a).f32676p = this;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f32684a.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return this.f32684a.containsValue(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsValue(@NullableDecl Object obj) {
            return this.f32684a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<V, K>> entrySet() {
            Set<Map.Entry<V, K>> set = this.f32685b;
            if (set == null) {
                e eVar = new e(this.f32684a);
                this.f32685b = eVar;
                return eVar;
            }
            return set;
        }

        @Override // com.google.common.collect.u
        @CanIgnoreReturnValue
        @NullableDecl
        public K forcePut(@NullableDecl V v9, @NullableDecl K k10) {
            return this.f32684a.A(v9, k10, true);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @NullableDecl
        public K get(@NullableDecl Object obj) {
            return this.f32684a.t(obj);
        }

        @Override // com.google.common.collect.u
        public u<K, V> inverse() {
            return this.f32684a;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return this.f32684a.values();
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.u
        @CanIgnoreReturnValue
        @NullableDecl
        public K put(@NullableDecl V v9, @NullableDecl K k10) {
            return this.f32684a.A(v9, k10, false);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CanIgnoreReturnValue
        @NullableDecl
        public K remove(@NullableDecl Object obj) {
            return this.f32684a.G(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f32684a.f32663c;
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.u
        public Set<K> values() {
            return this.f32684a.keySet();
        }
    }

    /* loaded from: classes2.dex */
    static class e<K, V> extends h<K, V, Map.Entry<V, K>> {
        e(HashBiMap<K, V> hashBiMap) {
            super(hashBiMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.HashBiMap.h
        /* renamed from: b */
        public Map.Entry<V, K> a(int i4) {
            return new b(this.f32688a, i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                int q9 = this.f32688a.q(key);
                return q9 != -1 && com.google.common.base.w.a(this.f32688a.f32661a[q9], value);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                int d4 = h2.d(key);
                int s9 = this.f32688a.s(key, d4);
                if (s9 == -1 || !com.google.common.base.w.a(this.f32688a.f32661a[s9], value)) {
                    return false;
                }
                this.f32688a.F(s9, d4);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class f extends h<K, V, K> {
        f() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.h
        K a(int i4) {
            return HashBiMap.this.f32661a[i4];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return HashBiMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int d4 = h2.d(obj);
            int p9 = HashBiMap.this.p(obj, d4);
            if (p9 != -1) {
                HashBiMap.this.E(p9, d4);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class g extends h<K, V, V> {
        g() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.h
        V a(int i4) {
            return HashBiMap.this.f32662b[i4];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return HashBiMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int d4 = h2.d(obj);
            int s9 = HashBiMap.this.s(obj, d4);
            if (s9 != -1) {
                HashBiMap.this.F(s9, d4);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class h<K, V, T> extends AbstractSet<T> {

        /* renamed from: a  reason: collision with root package name */
        final HashBiMap<K, V> f32688a;

        /* loaded from: classes2.dex */
        class a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private int f32689a;

            /* renamed from: b  reason: collision with root package name */
            private int f32690b = -1;

            /* renamed from: c  reason: collision with root package name */
            private int f32691c;

            /* renamed from: d  reason: collision with root package name */
            private int f32692d;

            a() {
                this.f32689a = ((HashBiMap) h.this.f32688a).f32669i;
                HashBiMap<K, V> hashBiMap = h.this.f32688a;
                this.f32691c = hashBiMap.f32664d;
                this.f32692d = hashBiMap.f32663c;
            }

            private void a() {
                if (h.this.f32688a.f32664d != this.f32691c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.f32689a != -2 && this.f32692d > 0;
            }

            @Override // java.util.Iterator
            public T next() {
                if (hasNext()) {
                    T t9 = (T) h.this.a(this.f32689a);
                    this.f32690b = this.f32689a;
                    this.f32689a = ((HashBiMap) h.this.f32688a).f32672l[this.f32689a];
                    this.f32692d--;
                    return t9;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                a();
                y.e(this.f32690b != -1);
                h.this.f32688a.C(this.f32690b);
                int i4 = this.f32689a;
                HashBiMap<K, V> hashBiMap = h.this.f32688a;
                if (i4 == hashBiMap.f32663c) {
                    this.f32689a = this.f32690b;
                }
                this.f32690b = -1;
                this.f32691c = hashBiMap.f32664d;
            }
        }

        h(HashBiMap<K, V> hashBiMap) {
            this.f32688a = hashBiMap;
        }

        abstract T a(int i4);

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f32688a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<T> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f32688a.f32663c;
        }
    }

    private HashBiMap(int i4) {
        u(i4);
    }

    @h3.c
    private void B(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int h4 = m4.h(objectInputStream);
        u(16);
        m4.c(this, objectInputStream, h4);
    }

    private void D(int i4, int i10, int i11) {
        com.google.common.base.a0.d(i4 != -1);
        j(i4, i10);
        k(i4, i11);
        J(this.f32671k[i4], this.f32672l[i4]);
        x(this.f32663c - 1, i4);
        K[] kArr = this.f32661a;
        int i12 = this.f32663c;
        kArr[i12 - 1] = null;
        this.f32662b[i12 - 1] = null;
        this.f32663c = i12 - 1;
        this.f32664d++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(int i4, @NullableDecl K k10, boolean z9) {
        com.google.common.base.a0.d(i4 != -1);
        int d4 = h2.d(k10);
        int p9 = p(k10, d4);
        int i10 = this.f32670j;
        int i11 = -2;
        if (p9 != -1) {
            if (z9) {
                i10 = this.f32671k[p9];
                i11 = this.f32672l[p9];
                E(p9, d4);
                if (i4 == this.f32663c) {
                    i4 = p9;
                }
            } else {
                throw new IllegalArgumentException("Key already present in map: " + k10);
            }
        }
        if (i10 == i4) {
            i10 = this.f32671k[i4];
        } else if (i10 == this.f32663c) {
            i10 = p9;
        }
        if (i11 == i4) {
            p9 = this.f32672l[i4];
        } else if (i11 != this.f32663c) {
            p9 = i11;
        }
        J(this.f32671k[i4], this.f32672l[i4]);
        j(i4, h2.d(this.f32661a[i4]));
        this.f32661a[i4] = k10;
        v(i4, h2.d(k10));
        J(i10, i4);
        J(i4, p9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(int i4, @NullableDecl V v9, boolean z9) {
        com.google.common.base.a0.d(i4 != -1);
        int d4 = h2.d(v9);
        int s9 = s(v9, d4);
        if (s9 != -1) {
            if (z9) {
                F(s9, d4);
                if (i4 == this.f32663c) {
                    i4 = s9;
                }
            } else {
                throw new IllegalArgumentException("Value already present in map: " + v9);
            }
        }
        k(i4, h2.d(this.f32662b[i4]));
        this.f32662b[i4] = v9;
        w(i4, d4);
    }

    private void J(int i4, int i10) {
        if (i4 == -2) {
            this.f32669i = i10;
        } else {
            this.f32672l[i4] = i10;
        }
        if (i10 == -2) {
            this.f32670j = i4;
        } else {
            this.f32671k[i10] = i4;
        }
    }

    @h3.c
    private void K(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        m4.i(this, objectOutputStream);
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    private int h(int i4) {
        return i4 & (this.f32665e.length - 1);
    }

    private static int[] i(int i4) {
        int[] iArr = new int[i4];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private void j(int i4, int i10) {
        com.google.common.base.a0.d(i4 != -1);
        int h4 = h(i10);
        int[] iArr = this.f32665e;
        if (iArr[h4] == i4) {
            int[] iArr2 = this.f32667g;
            iArr[h4] = iArr2[i4];
            iArr2[i4] = -1;
            return;
        }
        int i11 = iArr[h4];
        int i12 = this.f32667g[i11];
        while (true) {
            int i13 = i12;
            int i14 = i11;
            i11 = i13;
            if (i11 == -1) {
                throw new AssertionError("Expected to find entry with key " + this.f32661a[i4]);
            } else if (i11 == i4) {
                int[] iArr3 = this.f32667g;
                iArr3[i14] = iArr3[i4];
                iArr3[i4] = -1;
                return;
            } else {
                i12 = this.f32667g[i11];
            }
        }
    }

    private void k(int i4, int i10) {
        com.google.common.base.a0.d(i4 != -1);
        int h4 = h(i10);
        int[] iArr = this.f32666f;
        if (iArr[h4] == i4) {
            int[] iArr2 = this.f32668h;
            iArr[h4] = iArr2[i4];
            iArr2[i4] = -1;
            return;
        }
        int i11 = iArr[h4];
        int i12 = this.f32668h[i11];
        while (true) {
            int i13 = i12;
            int i14 = i11;
            i11 = i13;
            if (i11 == -1) {
                throw new AssertionError("Expected to find entry with value " + this.f32662b[i4]);
            } else if (i11 == i4) {
                int[] iArr3 = this.f32668h;
                iArr3[i14] = iArr3[i4];
                iArr3[i4] = -1;
                return;
            } else {
                i12 = this.f32668h[i11];
            }
        }
    }

    private void l(int i4) {
        int[] iArr = this.f32667g;
        if (iArr.length < i4) {
            int f10 = ImmutableCollection.b.f(iArr.length, i4);
            this.f32661a = (K[]) Arrays.copyOf(this.f32661a, f10);
            this.f32662b = (V[]) Arrays.copyOf(this.f32662b, f10);
            this.f32667g = m(this.f32667g, f10);
            this.f32668h = m(this.f32668h, f10);
            this.f32671k = m(this.f32671k, f10);
            this.f32672l = m(this.f32672l, f10);
        }
        if (this.f32665e.length < i4) {
            int a10 = h2.a(i4, 1.0d);
            this.f32665e = i(a10);
            this.f32666f = i(a10);
            for (int i10 = 0; i10 < this.f32663c; i10++) {
                int h4 = h(h2.d(this.f32661a[i10]));
                int[] iArr2 = this.f32667g;
                int[] iArr3 = this.f32665e;
                iArr2[i10] = iArr3[h4];
                iArr3[h4] = i10;
                int h10 = h(h2.d(this.f32662b[i10]));
                int[] iArr4 = this.f32668h;
                int[] iArr5 = this.f32666f;
                iArr4[i10] = iArr5[h10];
                iArr5[h10] = i10;
            }
        }
    }

    private static int[] m(int[] iArr, int i4) {
        int length = iArr.length;
        int[] copyOf = Arrays.copyOf(iArr, i4);
        Arrays.fill(copyOf, length, i4, -1);
        return copyOf;
    }

    private void v(int i4, int i10) {
        com.google.common.base.a0.d(i4 != -1);
        int h4 = h(i10);
        int[] iArr = this.f32667g;
        int[] iArr2 = this.f32665e;
        iArr[i4] = iArr2[h4];
        iArr2[h4] = i4;
    }

    private void w(int i4, int i10) {
        com.google.common.base.a0.d(i4 != -1);
        int h4 = h(i10);
        int[] iArr = this.f32668h;
        int[] iArr2 = this.f32666f;
        iArr[i4] = iArr2[h4];
        iArr2[h4] = i4;
    }

    private void x(int i4, int i10) {
        int i11;
        int i12;
        if (i4 == i10) {
            return;
        }
        int i13 = this.f32671k[i4];
        int i14 = this.f32672l[i4];
        J(i13, i10);
        J(i10, i14);
        K[] kArr = this.f32661a;
        K k10 = kArr[i4];
        V[] vArr = this.f32662b;
        V v9 = vArr[i4];
        kArr[i10] = k10;
        vArr[i10] = v9;
        int h4 = h(h2.d(k10));
        int[] iArr = this.f32665e;
        if (iArr[h4] == i4) {
            iArr[h4] = i10;
        } else {
            int i15 = iArr[h4];
            int i16 = this.f32667g[i15];
            while (true) {
                int i17 = i16;
                i11 = i15;
                i15 = i17;
                if (i15 == i4) {
                    break;
                }
                i16 = this.f32667g[i15];
            }
            this.f32667g[i11] = i10;
        }
        int[] iArr2 = this.f32667g;
        iArr2[i10] = iArr2[i4];
        iArr2[i4] = -1;
        int h10 = h(h2.d(v9));
        int[] iArr3 = this.f32666f;
        if (iArr3[h10] == i4) {
            iArr3[h10] = i10;
        } else {
            int i18 = iArr3[h10];
            int i19 = this.f32668h[i18];
            while (true) {
                int i20 = i19;
                i12 = i18;
                i18 = i20;
                if (i18 == i4) {
                    break;
                }
                i19 = this.f32668h[i18];
            }
            this.f32668h[i12] = i10;
        }
        int[] iArr4 = this.f32668h;
        iArr4[i10] = iArr4[i4];
        iArr4[i4] = -1;
    }

    @NullableDecl
    K A(@NullableDecl V v9, @NullableDecl K k10, boolean z9) {
        int d4 = h2.d(v9);
        int s9 = s(v9, d4);
        if (s9 != -1) {
            K k11 = this.f32661a[s9];
            if (com.google.common.base.w.a(k11, k10)) {
                return k10;
            }
            H(s9, k10, z9);
            return k11;
        }
        int i4 = this.f32670j;
        int d10 = h2.d(k10);
        int p9 = p(k10, d10);
        if (!z9) {
            com.google.common.base.a0.u(p9 == -1, "Key already present: %s", k10);
        } else if (p9 != -1) {
            i4 = this.f32671k[p9];
            E(p9, d10);
        }
        l(this.f32663c + 1);
        K[] kArr = this.f32661a;
        int i10 = this.f32663c;
        kArr[i10] = k10;
        this.f32662b[i10] = v9;
        v(i10, d10);
        w(this.f32663c, d4);
        int i11 = i4 == -2 ? this.f32669i : this.f32672l[i4];
        J(i4, this.f32663c);
        J(this.f32663c, i11);
        this.f32663c++;
        this.f32664d++;
        return null;
    }

    void C(int i4) {
        E(i4, h2.d(this.f32661a[i4]));
    }

    void E(int i4, int i10) {
        D(i4, i10, h2.d(this.f32662b[i4]));
    }

    void F(int i4, int i10) {
        D(i4, h2.d(this.f32661a[i4]), i10);
    }

    @NullableDecl
    K G(@NullableDecl Object obj) {
        int d4 = h2.d(obj);
        int s9 = s(obj, d4);
        if (s9 == -1) {
            return null;
        }
        K k10 = this.f32661a[s9];
        F(s9, d4);
        return k10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.f32661a, 0, this.f32663c, (Object) null);
        Arrays.fill(this.f32662b, 0, this.f32663c, (Object) null);
        Arrays.fill(this.f32665e, -1);
        Arrays.fill(this.f32666f, -1);
        Arrays.fill(this.f32667g, 0, this.f32663c, -1);
        Arrays.fill(this.f32668h, 0, this.f32663c, -1);
        Arrays.fill(this.f32671k, 0, this.f32663c, -1);
        Arrays.fill(this.f32672l, 0, this.f32663c, -1);
        this.f32663c = 0;
        this.f32669i = -2;
        this.f32670j = -2;
        this.f32664d++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return o(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return q(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f32675o;
        if (set == null) {
            c cVar = new c();
            this.f32675o = cVar;
            return cVar;
        }
        return set;
    }

    @Override // com.google.common.collect.u
    @CanIgnoreReturnValue
    @NullableDecl
    public V forcePut(@NullableDecl K k10, @NullableDecl V v9) {
        return y(k10, v9, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        int o9 = o(obj);
        if (o9 == -1) {
            return null;
        }
        return this.f32662b[o9];
    }

    @Override // com.google.common.collect.u
    public u<V, K> inverse() {
        u<V, K> uVar = this.f32676p;
        if (uVar == null) {
            d dVar = new d(this);
            this.f32676p = dVar;
            return dVar;
        }
        return uVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f32673m;
        if (set == null) {
            f fVar = new f();
            this.f32673m = fVar;
            return fVar;
        }
        return set;
    }

    int n(@NullableDecl Object obj, int i4, int[] iArr, int[] iArr2, Object[] objArr) {
        int i10 = iArr[h(i4)];
        while (i10 != -1) {
            if (com.google.common.base.w.a(objArr[i10], obj)) {
                return i10;
            }
            i10 = iArr2[i10];
        }
        return -1;
    }

    int o(@NullableDecl Object obj) {
        return p(obj, h2.d(obj));
    }

    int p(@NullableDecl Object obj, int i4) {
        return n(obj, i4, this.f32665e, this.f32667g, this.f32661a);
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.u
    @CanIgnoreReturnValue
    public V put(@NullableDecl K k10, @NullableDecl V v9) {
        return y(k10, v9, false);
    }

    int q(@NullableDecl Object obj) {
        return s(obj, h2.d(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @NullableDecl
    public V remove(@NullableDecl Object obj) {
        int d4 = h2.d(obj);
        int p9 = p(obj, d4);
        if (p9 == -1) {
            return null;
        }
        V v9 = this.f32662b[p9];
        E(p9, d4);
        return v9;
    }

    int s(@NullableDecl Object obj, int i4) {
        return n(obj, i4, this.f32666f, this.f32668h, this.f32662b);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f32663c;
    }

    @NullableDecl
    K t(@NullableDecl Object obj) {
        int q9 = q(obj);
        if (q9 == -1) {
            return null;
        }
        return this.f32661a[q9];
    }

    void u(int i4) {
        y.b(i4, "expectedSize");
        int a10 = h2.a(i4, 1.0d);
        this.f32663c = 0;
        this.f32661a = (K[]) new Object[i4];
        this.f32662b = (V[]) new Object[i4];
        this.f32665e = i(a10);
        this.f32666f = i(a10);
        this.f32667g = i(i4);
        this.f32668h = i(i4);
        this.f32669i = -2;
        this.f32670j = -2;
        this.f32671k = i(i4);
        this.f32672l = i(i4);
    }

    @NullableDecl
    V y(@NullableDecl K k10, @NullableDecl V v9, boolean z9) {
        int d4 = h2.d(k10);
        int p9 = p(k10, d4);
        if (p9 != -1) {
            V v10 = this.f32662b[p9];
            if (com.google.common.base.w.a(v10, v9)) {
                return v9;
            }
            I(p9, v9, z9);
            return v10;
        }
        int d10 = h2.d(v9);
        int s9 = s(v9, d10);
        if (!z9) {
            com.google.common.base.a0.u(s9 == -1, "Value already present: %s", v9);
        } else if (s9 != -1) {
            F(s9, d10);
        }
        l(this.f32663c + 1);
        K[] kArr = this.f32661a;
        int i4 = this.f32663c;
        kArr[i4] = k10;
        this.f32662b[i4] = v9;
        v(i4, d4);
        w(this.f32663c, d10);
        J(this.f32670j, this.f32663c);
        J(this.f32663c, -2);
        this.f32663c++;
        this.f32664d++;
        return null;
    }

    public static <K, V> HashBiMap<K, V> create(int i4) {
        return new HashBiMap<>(i4);
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.u
    public Set<V> values() {
        Set<V> set = this.f32674n;
        if (set == null) {
            g gVar = new g();
            this.f32674n = gVar;
            return gVar;
        }
        return set;
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> create = create(map.size());
        create.putAll(map);
        return create;
    }
}
