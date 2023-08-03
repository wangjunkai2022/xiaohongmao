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
import kotlin.jvm.internal.ShortCompanionObject;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Shorts.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final int f34866a = 2;

    /* renamed from: b  reason: collision with root package name */
    public static final short f34867b = 16384;

    /* compiled from: Shorts.java */
    /* loaded from: classes2.dex */
    private enum a implements Comparator<short[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(short[] sArr, short[] sArr2) {
            int min = Math.min(sArr.length, sArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                int e4 = j.e(sArr[i4], sArr2[i4]);
                if (e4 != 0) {
                    return e4;
                }
            }
            return sArr.length - sArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Shorts.lexicographicalComparator()";
        }
    }

    /* compiled from: Shorts.java */
    @h3.b
    /* loaded from: classes2.dex */
    private static class b extends AbstractList<Short> implements RandomAccess, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34870d = 0;

        /* renamed from: a  reason: collision with root package name */
        final short[] f34871a;

        /* renamed from: b  reason: collision with root package name */
        final int f34872b;

        /* renamed from: c  reason: collision with root package name */
        final int f34873c;

        b(short[] sArr) {
            this(sArr, 0, sArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Short get(int i4) {
            a0.C(i4, size());
            return Short.valueOf(this.f34871a[this.f34872b + i4]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public Short set(int i4, Short sh) {
            a0.C(i4, size());
            short[] sArr = this.f34871a;
            int i10 = this.f34872b;
            short s9 = sArr[i10 + i4];
            sArr[i10 + i4] = ((Short) a0.E(sh)).shortValue();
            return Short.valueOf(s9);
        }

        short[] c() {
            return Arrays.copyOfRange(this.f34871a, this.f34872b, this.f34873c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(@NullableDecl Object obj) {
            return (obj instanceof Short) && j.n(this.f34871a, ((Short) obj).shortValue(), this.f34872b, this.f34873c) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                int size = size();
                if (bVar.size() != size) {
                    return false;
                }
                for (int i4 = 0; i4 < size; i4++) {
                    if (this.f34871a[this.f34872b + i4] != bVar.f34871a[bVar.f34872b + i4]) {
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
            for (int i10 = this.f34872b; i10 < this.f34873c; i10++) {
                i4 = (i4 * 31) + j.l(this.f34871a[i10]);
            }
            return i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(@NullableDecl Object obj) {
            int n9;
            if (!(obj instanceof Short) || (n9 = j.n(this.f34871a, ((Short) obj).shortValue(), this.f34872b, this.f34873c)) < 0) {
                return -1;
            }
            return n9 - this.f34872b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(@NullableDecl Object obj) {
            int r9;
            if (!(obj instanceof Short) || (r9 = j.r(this.f34871a, ((Short) obj).shortValue(), this.f34872b, this.f34873c)) < 0) {
                return -1;
            }
            return r9 - this.f34872b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34873c - this.f34872b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Short> subList(int i4, int i10) {
            a0.f0(i4, i10, size());
            if (i4 == i10) {
                return Collections.emptyList();
            }
            short[] sArr = this.f34871a;
            int i11 = this.f34872b;
            return new b(sArr, i4 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 6);
            sb.append('[');
            sb.append((int) this.f34871a[this.f34872b]);
            int i4 = this.f34872b;
            while (true) {
                i4++;
                if (i4 < this.f34873c) {
                    sb.append(", ");
                    sb.append((int) this.f34871a[i4]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        b(short[] sArr, int i4, int i10) {
            this.f34871a = sArr;
            this.f34872b = i4;
            this.f34873c = i10;
        }
    }

    /* compiled from: Shorts.java */
    /* loaded from: classes2.dex */
    private static final class c extends com.google.common.base.h<String, Short> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        static final c f34874c = new c();

        /* renamed from: d  reason: collision with root package name */
        private static final long f34875d = 1;

        private c() {
        }

        private Object r() {
            return f34874c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: p */
        public String k(Short sh) {
            return sh.toString();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: q */
        public Short l(String str) {
            return Short.decode(str);
        }

        public String toString() {
            return "Shorts.stringConverter()";
        }
    }

    private j() {
    }

    @h3.a
    public static com.google.common.base.h<String, Short> A() {
        return c.f34874c;
    }

    public static short[] B(Collection<? extends Number> collection) {
        if (collection instanceof b) {
            return ((b) collection).c();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        short[] sArr = new short[length];
        for (int i4 = 0; i4 < length; i4++) {
            sArr[i4] = ((Number) a0.E(array[i4])).shortValue();
        }
        return sArr;
    }

    @h3.c
    public static byte[] C(short s9) {
        return new byte[]{(byte) (s9 >> 8), (byte) s9};
    }

    public static List<Short> c(short... sArr) {
        if (sArr.length == 0) {
            return Collections.emptyList();
        }
        return new b(sArr);
    }

    public static short d(long j4) {
        short s9 = (short) j4;
        a0.p(((long) s9) == j4, "Out of range: %s", j4);
        return s9;
    }

    public static int e(short s9, short s10) {
        return s9 - s10;
    }

    public static short[] f(short[]... sArr) {
        int i4 = 0;
        for (short[] sArr2 : sArr) {
            i4 += sArr2.length;
        }
        short[] sArr3 = new short[i4];
        int i10 = 0;
        for (short[] sArr4 : sArr) {
            System.arraycopy(sArr4, 0, sArr3, i10, sArr4.length);
            i10 += sArr4.length;
        }
        return sArr3;
    }

    @h3.a
    public static short g(short s9, short s10, short s11) {
        a0.m(s10 <= s11, "min (%s) must be less than or equal to max (%s)", s10, s11);
        return s9 < s10 ? s10 : s9 < s11 ? s9 : s11;
    }

    public static boolean h(short[] sArr, short s9) {
        for (short s10 : sArr) {
            if (s10 == s9) {
                return true;
            }
        }
        return false;
    }

    public static short[] i(short[] sArr, int i4, int i10) {
        a0.k(i4 >= 0, "Invalid minLength: %s", i4);
        a0.k(i10 >= 0, "Invalid padding: %s", i10);
        return sArr.length < i4 ? Arrays.copyOf(sArr, i4 + i10) : sArr;
    }

    @h3.c
    public static short j(byte[] bArr) {
        a0.m(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return k(bArr[0], bArr[1]);
    }

    @h3.c
    public static short k(byte b10, byte b11) {
        return (short) ((b10 << 8) | (b11 & 255));
    }

    public static int l(short s9) {
        return s9;
    }

    public static int m(short[] sArr, short s9) {
        return n(sArr, s9, 0, sArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int n(short[] sArr, short s9, int i4, int i10) {
        while (i4 < i10) {
            if (sArr[i4] == s9) {
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
    public static int o(short[] r5, short[] r6) {
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
            short r3 = r5[r3]
            short r4 = r6[r2]
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.j.o(short[], short[]):int");
    }

    public static String p(String str, short... sArr) {
        a0.E(str);
        if (sArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(sArr.length * 6);
        sb.append((int) sArr[0]);
        for (int i4 = 1; i4 < sArr.length; i4++) {
            sb.append(str);
            sb.append((int) sArr[i4]);
        }
        return sb.toString();
    }

    public static int q(short[] sArr, short s9) {
        return r(sArr, s9, 0, sArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(short[] sArr, short s9, int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            if (sArr[i11] == s9) {
                return i11;
            }
        }
        return -1;
    }

    public static Comparator<short[]> s() {
        return a.INSTANCE;
    }

    public static short t(short... sArr) {
        a0.d(sArr.length > 0);
        short s9 = sArr[0];
        for (int i4 = 1; i4 < sArr.length; i4++) {
            if (sArr[i4] > s9) {
                s9 = sArr[i4];
            }
        }
        return s9;
    }

    public static short u(short... sArr) {
        a0.d(sArr.length > 0);
        short s9 = sArr[0];
        for (int i4 = 1; i4 < sArr.length; i4++) {
            if (sArr[i4] < s9) {
                s9 = sArr[i4];
            }
        }
        return s9;
    }

    public static void v(short[] sArr) {
        a0.E(sArr);
        w(sArr, 0, sArr.length);
    }

    public static void w(short[] sArr, int i4, int i10) {
        a0.E(sArr);
        a0.f0(i4, i10, sArr.length);
        for (int i11 = i10 - 1; i4 < i11; i11--) {
            short s9 = sArr[i4];
            sArr[i4] = sArr[i11];
            sArr[i11] = s9;
            i4++;
        }
    }

    public static short x(long j4) {
        return j4 > 32767 ? ShortCompanionObject.MAX_VALUE : j4 < -32768 ? ShortCompanionObject.MIN_VALUE : (short) j4;
    }

    public static void y(short[] sArr) {
        a0.E(sArr);
        z(sArr, 0, sArr.length);
    }

    public static void z(short[] sArr, int i4, int i10) {
        a0.E(sArr);
        a0.f0(i4, i10, sArr.length);
        Arrays.sort(sArr, i4, i10);
        w(sArr, i4, i10);
    }
}
