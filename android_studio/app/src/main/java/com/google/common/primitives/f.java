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

/* compiled from: Ints.java */
@h3.b
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final int f34841a = 4;

    /* renamed from: b  reason: collision with root package name */
    public static final int f34842b = 1073741824;

    /* compiled from: Ints.java */
    @h3.b
    /* loaded from: classes2.dex */
    private static class a extends AbstractList<Integer> implements RandomAccess, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34843d = 0;

        /* renamed from: a  reason: collision with root package name */
        final int[] f34844a;

        /* renamed from: b  reason: collision with root package name */
        final int f34845b;

        /* renamed from: c  reason: collision with root package name */
        final int f34846c;

        a(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Integer get(int i4) {
            a0.C(i4, size());
            return Integer.valueOf(this.f34844a[this.f34845b + i4]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public Integer set(int i4, Integer num) {
            a0.C(i4, size());
            int[] iArr = this.f34844a;
            int i10 = this.f34845b;
            int i11 = iArr[i10 + i4];
            iArr[i10 + i4] = ((Integer) a0.E(num)).intValue();
            return Integer.valueOf(i11);
        }

        int[] c() {
            return Arrays.copyOfRange(this.f34844a, this.f34845b, this.f34846c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Integer) && f.n(this.f34844a, ((Integer) obj).intValue(), this.f34845b, this.f34846c) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i4 = 0; i4 < size; i4++) {
                    if (this.f34844a[this.f34845b + i4] != aVar.f34844a[aVar.f34845b + i4]) {
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
            for (int i10 = this.f34845b; i10 < this.f34846c; i10++) {
                i4 = (i4 * 31) + f.l(this.f34844a[i10]);
            }
            return i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int n9;
            if (!(obj instanceof Integer) || (n9 = f.n(this.f34844a, ((Integer) obj).intValue(), this.f34845b, this.f34846c)) < 0) {
                return -1;
            }
            return n9 - this.f34845b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int r9;
            if (!(obj instanceof Integer) || (r9 = f.r(this.f34844a, ((Integer) obj).intValue(), this.f34845b, this.f34846c)) < 0) {
                return -1;
            }
            return r9 - this.f34845b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34846c - this.f34845b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i4, int i10) {
            a0.f0(i4, i10, size());
            if (i4 == i10) {
                return Collections.emptyList();
            }
            int[] iArr = this.f34844a;
            int i11 = this.f34845b;
            return new a(iArr, i4 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            sb.append(this.f34844a[this.f34845b]);
            int i4 = this.f34845b;
            while (true) {
                i4++;
                if (i4 < this.f34846c) {
                    sb.append(", ");
                    sb.append(this.f34844a[i4]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        a(int[] iArr, int i4, int i10) {
            this.f34844a = iArr;
            this.f34845b = i4;
            this.f34846c = i10;
        }
    }

    /* compiled from: Ints.java */
    /* loaded from: classes2.dex */
    private static final class b extends com.google.common.base.h<String, Integer> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        static final b f34847c = new b();

        /* renamed from: d  reason: collision with root package name */
        private static final long f34848d = 1;

        private b() {
        }

        private Object r() {
            return f34847c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: p */
        public String k(Integer num) {
            return num.toString();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: q */
        public Integer l(String str) {
            return Integer.decode(str);
        }

        public String toString() {
            return "Ints.stringConverter()";
        }
    }

    /* compiled from: Ints.java */
    /* loaded from: classes2.dex */
    private enum c implements Comparator<int[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(int[] iArr, int[] iArr2) {
            int min = Math.min(iArr.length, iArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                int e4 = f.e(iArr[i4], iArr2[i4]);
                if (e4 != 0) {
                    return e4;
                }
            }
            return iArr.length - iArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Ints.lexicographicalComparator()";
        }
    }

    private f() {
    }

    @h3.a
    public static com.google.common.base.h<String, Integer> A() {
        return b.f34847c;
    }

    public static int[] B(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).c();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4] = ((Number) a0.E(array[i4])).intValue();
        }
        return iArr;
    }

    public static byte[] C(int i4) {
        return new byte[]{(byte) (i4 >> 24), (byte) (i4 >> 16), (byte) (i4 >> 8), (byte) i4};
    }

    @NullableDecl
    @h3.a
    public static Integer D(String str) {
        return E(str, 10);
    }

    @NullableDecl
    @h3.a
    public static Integer E(String str, int i4) {
        Long C = g.C(str, i4);
        if (C == null || C.longValue() != C.intValue()) {
            return null;
        }
        return Integer.valueOf(C.intValue());
    }

    public static List<Integer> c(int... iArr) {
        if (iArr.length == 0) {
            return Collections.emptyList();
        }
        return new a(iArr);
    }

    public static int d(long j4) {
        int i4 = (int) j4;
        a0.p(((long) i4) == j4, "Out of range: %s", j4);
        return i4;
    }

    public static int e(int i4, int i10) {
        if (i4 < i10) {
            return -1;
        }
        return i4 > i10 ? 1 : 0;
    }

    public static int[] f(int[]... iArr) {
        int i4 = 0;
        for (int[] iArr2 : iArr) {
            i4 += iArr2.length;
        }
        int[] iArr3 = new int[i4];
        int i10 = 0;
        for (int[] iArr4 : iArr) {
            System.arraycopy(iArr4, 0, iArr3, i10, iArr4.length);
            i10 += iArr4.length;
        }
        return iArr3;
    }

    @h3.a
    public static int g(int i4, int i10, int i11) {
        a0.m(i10 <= i11, "min (%s) must be less than or equal to max (%s)", i10, i11);
        return Math.min(Math.max(i4, i10), i11);
    }

    public static boolean h(int[] iArr, int i4) {
        for (int i10 : iArr) {
            if (i10 == i4) {
                return true;
            }
        }
        return false;
    }

    public static int[] i(int[] iArr, int i4, int i10) {
        a0.k(i4 >= 0, "Invalid minLength: %s", i4);
        a0.k(i10 >= 0, "Invalid padding: %s", i10);
        return iArr.length < i4 ? Arrays.copyOf(iArr, i4 + i10) : iArr;
    }

    public static int j(byte[] bArr) {
        a0.m(bArr.length >= 4, "array too small: %s < %s", bArr.length, 4);
        return k(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    public static int k(byte b10, byte b11, byte b12, byte b13) {
        return (b10 << com.google.common.base.c.B) | ((b11 & 255) << 16) | ((b12 & 255) << 8) | (b13 & 255);
    }

    public static int l(int i4) {
        return i4;
    }

    public static int m(int[] iArr, int i4) {
        return n(iArr, i4, 0, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int n(int[] iArr, int i4, int i10, int i11) {
        while (i10 < i11) {
            if (iArr[i10] == i4) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int o(int[] r5, int[] r6) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.a0.F(r5, r0)
            java.lang.String r0 = "target"
            com.google.common.base.a0.F(r6, r0)
            int r0 = r6.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = 0
        L10:
            int r2 = r5.length
            int r3 = r6.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2a
            r2 = 0
        L18:
            int r3 = r6.length
            if (r2 >= r3) goto L29
            int r3 = r0 + r2
            r3 = r5[r3]
            r4 = r6[r2]
            if (r3 == r4) goto L26
            int r0 = r0 + 1
            goto L10
        L26:
            int r2 = r2 + 1
            goto L18
        L29:
            return r0
        L2a:
            r5 = -1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.f.o(int[], int[]):int");
    }

    public static String p(String str, int... iArr) {
        a0.E(str);
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(iArr.length * 5);
        sb.append(iArr[0]);
        for (int i4 = 1; i4 < iArr.length; i4++) {
            sb.append(str);
            sb.append(iArr[i4]);
        }
        return sb.toString();
    }

    public static int q(int[] iArr, int i4) {
        return r(iArr, i4, 0, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(int[] iArr, int i4, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (iArr[i12] == i4) {
                return i12;
            }
        }
        return -1;
    }

    public static Comparator<int[]> s() {
        return c.INSTANCE;
    }

    public static int t(int... iArr) {
        a0.d(iArr.length > 0);
        int i4 = iArr[0];
        for (int i10 = 1; i10 < iArr.length; i10++) {
            if (iArr[i10] > i4) {
                i4 = iArr[i10];
            }
        }
        return i4;
    }

    public static int u(int... iArr) {
        a0.d(iArr.length > 0);
        int i4 = iArr[0];
        for (int i10 = 1; i10 < iArr.length; i10++) {
            if (iArr[i10] < i4) {
                i4 = iArr[i10];
            }
        }
        return i4;
    }

    public static void v(int[] iArr) {
        a0.E(iArr);
        w(iArr, 0, iArr.length);
    }

    public static void w(int[] iArr, int i4, int i10) {
        a0.E(iArr);
        a0.f0(i4, i10, iArr.length);
        for (int i11 = i10 - 1; i4 < i11; i11--) {
            int i12 = iArr[i4];
            iArr[i4] = iArr[i11];
            iArr[i11] = i12;
            i4++;
        }
    }

    public static int x(long j4) {
        if (j4 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j4 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j4;
    }

    public static void y(int[] iArr) {
        a0.E(iArr);
        z(iArr, 0, iArr.length);
    }

    public static void z(int[] iArr, int i4, int i10) {
        a0.E(iArr);
        a0.f0(i4, i10, iArr.length);
        Arrays.sort(iArr, i4, i10);
        w(iArr, i4, i10);
    }
}
