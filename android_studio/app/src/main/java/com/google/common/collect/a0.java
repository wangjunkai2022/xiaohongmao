package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CompactHashMap.java */
@h3.c
/* loaded from: classes2.dex */
public class a0<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: l  reason: collision with root package name */
    private static final int f33035l = 1073741824;

    /* renamed from: m  reason: collision with root package name */
    static final float f33036m = 1.0f;

    /* renamed from: n  reason: collision with root package name */
    private static final long f33037n = 4294967295L;

    /* renamed from: o  reason: collision with root package name */
    private static final long f33038o = -4294967296L;

    /* renamed from: p  reason: collision with root package name */
    static final int f33039p = 3;

    /* renamed from: q  reason: collision with root package name */
    static final int f33040q = -1;
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    private transient int[] f33041a;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    transient long[] f33042b;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    transient Object[] f33043c;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    transient Object[] f33044d;

    /* renamed from: e  reason: collision with root package name */
    transient float f33045e;

    /* renamed from: f  reason: collision with root package name */
    transient int f33046f;

    /* renamed from: g  reason: collision with root package name */
    private transient int f33047g;

    /* renamed from: h  reason: collision with root package name */
    private transient int f33048h;
    @MonotonicNonNullDecl

    /* renamed from: i  reason: collision with root package name */
    private transient Set<K> f33049i;
    @MonotonicNonNullDecl

    /* renamed from: j  reason: collision with root package name */
    private transient Set<Map.Entry<K, V>> f33050j;
    @MonotonicNonNullDecl

    /* renamed from: k  reason: collision with root package name */
    private transient Collection<V> f33051k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes2.dex */
    public class a extends a0<K, V>.e<K> {
        a() {
            super(a0.this, null);
        }

        @Override // com.google.common.collect.a0.e
        K b(int i4) {
            return (K) a0.this.f33043c[i4];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes2.dex */
    public class b extends a0<K, V>.e<Map.Entry<K, V>> {
        b() {
            super(a0.this, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.a0.e
        /* renamed from: c */
        public Map.Entry<K, V> b(int i4) {
            return new g(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes2.dex */
    public class c extends a0<K, V>.e<V> {
        c() {
            super(a0.this, null);
        }

        @Override // com.google.common.collect.a0.e
        V b(int i4) {
            return (V) a0.this.f33044d[i4];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes2.dex */
    public class d extends AbstractSet<Map.Entry<K, V>> {
        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int t9 = a0.this.t(entry.getKey());
                return t9 != -1 && com.google.common.base.w.a(a0.this.f33044d[t9], entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return a0.this.m();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int t9 = a0.this.t(entry.getKey());
                if (t9 == -1 || !com.google.common.base.w.a(a0.this.f33044d[t9], entry.getValue())) {
                    return false;
                }
                a0.this.D(t9);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a0.this.f33048h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes2.dex */
    public class f extends AbstractSet<K> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a0.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return a0.this.w();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int t9 = a0.this.t(obj);
            if (t9 == -1) {
                return false;
            }
            a0.this.D(t9);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a0.this.f33048h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes2.dex */
    public final class g extends com.google.common.collect.g<K, V> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private final K f33061a;

        /* renamed from: b  reason: collision with root package name */
        private int f33062b;

        g(int i4) {
            this.f33061a = (K) a0.this.f33043c[i4];
            this.f33062b = i4;
        }

        private void e() {
            int i4 = this.f33062b;
            if (i4 == -1 || i4 >= a0.this.size() || !com.google.common.base.w.a(this.f33061a, a0.this.f33043c[this.f33062b])) {
                this.f33062b = a0.this.t(this.f33061a);
            }
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public K getKey() {
            return this.f33061a;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V getValue() {
            e();
            int i4 = this.f33062b;
            if (i4 == -1) {
                return null;
            }
            return (V) a0.this.f33044d[i4];
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V setValue(V v9) {
            e();
            int i4 = this.f33062b;
            if (i4 == -1) {
                a0.this.put(this.f33061a, v9);
                return null;
            }
            Object[] objArr = a0.this.f33044d;
            V v10 = (V) objArr[i4];
            objArr[i4] = v9;
            return v10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes2.dex */
    public class h extends AbstractCollection<V> {
        h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return a0.this.J();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a0.this.f33048h;
        }
    }

    a0() {
        u(3, 1.0f);
    }

    private static int[] A(int i4) {
        int[] iArr = new int[i4];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void B(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        u(3, 1.0f);
        int readInt = objectInputStream.readInt();
        while (true) {
            readInt--;
            if (readInt < 0) {
                return;
            }
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    @NullableDecl
    private V C(@NullableDecl Object obj, int i4) {
        int s9 = s() & i4;
        int i10 = this.f33041a[s9];
        if (i10 == -1) {
            return null;
        }
        int i11 = -1;
        while (true) {
            if (o(this.f33042b[i10]) == i4 && com.google.common.base.w.a(obj, this.f33043c[i10])) {
                V v9 = (V) this.f33044d[i10];
                if (i11 == -1) {
                    this.f33041a[s9] = p(this.f33042b[i10]);
                } else {
                    long[] jArr = this.f33042b;
                    jArr[i11] = H(jArr[i11], p(jArr[i10]));
                }
                x(i10);
                this.f33048h--;
                this.f33046f++;
                return v9;
            }
            int p9 = p(this.f33042b[i10]);
            if (p9 == -1) {
                return null;
            }
            i11 = i10;
            i10 = p9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public V D(int i4) {
        return C(this.f33043c[i4], o(this.f33042b[i4]));
    }

    private void F(int i4) {
        int length = this.f33042b.length;
        if (i4 > length) {
            int max = Math.max(1, length >>> 1) + length;
            if (max < 0) {
                max = Integer.MAX_VALUE;
            }
            if (max != length) {
                E(max);
            }
        }
    }

    private void G(int i4) {
        if (this.f33041a.length >= 1073741824) {
            this.f33047g = Integer.MAX_VALUE;
            return;
        }
        int i10 = ((int) (i4 * this.f33045e)) + 1;
        int[] A = A(i4);
        long[] jArr = this.f33042b;
        int length = A.length - 1;
        for (int i11 = 0; i11 < this.f33048h; i11++) {
            int o9 = o(jArr[i11]);
            int i12 = o9 & length;
            int i13 = A[i12];
            A[i12] = i11;
            jArr[i11] = (o9 << 32) | (i13 & f33037n);
        }
        this.f33047g = i10;
        this.f33041a = A;
    }

    private static long H(long j4, int i4) {
        return (j4 & f33038o) | (i4 & f33037n);
    }

    private void K(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.f33048h);
        for (int i4 = 0; i4 < this.f33048h; i4++) {
            objectOutputStream.writeObject(this.f33043c[i4]);
            objectOutputStream.writeObject(this.f33044d[i4]);
        }
    }

    public static <K, V> a0<K, V> h() {
        return new a0<>();
    }

    public static <K, V> a0<K, V> l(int i4) {
        return new a0<>(i4);
    }

    private static int o(long j4) {
        return (int) (j4 >>> 32);
    }

    private static int p(long j4) {
        return (int) j4;
    }

    private int s() {
        return this.f33041a.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int t(@NullableDecl Object obj) {
        int d4 = h2.d(obj);
        int i4 = this.f33041a[s() & d4];
        while (i4 != -1) {
            long j4 = this.f33042b[i4];
            if (o(j4) == d4 && com.google.common.base.w.a(obj, this.f33043c[i4])) {
                return i4;
            }
            i4 = p(j4);
        }
        return -1;
    }

    private static long[] y(int i4) {
        long[] jArr = new long[i4];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(int i4) {
        this.f33043c = Arrays.copyOf(this.f33043c, i4);
        this.f33044d = Arrays.copyOf(this.f33044d, i4);
        long[] jArr = this.f33042b;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i4);
        if (i4 > length) {
            Arrays.fill(copyOf, length, i4, -1L);
        }
        this.f33042b = copyOf;
    }

    public void I() {
        int i4 = this.f33048h;
        if (i4 < this.f33042b.length) {
            E(i4);
        }
        int max = Math.max(1, Integer.highestOneBit((int) (i4 / this.f33045e)));
        if (max < 1073741824 && i4 / max > this.f33045e) {
            max <<= 1;
        }
        if (max < this.f33041a.length) {
            G(max);
        }
    }

    Iterator<V> J() {
        return new c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f33046f++;
        Arrays.fill(this.f33043c, 0, this.f33048h, (Object) null);
        Arrays.fill(this.f33044d, 0, this.f33048h, (Object) null);
        Arrays.fill(this.f33041a, -1);
        Arrays.fill(this.f33042b, -1L);
        this.f33048h = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return t(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        for (int i4 = 0; i4 < this.f33048h; i4++) {
            if (com.google.common.base.w.a(obj, this.f33044d[i4])) {
                return true;
            }
        }
        return false;
    }

    void d(int i4) {
    }

    int e(int i4, int i10) {
        return i4 - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f33050j;
        if (set == null) {
            Set<Map.Entry<K, V>> i4 = i();
            this.f33050j = i4;
            return i4;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        int t9 = t(obj);
        d(t9);
        if (t9 == -1) {
            return null;
        }
        return (V) this.f33044d[t9];
    }

    Set<Map.Entry<K, V>> i() {
        return new d();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.f33048h == 0;
    }

    Set<K> j() {
        return new f();
    }

    Collection<V> k() {
        return new h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f33049i;
        if (set == null) {
            Set<K> j4 = j();
            this.f33049i = j4;
            return j4;
        }
        return set;
    }

    Iterator<Map.Entry<K, V>> m() {
        return new b();
    }

    int n() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @NullableDecl
    public V put(@NullableDecl K k10, @NullableDecl V v9) {
        long[] jArr = this.f33042b;
        Object[] objArr = this.f33043c;
        Object[] objArr2 = this.f33044d;
        int d4 = h2.d(k10);
        int s9 = s() & d4;
        int i4 = this.f33048h;
        int[] iArr = this.f33041a;
        int i10 = iArr[s9];
        if (i10 == -1) {
            iArr[s9] = i4;
        } else {
            while (true) {
                long j4 = jArr[i10];
                if (o(j4) == d4 && com.google.common.base.w.a(k10, objArr[i10])) {
                    V v10 = (V) objArr2[i10];
                    objArr2[i10] = v9;
                    d(i10);
                    return v10;
                }
                int p9 = p(j4);
                if (p9 == -1) {
                    jArr[i10] = H(j4, i4);
                    break;
                }
                i10 = p9;
            }
        }
        if (i4 != Integer.MAX_VALUE) {
            int i11 = i4 + 1;
            F(i11);
            v(i4, k10, v9, d4);
            this.f33048h = i11;
            if (i4 >= this.f33047g) {
                G(this.f33041a.length * 2);
            }
            this.f33046f++;
            return null;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    int q(int i4) {
        int i10 = i4 + 1;
        if (i10 < this.f33048h) {
            return i10;
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @NullableDecl
    public V remove(@NullableDecl Object obj) {
        return C(obj, h2.d(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f33048h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(int i4, float f10) {
        com.google.common.base.a0.e(i4 >= 0, "Initial capacity must be non-negative");
        com.google.common.base.a0.e(f10 > 0.0f, "Illegal load factor");
        int a10 = h2.a(i4, f10);
        this.f33041a = A(a10);
        this.f33045e = f10;
        this.f33043c = new Object[i4];
        this.f33044d = new Object[i4];
        this.f33042b = y(i4);
        this.f33047g = Math.max(1, (int) (a10 * f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(int i4, @NullableDecl K k10, @NullableDecl V v9, int i10) {
        this.f33042b[i4] = (i10 << 32) | f33037n;
        this.f33043c[i4] = k10;
        this.f33044d[i4] = v9;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f33051k;
        if (collection == null) {
            Collection<V> k10 = k();
            this.f33051k = k10;
            return k10;
        }
        return collection;
    }

    Iterator<K> w() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(int i4) {
        int size = size() - 1;
        if (i4 < size) {
            Object[] objArr = this.f33043c;
            objArr[i4] = objArr[size];
            Object[] objArr2 = this.f33044d;
            objArr2[i4] = objArr2[size];
            objArr[size] = null;
            objArr2[size] = null;
            long[] jArr = this.f33042b;
            long j4 = jArr[size];
            jArr[i4] = j4;
            jArr[size] = -1;
            int o9 = o(j4) & s();
            int[] iArr = this.f33041a;
            int i10 = iArr[o9];
            if (i10 == size) {
                iArr[o9] = i4;
                return;
            }
            while (true) {
                long j10 = this.f33042b[i10];
                int p9 = p(j10);
                if (p9 == size) {
                    this.f33042b[i10] = H(j10, i4);
                    return;
                }
                i10 = p9;
            }
        } else {
            this.f33043c[i4] = null;
            this.f33044d[i4] = null;
            this.f33042b[i4] = -1;
        }
    }

    a0(int i4) {
        this(i4, 1.0f);
    }

    /* compiled from: CompactHashMap.java */
    /* loaded from: classes2.dex */
    private abstract class e<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f33056a;

        /* renamed from: b  reason: collision with root package name */
        int f33057b;

        /* renamed from: c  reason: collision with root package name */
        int f33058c;

        private e() {
            this.f33056a = a0.this.f33046f;
            this.f33057b = a0.this.n();
            this.f33058c = -1;
        }

        private void a() {
            if (a0.this.f33046f != this.f33056a) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T b(int i4);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33057b >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            if (hasNext()) {
                int i4 = this.f33057b;
                this.f33058c = i4;
                T b10 = b(i4);
                this.f33057b = a0.this.q(this.f33057b);
                return b10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            y.e(this.f33058c >= 0);
            this.f33056a++;
            a0.this.D(this.f33058c);
            this.f33057b = a0.this.e(this.f33057b, this.f33058c);
            this.f33058c = -1;
        }

        /* synthetic */ e(a0 a0Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(int i4, float f10) {
        u(i4, f10);
    }
}
