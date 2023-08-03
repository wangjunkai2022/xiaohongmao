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
import kotlin.jvm.internal.CharCompanionObject;
import okhttp3.internal.ws.WebSocketProtocol;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Chars.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int f34815a = 2;

    /* compiled from: Chars.java */
    @h3.b
    /* loaded from: classes2.dex */
    private static class a extends AbstractList<Character> implements RandomAccess, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34816d = 0;

        /* renamed from: a  reason: collision with root package name */
        final char[] f34817a;

        /* renamed from: b  reason: collision with root package name */
        final int f34818b;

        /* renamed from: c  reason: collision with root package name */
        final int f34819c;

        a(char[] cArr) {
            this(cArr, 0, cArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Character get(int i4) {
            a0.C(i4, size());
            return Character.valueOf(this.f34817a[this.f34818b + i4]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public Character set(int i4, Character ch) {
            a0.C(i4, size());
            char[] cArr = this.f34817a;
            int i10 = this.f34818b;
            char c10 = cArr[i10 + i4];
            cArr[i10 + i4] = ((Character) a0.E(ch)).charValue();
            return Character.valueOf(c10);
        }

        char[] c() {
            return Arrays.copyOfRange(this.f34817a, this.f34818b, this.f34819c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Character) && c.n(this.f34817a, ((Character) obj).charValue(), this.f34818b, this.f34819c) != -1;
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
                    if (this.f34817a[this.f34818b + i4] != aVar.f34817a[aVar.f34818b + i4]) {
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
            for (int i10 = this.f34818b; i10 < this.f34819c; i10++) {
                i4 = (i4 * 31) + c.l(this.f34817a[i10]);
            }
            return i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int n9;
            if (!(obj instanceof Character) || (n9 = c.n(this.f34817a, ((Character) obj).charValue(), this.f34818b, this.f34819c)) < 0) {
                return -1;
            }
            return n9 - this.f34818b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int r9;
            if (!(obj instanceof Character) || (r9 = c.r(this.f34817a, ((Character) obj).charValue(), this.f34818b, this.f34819c)) < 0) {
                return -1;
            }
            return r9 - this.f34818b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34819c - this.f34818b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Character> subList(int i4, int i10) {
            a0.f0(i4, i10, size());
            if (i4 == i10) {
                return Collections.emptyList();
            }
            char[] cArr = this.f34817a;
            int i11 = this.f34818b;
            return new a(cArr, i4 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 3);
            sb.append('[');
            sb.append(this.f34817a[this.f34818b]);
            int i4 = this.f34818b;
            while (true) {
                i4++;
                if (i4 < this.f34819c) {
                    sb.append(", ");
                    sb.append(this.f34817a[i4]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        a(char[] cArr, int i4, int i10) {
            this.f34817a = cArr;
            this.f34818b = i4;
            this.f34819c = i10;
        }
    }

    /* compiled from: Chars.java */
    /* loaded from: classes2.dex */
    private enum b implements Comparator<char[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(char[] cArr, char[] cArr2) {
            int min = Math.min(cArr.length, cArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                int e4 = c.e(cArr[i4], cArr2[i4]);
                if (e4 != 0) {
                    return e4;
                }
            }
            return cArr.length - cArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Chars.lexicographicalComparator()";
        }
    }

    private c() {
    }

    public static char[] A(Collection<Character> collection) {
        if (collection instanceof a) {
            return ((a) collection).c();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        char[] cArr = new char[length];
        for (int i4 = 0; i4 < length; i4++) {
            cArr[i4] = ((Character) a0.E(array[i4])).charValue();
        }
        return cArr;
    }

    @h3.c
    public static byte[] B(char c10) {
        return new byte[]{(byte) (c10 >> '\b'), (byte) c10};
    }

    public static List<Character> c(char... cArr) {
        if (cArr.length == 0) {
            return Collections.emptyList();
        }
        return new a(cArr);
    }

    public static char d(long j4) {
        char c10 = (char) j4;
        a0.p(((long) c10) == j4, "Out of range: %s", j4);
        return c10;
    }

    public static int e(char c10, char c11) {
        return c10 - c11;
    }

    public static char[] f(char[]... cArr) {
        int i4 = 0;
        for (char[] cArr2 : cArr) {
            i4 += cArr2.length;
        }
        char[] cArr3 = new char[i4];
        int i10 = 0;
        for (char[] cArr4 : cArr) {
            System.arraycopy(cArr4, 0, cArr3, i10, cArr4.length);
            i10 += cArr4.length;
        }
        return cArr3;
    }

    @h3.a
    public static char g(char c10, char c11, char c12) {
        a0.g(c11 <= c12, "min (%s) must be less than or equal to max (%s)", c11, c12);
        return c10 < c11 ? c11 : c10 < c12 ? c10 : c12;
    }

    public static boolean h(char[] cArr, char c10) {
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }

    public static char[] i(char[] cArr, int i4, int i10) {
        a0.k(i4 >= 0, "Invalid minLength: %s", i4);
        a0.k(i10 >= 0, "Invalid padding: %s", i10);
        return cArr.length < i4 ? Arrays.copyOf(cArr, i4 + i10) : cArr;
    }

    @h3.c
    public static char j(byte[] bArr) {
        a0.m(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return k(bArr[0], bArr[1]);
    }

    @h3.c
    public static char k(byte b10, byte b11) {
        return (char) ((b10 << 8) | (b11 & 255));
    }

    public static int l(char c10) {
        return c10;
    }

    public static int m(char[] cArr, char c10) {
        return n(cArr, c10, 0, cArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int n(char[] cArr, char c10, int i4, int i10) {
        while (i4 < i10) {
            if (cArr[i4] == c10) {
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
    public static int o(char[] r5, char[] r6) {
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
            char r3 = r5[r3]
            char r4 = r6[r2]
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.c.o(char[], char[]):int");
    }

    public static String p(String str, char... cArr) {
        a0.E(str);
        int length = cArr.length;
        if (length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder((str.length() * (length - 1)) + length);
        sb.append(cArr[0]);
        for (int i4 = 1; i4 < length; i4++) {
            sb.append(str);
            sb.append(cArr[i4]);
        }
        return sb.toString();
    }

    public static int q(char[] cArr, char c10) {
        return r(cArr, c10, 0, cArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(char[] cArr, char c10, int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            if (cArr[i11] == c10) {
                return i11;
            }
        }
        return -1;
    }

    public static Comparator<char[]> s() {
        return b.INSTANCE;
    }

    public static char t(char... cArr) {
        a0.d(cArr.length > 0);
        char c10 = cArr[0];
        for (int i4 = 1; i4 < cArr.length; i4++) {
            if (cArr[i4] > c10) {
                c10 = cArr[i4];
            }
        }
        return c10;
    }

    public static char u(char... cArr) {
        a0.d(cArr.length > 0);
        char c10 = cArr[0];
        for (int i4 = 1; i4 < cArr.length; i4++) {
            if (cArr[i4] < c10) {
                c10 = cArr[i4];
            }
        }
        return c10;
    }

    public static void v(char[] cArr) {
        a0.E(cArr);
        w(cArr, 0, cArr.length);
    }

    public static void w(char[] cArr, int i4, int i10) {
        a0.E(cArr);
        a0.f0(i4, i10, cArr.length);
        for (int i11 = i10 - 1; i4 < i11; i11--) {
            char c10 = cArr[i4];
            cArr[i4] = cArr[i11];
            cArr[i11] = c10;
            i4++;
        }
    }

    public static char x(long j4) {
        if (j4 > WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            return CharCompanionObject.MAX_VALUE;
        }
        if (j4 < 0) {
            return (char) 0;
        }
        return (char) j4;
    }

    public static void y(char[] cArr) {
        a0.E(cArr);
        z(cArr, 0, cArr.length);
    }

    public static void z(char[] cArr, int i4, int i10) {
        a0.E(cArr);
        a0.f0(i4, i10, cArr.length);
        Arrays.sort(cArr, i4, i10);
        w(cArr, i4, i10);
    }
}
