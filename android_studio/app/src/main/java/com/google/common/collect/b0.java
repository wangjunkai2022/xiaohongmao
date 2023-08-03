package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CompactHashSet.java */
@h3.c
/* loaded from: classes2.dex */
public class b0<E> extends AbstractSet<E> implements Serializable {

    /* renamed from: h  reason: collision with root package name */
    private static final int f33074h = 1073741824;

    /* renamed from: i  reason: collision with root package name */
    private static final float f33075i = 1.0f;

    /* renamed from: j  reason: collision with root package name */
    private static final long f33076j = 4294967295L;

    /* renamed from: k  reason: collision with root package name */
    private static final long f33077k = -4294967296L;

    /* renamed from: l  reason: collision with root package name */
    private static final int f33078l = 3;

    /* renamed from: m  reason: collision with root package name */
    static final int f33079m = -1;
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    private transient int[] f33080a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient long[] f33081b;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    transient Object[] f33082c;

    /* renamed from: d  reason: collision with root package name */
    transient float f33083d;

    /* renamed from: e  reason: collision with root package name */
    transient int f33084e;

    /* renamed from: f  reason: collision with root package name */
    private transient int f33085f;

    /* renamed from: g  reason: collision with root package name */
    private transient int f33086g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashSet.java */
    /* loaded from: classes2.dex */
    public class a implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        int f33087a;

        /* renamed from: b  reason: collision with root package name */
        int f33088b;

        /* renamed from: c  reason: collision with root package name */
        int f33089c = -1;

        a() {
            this.f33087a = b0.this.f33084e;
            this.f33088b = b0.this.l();
        }

        private void a() {
            if (b0.this.f33084e != this.f33087a) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33088b >= 0;
        }

        @Override // java.util.Iterator
        public E next() {
            a();
            if (hasNext()) {
                int i4 = this.f33088b;
                this.f33089c = i4;
                b0 b0Var = b0.this;
                E e4 = (E) b0Var.f33082c[i4];
                this.f33088b = b0Var.o(i4);
                return e4;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            y.e(this.f33089c >= 0);
            this.f33087a++;
            b0 b0Var = b0.this;
            b0Var.w(b0Var.f33082c[this.f33089c], b0.m(b0Var.f33081b[this.f33089c]));
            this.f33088b = b0.this.d(this.f33088b, this.f33089c);
            this.f33089c = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0() {
        q(3, 1.0f);
    }

    private void B(int i4) {
        int length = this.f33081b.length;
        if (i4 > length) {
            int max = Math.max(1, length >>> 1) + length;
            if (max < 0) {
                max = Integer.MAX_VALUE;
            }
            if (max != length) {
                z(max);
            }
        }
    }

    private void C(int i4) {
        if (this.f33080a.length >= 1073741824) {
            this.f33085f = Integer.MAX_VALUE;
            return;
        }
        int i10 = ((int) (i4 * this.f33083d)) + 1;
        int[] u9 = u(i4);
        long[] jArr = this.f33081b;
        int length = u9.length - 1;
        for (int i11 = 0; i11 < this.f33086g; i11++) {
            int m9 = m(jArr[i11]);
            int i12 = m9 & length;
            int i13 = u9[i12];
            u9[i12] = i11;
            jArr[i11] = (m9 << 32) | (i13 & f33076j);
        }
        this.f33085f = i10;
        this.f33080a = u9;
    }

    private static long D(long j4, int i4) {
        return (j4 & f33077k) | (i4 & f33076j);
    }

    private void F(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.f33086g);
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    public static <E> b0<E> e() {
        return new b0<>();
    }

    public static <E> b0<E> h(Collection<? extends E> collection) {
        b0<E> k10 = k(collection.size());
        k10.addAll(collection);
        return k10;
    }

    public static <E> b0<E> j(E... eArr) {
        b0<E> k10 = k(eArr.length);
        Collections.addAll(k10, eArr);
        return k10;
    }

    public static <E> b0<E> k(int i4) {
        return new b0<>(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int m(long j4) {
        return (int) (j4 >>> 32);
    }

    private static int n(long j4) {
        return (int) j4;
    }

    private int p() {
        return this.f33080a.length - 1;
    }

    private static long[] t(int i4) {
        long[] jArr = new long[i4];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private static int[] u(int i4) {
        int[] iArr = new int[i4];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void v(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        q(3, 1.0f);
        int readInt = objectInputStream.readInt();
        while (true) {
            readInt--;
            if (readInt < 0) {
                return;
            }
            add(objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public boolean w(Object obj, int i4) {
        int p9 = p() & i4;
        int i10 = this.f33080a[p9];
        if (i10 == -1) {
            return false;
        }
        int i11 = -1;
        while (true) {
            if (m(this.f33081b[i10]) == i4 && com.google.common.base.w.a(obj, this.f33082c[i10])) {
                if (i11 == -1) {
                    this.f33080a[p9] = n(this.f33081b[i10]);
                } else {
                    long[] jArr = this.f33081b;
                    jArr[i11] = D(jArr[i11], n(jArr[i10]));
                }
                s(i10);
                this.f33086g--;
                this.f33084e++;
                return true;
            }
            int n9 = n(this.f33081b[i10]);
            if (n9 == -1) {
                return false;
            }
            i11 = i10;
            i10 = n9;
        }
    }

    public void E() {
        int i4 = this.f33086g;
        if (i4 < this.f33081b.length) {
            z(i4);
        }
        int max = Math.max(1, Integer.highestOneBit((int) (i4 / this.f33083d)));
        if (max < 1073741824 && i4 / max > this.f33083d) {
            max <<= 1;
        }
        if (max < this.f33080a.length) {
            C(max);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean add(@NullableDecl E e4) {
        long[] jArr = this.f33081b;
        Object[] objArr = this.f33082c;
        int d4 = h2.d(e4);
        int p9 = p() & d4;
        int i4 = this.f33086g;
        int[] iArr = this.f33080a;
        int i10 = iArr[p9];
        if (i10 == -1) {
            iArr[p9] = i4;
        } else {
            while (true) {
                long j4 = jArr[i10];
                if (m(j4) == d4 && com.google.common.base.w.a(e4, objArr[i10])) {
                    return false;
                }
                int n9 = n(j4);
                if (n9 == -1) {
                    jArr[i10] = D(j4, i4);
                    break;
                }
                i10 = n9;
            }
        }
        if (i4 != Integer.MAX_VALUE) {
            int i11 = i4 + 1;
            B(i11);
            r(i4, e4, d4);
            this.f33086g = i11;
            if (i4 >= this.f33085f) {
                C(this.f33080a.length * 2);
            }
            this.f33084e++;
            return true;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f33084e++;
        Arrays.fill(this.f33082c, 0, this.f33086g, (Object) null);
        Arrays.fill(this.f33080a, -1);
        Arrays.fill(this.f33081b, -1L);
        this.f33086g = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        int d4 = h2.d(obj);
        int i4 = this.f33080a[p() & d4];
        while (i4 != -1) {
            long j4 = this.f33081b[i4];
            if (m(j4) == d4 && com.google.common.base.w.a(obj, this.f33082c[i4])) {
                return true;
            }
            i4 = n(j4);
        }
        return false;
    }

    int d(int i4, int i10) {
        return i4 - 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f33086g == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new a();
    }

    int l() {
        return isEmpty() ? -1 : 0;
    }

    int o(int i4) {
        int i10 = i4 + 1;
        if (i10 < this.f33086g) {
            return i10;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(int i4, float f10) {
        com.google.common.base.a0.e(i4 >= 0, "Initial capacity must be non-negative");
        com.google.common.base.a0.e(f10 > 0.0f, "Illegal load factor");
        int a10 = h2.a(i4, f10);
        this.f33080a = u(a10);
        this.f33083d = f10;
        this.f33082c = new Object[i4];
        this.f33081b = t(i4);
        this.f33085f = Math.max(1, (int) (a10 * f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(int i4, E e4, int i10) {
        this.f33081b[i4] = (i10 << 32) | f33076j;
        this.f33082c[i4] = e4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean remove(@NullableDecl Object obj) {
        return w(obj, h2.d(obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(int i4) {
        int size = size() - 1;
        if (i4 < size) {
            Object[] objArr = this.f33082c;
            objArr[i4] = objArr[size];
            objArr[size] = null;
            long[] jArr = this.f33081b;
            long j4 = jArr[size];
            jArr[i4] = j4;
            jArr[size] = -1;
            int m9 = m(j4) & p();
            int[] iArr = this.f33080a;
            int i10 = iArr[m9];
            if (i10 == size) {
                iArr[m9] = i4;
                return;
            }
            while (true) {
                long j10 = this.f33081b[i10];
                int n9 = n(j10);
                if (n9 == size) {
                    this.f33081b[i10] = D(j10, i4);
                    return;
                }
                i10 = n9;
            }
        } else {
            this.f33082c[i4] = null;
            this.f33081b[i4] = -1;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f33086g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return Arrays.copyOf(this.f33082c, this.f33086g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(int i4) {
        this.f33082c = Arrays.copyOf(this.f33082c, i4);
        long[] jArr = this.f33081b;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i4);
        if (i4 > length) {
            Arrays.fill(copyOf, length, i4, -1L);
        }
        this.f33081b = copyOf;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public <T> T[] toArray(T[] tArr) {
        return (T[]) p3.n(this.f33082c, 0, this.f33086g, tArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(int i4) {
        q(i4, 1.0f);
    }
}
