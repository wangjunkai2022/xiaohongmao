package com.google.common.primitives;

import com.google.common.base.a0;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Bytes.java */
@h3.b
/* loaded from: classes2.dex */
public final class b {

    /* compiled from: Bytes.java */
    @h3.b
    /* loaded from: classes2.dex */
    private static class a extends AbstractList<Byte> implements RandomAccess, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34811d = 0;

        /* renamed from: a  reason: collision with root package name */
        final byte[] f34812a;

        /* renamed from: b  reason: collision with root package name */
        final int f34813b;

        /* renamed from: c  reason: collision with root package name */
        final int f34814c;

        a(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Byte get(int i4) {
            a0.C(i4, size());
            return Byte.valueOf(this.f34812a[this.f34813b + i4]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public Byte set(int i4, Byte b10) {
            a0.C(i4, size());
            byte[] bArr = this.f34812a;
            int i10 = this.f34813b;
            byte b11 = bArr[i10 + i4];
            bArr[i10 + i4] = ((Byte) a0.E(b10)).byteValue();
            return Byte.valueOf(b11);
        }

        byte[] c() {
            return Arrays.copyOfRange(this.f34812a, this.f34813b, this.f34814c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Byte) && b.i(this.f34812a, ((Byte) obj).byteValue(), this.f34813b, this.f34814c) != -1;
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
                    if (this.f34812a[this.f34813b + i4] != aVar.f34812a[aVar.f34813b + i4]) {
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
            for (int i10 = this.f34813b; i10 < this.f34814c; i10++) {
                i4 = (i4 * 31) + b.g(this.f34812a[i10]);
            }
            return i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int i4;
            if (!(obj instanceof Byte) || (i4 = b.i(this.f34812a, ((Byte) obj).byteValue(), this.f34813b, this.f34814c)) < 0) {
                return -1;
            }
            return i4 - this.f34813b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int l10;
            if (!(obj instanceof Byte) || (l10 = b.l(this.f34812a, ((Byte) obj).byteValue(), this.f34813b, this.f34814c)) < 0) {
                return -1;
            }
            return l10 - this.f34813b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34814c - this.f34813b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Byte> subList(int i4, int i10) {
            a0.f0(i4, i10, size());
            if (i4 == i10) {
                return Collections.emptyList();
            }
            byte[] bArr = this.f34812a;
            int i11 = this.f34813b;
            return new a(bArr, i4 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            sb.append((int) this.f34812a[this.f34813b]);
            int i4 = this.f34813b;
            while (true) {
                i4++;
                if (i4 < this.f34814c) {
                    sb.append(", ");
                    sb.append((int) this.f34812a[i4]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        a(byte[] bArr, int i4, int i10) {
            this.f34812a = bArr;
            this.f34813b = i4;
            this.f34814c = i10;
        }
    }

    private b() {
    }

    public static List<Byte> c(byte... bArr) {
        if (bArr.length == 0) {
            return Collections.emptyList();
        }
        return new a(bArr);
    }

    public static byte[] d(byte[]... bArr) {
        int i4 = 0;
        for (byte[] bArr2 : bArr) {
            i4 += bArr2.length;
        }
        byte[] bArr3 = new byte[i4];
        int i10 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, i10, bArr4.length);
            i10 += bArr4.length;
        }
        return bArr3;
    }

    public static boolean e(byte[] bArr, byte b10) {
        for (byte b11 : bArr) {
            if (b11 == b10) {
                return true;
            }
        }
        return false;
    }

    public static byte[] f(byte[] bArr, int i4, int i10) {
        a0.k(i4 >= 0, "Invalid minLength: %s", i4);
        a0.k(i10 >= 0, "Invalid padding: %s", i10);
        return bArr.length < i4 ? Arrays.copyOf(bArr, i4 + i10) : bArr;
    }

    public static int g(byte b10) {
        return b10;
    }

    public static int h(byte[] bArr, byte b10) {
        return i(bArr, b10, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int i(byte[] bArr, byte b10, int i4, int i10) {
        while (i4 < i10) {
            if (bArr[i4] == b10) {
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
    public static int j(byte[] r5, byte[] r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.b.j(byte[], byte[]):int");
    }

    public static int k(byte[] bArr, byte b10) {
        return l(bArr, b10, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(byte[] bArr, byte b10, int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            if (bArr[i11] == b10) {
                return i11;
            }
        }
        return -1;
    }

    public static void m(byte[] bArr) {
        a0.E(bArr);
        n(bArr, 0, bArr.length);
    }

    public static void n(byte[] bArr, int i4, int i10) {
        a0.E(bArr);
        a0.f0(i4, i10, bArr.length);
        for (int i11 = i10 - 1; i4 < i11; i11--) {
            byte b10 = bArr[i4];
            bArr[i4] = bArr[i11];
            bArr[i11] = b10;
            i4++;
        }
    }

    public static byte[] o(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).c();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            bArr[i4] = ((Number) a0.E(array[i4])).byteValue();
        }
        return bArr;
    }
}
