package com.google.common.primitives;

import com.google.common.base.a0;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Longs.java */
@h3.b
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final int f34851a = 8;

    /* renamed from: b  reason: collision with root package name */
    public static final long f34852b = 4611686018427387904L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Longs.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final byte[] f34853a;

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i4 = 0; i4 <= 9; i4++) {
                bArr[i4 + 48] = (byte) i4;
            }
            for (int i10 = 0; i10 <= 26; i10++) {
                byte b10 = (byte) (i10 + 10);
                bArr[i10 + 65] = b10;
                bArr[i10 + 97] = b10;
            }
            f34853a = bArr;
        }

        private a() {
        }

        static int a(char c10) {
            if (c10 < 128) {
                return f34853a[c10];
            }
            return -1;
        }
    }

    /* compiled from: Longs.java */
    /* loaded from: classes2.dex */
    private enum b implements Comparator<long[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(long[] jArr, long[] jArr2) {
            int min = Math.min(jArr.length, jArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                int d4 = g.d(jArr[i4], jArr2[i4]);
                if (d4 != 0) {
                    return d4;
                }
            }
            return jArr.length - jArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Longs.lexicographicalComparator()";
        }
    }

    /* compiled from: Longs.java */
    @h3.b
    /* loaded from: classes2.dex */
    private static class c extends AbstractList<Long> implements RandomAccess, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34856d = 0;

        /* renamed from: a  reason: collision with root package name */
        final long[] f34857a;

        /* renamed from: b  reason: collision with root package name */
        final int f34858b;

        /* renamed from: c  reason: collision with root package name */
        final int f34859c;

        c(long[] jArr) {
            this(jArr, 0, jArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Long get(int i4) {
            a0.C(i4, size());
            return Long.valueOf(this.f34857a[this.f34858b + i4]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public Long set(int i4, Long l10) {
            a0.C(i4, size());
            long[] jArr = this.f34857a;
            int i10 = this.f34858b;
            long j4 = jArr[i10 + i4];
            jArr[i10 + i4] = ((Long) a0.E(l10)).longValue();
            return Long.valueOf(j4);
        }

        long[] c() {
            return Arrays.copyOfRange(this.f34857a, this.f34858b, this.f34859c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Long) && g.m(this.f34857a, ((Long) obj).longValue(), this.f34858b, this.f34859c) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                int size = size();
                if (cVar.size() != size) {
                    return false;
                }
                for (int i4 = 0; i4 < size; i4++) {
                    if (this.f34857a[this.f34858b + i4] != cVar.f34857a[cVar.f34858b + i4]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i4 = 1;
            for (int i10 = this.f34858b; i10 < this.f34859c; i10++) {
                i4 = (i4 * 31) + g.k(this.f34857a[i10]);
            }
            return i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int m9;
            if (!(obj instanceof Long) || (m9 = g.m(this.f34857a, ((Long) obj).longValue(), this.f34858b, this.f34859c)) < 0) {
                return -1;
            }
            return m9 - this.f34858b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int q9;
            if (!(obj instanceof Long) || (q9 = g.q(this.f34857a, ((Long) obj).longValue(), this.f34858b, this.f34859c)) < 0) {
                return -1;
            }
            return q9 - this.f34858b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34859c - this.f34858b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i4, int i10) {
            a0.f0(i4, i10, size());
            if (i4 == i10) {
                return Collections.emptyList();
            }
            long[] jArr = this.f34857a;
            int i11 = this.f34858b;
            return new c(jArr, i4 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 10);
            sb.append('[');
            sb.append(this.f34857a[this.f34858b]);
            int i4 = this.f34858b;
            while (true) {
                i4++;
                if (i4 < this.f34859c) {
                    sb.append(", ");
                    sb.append(this.f34857a[i4]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        c(long[] jArr, int i4, int i10) {
            this.f34857a = jArr;
            this.f34858b = i4;
            this.f34859c = i10;
        }
    }

    /* compiled from: Longs.java */
    /* loaded from: classes2.dex */
    private static final class d extends com.google.common.base.h<String, Long> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        static final d f34860c = new d();

        /* renamed from: d  reason: collision with root package name */
        private static final long f34861d = 1;

        private d() {
        }

        private Object r() {
            return f34860c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: p */
        public String k(Long l10) {
            return l10.toString();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: q */
        public Long l(String str) {
            return Long.decode(str);
        }

        public String toString() {
            return "Longs.stringConverter()";
        }
    }

    private g() {
    }

    public static byte[] A(long j4) {
        byte[] bArr = new byte[8];
        for (int i4 = 7; i4 >= 0; i4--) {
            bArr[i4] = (byte) (255 & j4);
            j4 >>= 8;
        }
        return bArr;
    }

    @NullableDecl
    @h3.a
    public static Long B(String str) {
        return C(str, 10);
    }

    @NullableDecl
    @h3.a
    public static Long C(String str, int i4) {
        if (((String) a0.E(str)).isEmpty()) {
            return null;
        }
        if (i4 >= 2 && i4 <= 36) {
            int i10 = str.charAt(0) == '-' ? 1 : 0;
            if (i10 == str.length()) {
                return null;
            }
            int i11 = i10 + 1;
            int a10 = a.a(str.charAt(i10));
            if (a10 < 0 || a10 >= i4) {
                return null;
            }
            long j4 = -a10;
            long j10 = i4;
            long j11 = Long.MIN_VALUE / j10;
            while (i11 < str.length()) {
                int i12 = i11 + 1;
                int a11 = a.a(str.charAt(i11));
                if (a11 < 0 || a11 >= i4 || j4 < j11) {
                    return null;
                }
                long j12 = j4 * j10;
                long j13 = a11;
                if (j12 < j13 - Long.MIN_VALUE) {
                    return null;
                }
                j4 = j12 - j13;
                i11 = i12;
            }
            if (i10 != 0) {
                return Long.valueOf(j4);
            }
            if (j4 == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(-j4);
        }
        throw new IllegalArgumentException("radix must be between MIN_RADIX and MAX_RADIX but was " + i4);
    }

    public static List<Long> c(long... jArr) {
        if (jArr.length == 0) {
            return Collections.emptyList();
        }
        return new c(jArr);
    }

    public static int d(long j4, long j10) {
        int i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
        if (i4 < 0) {
            return -1;
        }
        return i4 > 0 ? 1 : 0;
    }

    public static long[] e(long[]... jArr) {
        int i4 = 0;
        for (long[] jArr2 : jArr) {
            i4 += jArr2.length;
        }
        long[] jArr3 = new long[i4];
        int i10 = 0;
        for (long[] jArr4 : jArr) {
            System.arraycopy(jArr4, 0, jArr3, i10, jArr4.length);
            i10 += jArr4.length;
        }
        return jArr3;
    }

    @h3.a
    public static long f(long j4, long j10, long j11) {
        a0.s(j10 <= j11, "min (%s) must be less than or equal to max (%s)", j10, j11);
        return Math.min(Math.max(j4, j10), j11);
    }

    public static boolean g(long[] jArr, long j4) {
        for (long j10 : jArr) {
            if (j10 == j4) {
                return true;
            }
        }
        return false;
    }

    public static long[] h(long[] jArr, int i4, int i10) {
        a0.k(i4 >= 0, "Invalid minLength: %s", i4);
        a0.k(i10 >= 0, "Invalid padding: %s", i10);
        return jArr.length < i4 ? Arrays.copyOf(jArr, i4 + i10) : jArr;
    }

    public static long i(byte[] bArr) {
        a0.m(bArr.length >= 8, "array too small: %s < %s", bArr.length, 8);
        return j(bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]);
    }

    public static long j(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17) {
        return ((b11 & 255) << 48) | ((b10 & 255) << 56) | ((b12 & 255) << 40) | ((b13 & 255) << 32) | ((b14 & 255) << 24) | ((b15 & 255) << 16) | ((b16 & 255) << 8) | (b17 & 255);
    }

    public static int k(long j4) {
        return (int) (j4 ^ (j4 >>> 32));
    }

    public static int l(long[] jArr, long j4) {
        return m(jArr, j4, 0, jArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int m(long[] jArr, long j4, int i4, int i10) {
        while (i4 < i10) {
            if (jArr[i4] == j4) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int n(long[] r8, long[] r9) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.a0.F(r8, r0)
            java.lang.String r0 = "target"
            com.google.common.base.a0.F(r9, r0)
            int r0 = r9.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = 0
        L10:
            int r2 = r8.length
            int r3 = r9.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2c
            r2 = 0
        L18:
            int r3 = r9.length
            if (r2 >= r3) goto L2b
            int r3 = r0 + r2
            r3 = r8[r3]
            r5 = r9[r2]
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L28
            int r0 = r0 + 1
            goto L10
        L28:
            int r2 = r2 + 1
            goto L18
        L2b:
            return r0
        L2c:
            r8 = -1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.g.n(long[], long[]):int");
    }

    public static String o(String str, long... jArr) {
        a0.E(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 10);
        sb.append(jArr[0]);
        for (int i4 = 1; i4 < jArr.length; i4++) {
            sb.append(str);
            sb.append(jArr[i4]);
        }
        return sb.toString();
    }

    public static int p(long[] jArr, long j4) {
        return q(jArr, j4, 0, jArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int q(long[] jArr, long j4, int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            if (jArr[i11] == j4) {
                return i11;
            }
        }
        return -1;
    }

    public static Comparator<long[]> r() {
        return b.INSTANCE;
    }

    public static long s(long... jArr) {
        a0.d(jArr.length > 0);
        long j4 = jArr[0];
        for (int i4 = 1; i4 < jArr.length; i4++) {
            if (jArr[i4] > j4) {
                j4 = jArr[i4];
            }
        }
        return j4;
    }

    public static long t(long... jArr) {
        a0.d(jArr.length > 0);
        long j4 = jArr[0];
        for (int i4 = 1; i4 < jArr.length; i4++) {
            if (jArr[i4] < j4) {
                j4 = jArr[i4];
            }
        }
        return j4;
    }

    public static void u(long[] jArr) {
        a0.E(jArr);
        v(jArr, 0, jArr.length);
    }

    public static void v(long[] jArr, int i4, int i10) {
        a0.E(jArr);
        a0.f0(i4, i10, jArr.length);
        for (int i11 = i10 - 1; i4 < i11; i11--) {
            long j4 = jArr[i4];
            jArr[i4] = jArr[i11];
            jArr[i11] = j4;
            i4++;
        }
    }

    public static void w(long[] jArr) {
        a0.E(jArr);
        x(jArr, 0, jArr.length);
    }

    public static void x(long[] jArr, int i4, int i10) {
        a0.E(jArr);
        a0.f0(i4, i10, jArr.length);
        Arrays.sort(jArr, i4, i10);
        v(jArr, i4, i10);
    }

    @h3.a
    public static com.google.common.base.h<String, Long> y() {
        return d.f34860c;
    }

    public static long[] z(Collection<? extends Number> collection) {
        if (collection instanceof c) {
            return ((c) collection).c();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i4 = 0; i4 < length; i4++) {
            jArr[i4] = ((Number) a0.E(array[i4])).longValue();
        }
        return jArr;
    }
}
