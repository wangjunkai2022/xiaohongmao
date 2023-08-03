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

/* compiled from: Booleans.java */
@h3.b
/* loaded from: classes2.dex */
public final class a {

    /* compiled from: Booleans.java */
    @h3.b
    /* renamed from: com.google.common.primitives.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0259a extends AbstractList<Boolean> implements RandomAccess, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34800d = 0;

        /* renamed from: a  reason: collision with root package name */
        final boolean[] f34801a;

        /* renamed from: b  reason: collision with root package name */
        final int f34802b;

        /* renamed from: c  reason: collision with root package name */
        final int f34803c;

        C0259a(boolean[] zArr) {
            this(zArr, 0, zArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Boolean get(int i4) {
            a0.C(i4, size());
            return Boolean.valueOf(this.f34801a[this.f34802b + i4]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public Boolean set(int i4, Boolean bool) {
            a0.C(i4, size());
            boolean[] zArr = this.f34801a;
            int i10 = this.f34802b;
            boolean z9 = zArr[i10 + i4];
            zArr[i10 + i4] = ((Boolean) a0.E(bool)).booleanValue();
            return Boolean.valueOf(z9);
        }

        boolean[] c() {
            return Arrays.copyOfRange(this.f34801a, this.f34802b, this.f34803c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Boolean) && a.l(this.f34801a, ((Boolean) obj).booleanValue(), this.f34802b, this.f34803c) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof C0259a) {
                C0259a c0259a = (C0259a) obj;
                int size = size();
                if (c0259a.size() != size) {
                    return false;
                }
                for (int i4 = 0; i4 < size; i4++) {
                    if (this.f34801a[this.f34802b + i4] != c0259a.f34801a[c0259a.f34802b + i4]) {
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
            for (int i10 = this.f34802b; i10 < this.f34803c; i10++) {
                i4 = (i4 * 31) + a.j(this.f34801a[i10]);
            }
            return i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int l10;
            if (!(obj instanceof Boolean) || (l10 = a.l(this.f34801a, ((Boolean) obj).booleanValue(), this.f34802b, this.f34803c)) < 0) {
                return -1;
            }
            return l10 - this.f34802b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int p9;
            if (!(obj instanceof Boolean) || (p9 = a.p(this.f34801a, ((Boolean) obj).booleanValue(), this.f34802b, this.f34803c)) < 0) {
                return -1;
            }
            return p9 - this.f34802b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34803c - this.f34802b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Boolean> subList(int i4, int i10) {
            a0.f0(i4, i10, size());
            if (i4 == i10) {
                return Collections.emptyList();
            }
            boolean[] zArr = this.f34801a;
            int i11 = this.f34802b;
            return new C0259a(zArr, i4 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 7);
            sb.append(this.f34801a[this.f34802b] ? "[true" : "[false");
            int i4 = this.f34802b;
            while (true) {
                i4++;
                if (i4 < this.f34803c) {
                    sb.append(this.f34801a[i4] ? ", true" : ", false");
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        C0259a(boolean[] zArr, int i4, int i10) {
            this.f34801a = zArr;
            this.f34802b = i4;
            this.f34803c = i10;
        }
    }

    /* compiled from: Booleans.java */
    /* loaded from: classes2.dex */
    private enum b implements Comparator<Boolean> {
        TRUE_FIRST(1, "Booleans.trueFirst()"),
        FALSE_FIRST(-1, "Booleans.falseFirst()");
        

        /* renamed from: a  reason: collision with root package name */
        private final int f34807a;

        /* renamed from: b  reason: collision with root package name */
        private final String f34808b;

        b(int i4, String str) {
            this.f34807a = i4;
            this.f34808b = str;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Boolean bool, Boolean bool2) {
            return (bool2.booleanValue() ? this.f34807a : 0) - (bool.booleanValue() ? this.f34807a : 0);
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f34808b;
        }
    }

    /* compiled from: Booleans.java */
    /* loaded from: classes2.dex */
    private enum c implements Comparator<boolean[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(boolean[] zArr, boolean[] zArr2) {
            int min = Math.min(zArr.length, zArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                int d4 = a.d(zArr[i4], zArr2[i4]);
                if (d4 != 0) {
                    return d4;
                }
            }
            return zArr.length - zArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Booleans.lexicographicalComparator()";
        }
    }

    private a() {
    }

    public static List<Boolean> c(boolean... zArr) {
        if (zArr.length == 0) {
            return Collections.emptyList();
        }
        return new C0259a(zArr);
    }

    public static int d(boolean z9, boolean z10) {
        if (z9 == z10) {
            return 0;
        }
        return z9 ? 1 : -1;
    }

    public static boolean[] e(boolean[]... zArr) {
        int i4 = 0;
        for (boolean[] zArr2 : zArr) {
            i4 += zArr2.length;
        }
        boolean[] zArr3 = new boolean[i4];
        int i10 = 0;
        for (boolean[] zArr4 : zArr) {
            System.arraycopy(zArr4, 0, zArr3, i10, zArr4.length);
            i10 += zArr4.length;
        }
        return zArr3;
    }

    public static boolean f(boolean[] zArr, boolean z9) {
        for (boolean z10 : zArr) {
            if (z10 == z9) {
                return true;
            }
        }
        return false;
    }

    @h3.a
    public static int g(boolean... zArr) {
        int i4 = 0;
        for (boolean z9 : zArr) {
            if (z9) {
                i4++;
            }
        }
        return i4;
    }

    public static boolean[] h(boolean[] zArr, int i4, int i10) {
        a0.k(i4 >= 0, "Invalid minLength: %s", i4);
        a0.k(i10 >= 0, "Invalid padding: %s", i10);
        return zArr.length < i4 ? Arrays.copyOf(zArr, i4 + i10) : zArr;
    }

    @h3.a
    public static Comparator<Boolean> i() {
        return b.FALSE_FIRST;
    }

    public static int j(boolean z9) {
        return z9 ? 1231 : 1237;
    }

    public static int k(boolean[] zArr, boolean z9) {
        return l(zArr, z9, 0, zArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(boolean[] zArr, boolean z9, int i4, int i10) {
        while (i4 < i10) {
            if (zArr[i4] == z9) {
                return i4;
            }
            i4++;
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
    public static int m(boolean[] r5, boolean[] r6) {
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
            boolean r3 = r5[r3]
            boolean r4 = r6[r2]
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.a.m(boolean[], boolean[]):int");
    }

    public static String n(String str, boolean... zArr) {
        a0.E(str);
        if (zArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(zArr.length * 7);
        sb.append(zArr[0]);
        for (int i4 = 1; i4 < zArr.length; i4++) {
            sb.append(str);
            sb.append(zArr[i4]);
        }
        return sb.toString();
    }

    public static int o(boolean[] zArr, boolean z9) {
        return p(zArr, z9, 0, zArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(boolean[] zArr, boolean z9, int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            if (zArr[i11] == z9) {
                return i11;
            }
        }
        return -1;
    }

    public static Comparator<boolean[]> q() {
        return c.INSTANCE;
    }

    public static void r(boolean[] zArr) {
        a0.E(zArr);
        s(zArr, 0, zArr.length);
    }

    public static void s(boolean[] zArr, int i4, int i10) {
        a0.E(zArr);
        a0.f0(i4, i10, zArr.length);
        for (int i11 = i10 - 1; i4 < i11; i11--) {
            boolean z9 = zArr[i4];
            zArr[i4] = zArr[i11];
            zArr[i11] = z9;
            i4++;
        }
    }

    public static boolean[] t(Collection<Boolean> collection) {
        if (collection instanceof C0259a) {
            return ((C0259a) collection).c();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        boolean[] zArr = new boolean[length];
        for (int i4 = 0; i4 < length; i4++) {
            zArr[i4] = ((Boolean) a0.E(array[i4])).booleanValue();
        }
        return zArr;
    }

    @h3.a
    public static Comparator<Boolean> u() {
        return b.TRUE_FIRST;
    }
}
