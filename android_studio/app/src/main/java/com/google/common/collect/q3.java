package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.l3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ObjectCountHashMap.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class q3<K> {

    /* renamed from: i  reason: collision with root package name */
    private static final int f33835i = 1073741824;

    /* renamed from: j  reason: collision with root package name */
    static final float f33836j = 1.0f;

    /* renamed from: k  reason: collision with root package name */
    private static final long f33837k = 4294967295L;

    /* renamed from: l  reason: collision with root package name */
    private static final long f33838l = -4294967296L;

    /* renamed from: m  reason: collision with root package name */
    static final int f33839m = 3;

    /* renamed from: n  reason: collision with root package name */
    static final int f33840n = -1;

    /* renamed from: a  reason: collision with root package name */
    transient Object[] f33841a;

    /* renamed from: b  reason: collision with root package name */
    transient int[] f33842b;

    /* renamed from: c  reason: collision with root package name */
    transient int f33843c;

    /* renamed from: d  reason: collision with root package name */
    transient int f33844d;

    /* renamed from: e  reason: collision with root package name */
    private transient int[] f33845e;
    @h3.d

    /* renamed from: f  reason: collision with root package name */
    transient long[] f33846f;

    /* renamed from: g  reason: collision with root package name */
    private transient float f33847g;

    /* renamed from: h  reason: collision with root package name */
    private transient int f33848h;

    /* compiled from: ObjectCountHashMap.java */
    /* loaded from: classes2.dex */
    class a extends l3.f<K> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        final K f33849a;

        /* renamed from: b  reason: collision with root package name */
        int f33850b;

        a(int i4) {
            this.f33849a = (K) q3.this.f33841a[i4];
            this.f33850b = i4;
        }

        @CanIgnoreReturnValue
        public int a(int i4) {
            b();
            int i10 = this.f33850b;
            if (i10 == -1) {
                q3.this.v(this.f33849a, i4);
                return 0;
            }
            int[] iArr = q3.this.f33842b;
            int i11 = iArr[i10];
            iArr[i10] = i4;
            return i11;
        }

        void b() {
            int i4 = this.f33850b;
            if (i4 == -1 || i4 >= q3.this.D() || !com.google.common.base.w.a(this.f33849a, q3.this.f33841a[this.f33850b])) {
                this.f33850b = q3.this.n(this.f33849a);
            }
        }

        @Override // com.google.common.collect.k3.a
        public int getCount() {
            b();
            int i4 = this.f33850b;
            if (i4 == -1) {
                return 0;
            }
            return q3.this.f33842b[i4];
        }

        @Override // com.google.common.collect.k3.a
        public K getElement() {
            return this.f33849a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q3() {
        o(3, 1.0f);
    }

    private void A(int i4) {
        int length = this.f33846f.length;
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

    private void B(int i4) {
        if (this.f33845e.length >= 1073741824) {
            this.f33848h = Integer.MAX_VALUE;
            return;
        }
        int i10 = ((int) (i4 * this.f33847g)) + 1;
        int[] s9 = s(i4);
        long[] jArr = this.f33846f;
        int length = s9.length - 1;
        for (int i11 = 0; i11 < this.f33843c; i11++) {
            int i12 = i(jArr[i11]);
            int i13 = i12 & length;
            int i14 = s9[i13];
            s9[i13] = i11;
            jArr[i11] = (i12 << 32) | (i14 & f33837k);
        }
        this.f33848h = i10;
        this.f33845e = s9;
    }

    private static long E(long j4, int i4) {
        return (j4 & f33838l) | (i4 & f33837k);
    }

    public static <K> q3<K> c() {
        return new q3<>();
    }

    public static <K> q3<K> d(int i4) {
        return new q3<>(i4);
    }

    private static int i(long j4) {
        return (int) (j4 >>> 32);
    }

    private static int k(long j4) {
        return (int) j4;
    }

    private int m() {
        return this.f33845e.length - 1;
    }

    private static long[] r(int i4) {
        long[] jArr = new long[i4];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private static int[] s(int i4) {
        int[] iArr = new int[i4];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private int x(@NullableDecl Object obj, int i4) {
        int m9 = m() & i4;
        int i10 = this.f33845e[m9];
        if (i10 == -1) {
            return 0;
        }
        int i11 = -1;
        while (true) {
            if (i(this.f33846f[i10]) == i4 && com.google.common.base.w.a(obj, this.f33841a[i10])) {
                int i12 = this.f33842b[i10];
                if (i11 == -1) {
                    this.f33845e[m9] = k(this.f33846f[i10]);
                } else {
                    long[] jArr = this.f33846f;
                    jArr[i11] = E(jArr[i11], k(jArr[i10]));
                }
                q(i10);
                this.f33843c--;
                this.f33844d++;
                return i12;
            }
            int k10 = k(this.f33846f[i10]);
            if (k10 == -1) {
                return 0;
            }
            i11 = i10;
            i10 = k10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C(int i4, int i10) {
        com.google.common.base.a0.C(i4, this.f33843c);
        this.f33842b[i4] = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int D() {
        return this.f33843c;
    }

    public void a() {
        this.f33844d++;
        Arrays.fill(this.f33841a, 0, this.f33843c, (Object) null);
        Arrays.fill(this.f33842b, 0, this.f33843c, 0);
        Arrays.fill(this.f33845e, -1);
        Arrays.fill(this.f33846f, -1L);
        this.f33843c = 0;
    }

    public boolean b(@NullableDecl Object obj) {
        return n(obj) != -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i4) {
        if (i4 > this.f33846f.length) {
            z(i4);
        }
        if (i4 >= this.f33848h) {
            B(Math.max(2, Integer.highestOneBit(i4 - 1) << 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f33843c == 0 ? -1 : 0;
    }

    public int g(@NullableDecl Object obj) {
        int n9 = n(obj);
        if (n9 == -1) {
            return 0;
        }
        return this.f33842b[n9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k3.a<K> h(int i4) {
        com.google.common.base.a0.C(i4, this.f33843c);
        return new a(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public K j(int i4) {
        com.google.common.base.a0.C(i4, this.f33843c);
        return (K) this.f33841a[i4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l(int i4) {
        com.google.common.base.a0.C(i4, this.f33843c);
        return this.f33842b[i4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int n(@NullableDecl Object obj) {
        int d4 = h2.d(obj);
        int i4 = this.f33845e[m() & d4];
        while (i4 != -1) {
            long j4 = this.f33846f[i4];
            if (i(j4) == d4 && com.google.common.base.w.a(obj, this.f33841a[i4])) {
                return i4;
            }
            i4 = k(j4);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(int i4, float f10) {
        com.google.common.base.a0.e(i4 >= 0, "Initial capacity must be non-negative");
        com.google.common.base.a0.e(f10 > 0.0f, "Illegal load factor");
        int a10 = h2.a(i4, f10);
        this.f33845e = s(a10);
        this.f33847g = f10;
        this.f33841a = new Object[i4];
        this.f33842b = new int[i4];
        this.f33846f = r(i4);
        this.f33848h = Math.max(1, (int) (a10 * f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(int i4, @NullableDecl K k10, int i10, int i11) {
        this.f33846f[i4] = (i11 << 32) | f33837k;
        this.f33841a[i4] = k10;
        this.f33842b[i4] = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(int i4) {
        int D = D() - 1;
        if (i4 < D) {
            Object[] objArr = this.f33841a;
            objArr[i4] = objArr[D];
            int[] iArr = this.f33842b;
            iArr[i4] = iArr[D];
            objArr[D] = null;
            iArr[D] = 0;
            long[] jArr = this.f33846f;
            long j4 = jArr[D];
            jArr[i4] = j4;
            jArr[D] = -1;
            int i10 = i(j4) & m();
            int[] iArr2 = this.f33845e;
            int i11 = iArr2[i10];
            if (i11 == D) {
                iArr2[i10] = i4;
                return;
            }
            while (true) {
                long j10 = this.f33846f[i11];
                int k10 = k(j10);
                if (k10 == D) {
                    this.f33846f[i11] = E(j10, i4);
                    return;
                }
                i11 = k10;
            }
        } else {
            this.f33841a[i4] = null;
            this.f33842b[i4] = 0;
            this.f33846f[i4] = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int t(int i4) {
        int i10 = i4 + 1;
        if (i10 < this.f33843c) {
            return i10;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int u(int i4, int i10) {
        return i4 - 1;
    }

    @CanIgnoreReturnValue
    public int v(@NullableDecl K k10, int i4) {
        y.d(i4, "count");
        long[] jArr = this.f33846f;
        Object[] objArr = this.f33841a;
        int[] iArr = this.f33842b;
        int d4 = h2.d(k10);
        int m9 = m() & d4;
        int i10 = this.f33843c;
        int[] iArr2 = this.f33845e;
        int i11 = iArr2[m9];
        if (i11 == -1) {
            iArr2[m9] = i10;
        } else {
            while (true) {
                long j4 = jArr[i11];
                if (i(j4) == d4 && com.google.common.base.w.a(k10, objArr[i11])) {
                    int i12 = iArr[i11];
                    iArr[i11] = i4;
                    return i12;
                }
                int k11 = k(j4);
                if (k11 == -1) {
                    jArr[i11] = E(j4, i10);
                    break;
                }
                i11 = k11;
            }
        }
        if (i10 != Integer.MAX_VALUE) {
            int i13 = i10 + 1;
            A(i13);
            p(i10, k10, i4, d4);
            this.f33843c = i13;
            if (i10 >= this.f33848h) {
                B(this.f33845e.length * 2);
            }
            this.f33844d++;
            return 0;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    @CanIgnoreReturnValue
    public int w(@NullableDecl Object obj) {
        return x(obj, h2.d(obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public int y(int i4) {
        return x(this.f33841a[i4], i(this.f33846f[i4]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(int i4) {
        this.f33841a = Arrays.copyOf(this.f33841a, i4);
        this.f33842b = Arrays.copyOf(this.f33842b, i4);
        long[] jArr = this.f33846f;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i4);
        if (i4 > length) {
            Arrays.fill(copyOf, length, i4, -1L);
        }
        this.f33846f = copyOf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q3(q3<? extends K> q3Var) {
        o(q3Var.D(), 1.0f);
        int f10 = q3Var.f();
        while (f10 != -1) {
            v(q3Var.j(f10), q3Var.l(f10));
            f10 = q3Var.t(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q3(int i4) {
        this(i4, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q3(int i4, float f10) {
        o(i4, f10);
    }
}
