package com.google.common.hash;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: HashCode.java */
@h3.a
/* loaded from: classes2.dex */
public abstract class l {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f34315a = "0123456789abcdef".toCharArray();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HashCode.java */
    /* loaded from: classes2.dex */
    public static final class a extends l implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f34316c = 0;

        /* renamed from: b  reason: collision with root package name */
        final byte[] f34317b;

        a(byte[] bArr) {
            this.f34317b = (byte[]) com.google.common.base.a0.E(bArr);
        }

        @Override // com.google.common.hash.l
        public byte[] a() {
            return (byte[]) this.f34317b.clone();
        }

        @Override // com.google.common.hash.l
        public int b() {
            byte[] bArr = this.f34317b;
            com.google.common.base.a0.n0(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            byte[] bArr2 = this.f34317b;
            return ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
        }

        @Override // com.google.common.hash.l
        public long c() {
            byte[] bArr = this.f34317b;
            com.google.common.base.a0.n0(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return o();
        }

        @Override // com.google.common.hash.l
        public int d() {
            return this.f34317b.length * 8;
        }

        @Override // com.google.common.hash.l
        boolean h(l lVar) {
            if (this.f34317b.length != lVar.n().length) {
                return false;
            }
            int i4 = 0;
            boolean z9 = true;
            while (true) {
                byte[] bArr = this.f34317b;
                if (i4 >= bArr.length) {
                    return z9;
                }
                z9 &= bArr[i4] == lVar.n()[i4];
                i4++;
            }
        }

        @Override // com.google.common.hash.l
        byte[] n() {
            return this.f34317b;
        }

        @Override // com.google.common.hash.l
        public long o() {
            long j4 = this.f34317b[0] & 255;
            for (int i4 = 1; i4 < Math.min(this.f34317b.length, 8); i4++) {
                j4 |= (this.f34317b[i4] & 255) << (i4 * 8);
            }
            return j4;
        }

        @Override // com.google.common.hash.l
        void q(byte[] bArr, int i4, int i10) {
            System.arraycopy(this.f34317b, 0, bArr, i4, i10);
        }
    }

    /* compiled from: HashCode.java */
    /* loaded from: classes2.dex */
    private static final class b extends l implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f34318c = 0;

        /* renamed from: b  reason: collision with root package name */
        final int f34319b;

        b(int i4) {
            this.f34319b = i4;
        }

        @Override // com.google.common.hash.l
        public byte[] a() {
            int i4 = this.f34319b;
            return new byte[]{(byte) i4, (byte) (i4 >> 8), (byte) (i4 >> 16), (byte) (i4 >> 24)};
        }

        @Override // com.google.common.hash.l
        public int b() {
            return this.f34319b;
        }

        @Override // com.google.common.hash.l
        public long c() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override // com.google.common.hash.l
        public int d() {
            return 32;
        }

        @Override // com.google.common.hash.l
        boolean h(l lVar) {
            return this.f34319b == lVar.b();
        }

        @Override // com.google.common.hash.l
        public long o() {
            return com.google.common.primitives.m.r(this.f34319b);
        }

        @Override // com.google.common.hash.l
        void q(byte[] bArr, int i4, int i10) {
            for (int i11 = 0; i11 < i10; i11++) {
                bArr[i4 + i11] = (byte) (this.f34319b >> (i11 * 8));
            }
        }
    }

    /* compiled from: HashCode.java */
    /* loaded from: classes2.dex */
    private static final class c extends l implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f34320c = 0;

        /* renamed from: b  reason: collision with root package name */
        final long f34321b;

        c(long j4) {
            this.f34321b = j4;
        }

        @Override // com.google.common.hash.l
        public byte[] a() {
            long j4 = this.f34321b;
            return new byte[]{(byte) j4, (byte) (j4 >> 8), (byte) (j4 >> 16), (byte) (j4 >> 24), (byte) (j4 >> 32), (byte) (j4 >> 40), (byte) (j4 >> 48), (byte) (j4 >> 56)};
        }

        @Override // com.google.common.hash.l
        public int b() {
            return (int) this.f34321b;
        }

        @Override // com.google.common.hash.l
        public long c() {
            return this.f34321b;
        }

        @Override // com.google.common.hash.l
        public int d() {
            return 64;
        }

        @Override // com.google.common.hash.l
        boolean h(l lVar) {
            return this.f34321b == lVar.c();
        }

        @Override // com.google.common.hash.l
        public long o() {
            return this.f34321b;
        }

        @Override // com.google.common.hash.l
        void q(byte[] bArr, int i4, int i10) {
            for (int i11 = 0; i11 < i10; i11++) {
                bArr[i4 + i11] = (byte) (this.f34321b >> (i11 * 8));
            }
        }
    }

    l() {
    }

    private static int e(char c10) {
        if (c10 < '0' || c10 > '9') {
            if (c10 < 'a' || c10 > 'f') {
                throw new IllegalArgumentException("Illegal hexadecimal character: " + c10);
            }
            return (c10 - 'a') + 10;
        }
        return c10 - '0';
    }

    public static l i(byte[] bArr) {
        com.google.common.base.a0.e(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return j((byte[]) bArr.clone());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l j(byte[] bArr) {
        return new a(bArr);
    }

    public static l k(int i4) {
        return new b(i4);
    }

    public static l l(long j4) {
        return new c(j4);
    }

    public static l m(String str) {
        com.google.common.base.a0.u(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        com.google.common.base.a0.u(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i4 = 0; i4 < str.length(); i4 += 2) {
            bArr[i4 / 2] = (byte) ((e(str.charAt(i4)) << 4) + e(str.charAt(i4 + 1)));
        }
        return j(bArr);
    }

    public abstract byte[] a();

    public abstract int b();

    public abstract long c();

    public abstract int d();

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof l) {
            l lVar = (l) obj;
            return d() == lVar.d() && h(lVar);
        }
        return false;
    }

    abstract boolean h(l lVar);

    public final int hashCode() {
        if (d() >= 32) {
            return b();
        }
        byte[] n9 = n();
        int i4 = n9[0] & 255;
        for (int i10 = 1; i10 < n9.length; i10++) {
            i4 |= (n9[i10] & 255) << (i10 * 8);
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] n() {
        return a();
    }

    public abstract long o();

    @CanIgnoreReturnValue
    public int p(byte[] bArr, int i4, int i10) {
        int u9 = com.google.common.primitives.f.u(i10, d() / 8);
        com.google.common.base.a0.f0(i4, i4 + u9, bArr.length);
        q(bArr, i4, u9);
        return u9;
    }

    abstract void q(byte[] bArr, int i4, int i10);

    public final String toString() {
        byte[] n9 = n();
        StringBuilder sb = new StringBuilder(n9.length * 2);
        for (byte b10 : n9) {
            char[] cArr = f34315a;
            sb.append(cArr[(b10 >> 4) & 15]);
            sb.append(cArr[b10 & com.google.common.base.c.f32110q]);
        }
        return sb.toString();
    }
}
