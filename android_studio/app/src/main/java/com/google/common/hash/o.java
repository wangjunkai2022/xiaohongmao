package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.security.Key;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.crypto.spec.SecretKeySpec;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Hashing.java */
@h3.a
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    static final int f34322a = (int) System.currentTimeMillis();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Hashing.java */
    @Immutable
    /* loaded from: classes2.dex */
    static abstract class b implements r<Checksum> {

        /* renamed from: b  reason: collision with root package name */
        public static final b f34323b;

        /* renamed from: c  reason: collision with root package name */
        public static final b f34324c;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ b[] f34325d;

        /* renamed from: a  reason: collision with root package name */
        public final m f34326a;

        /* compiled from: Hashing.java */
        /* loaded from: classes2.dex */
        enum a extends b {
            a(String str, int i4, String str2) {
                super(str, i4, str2);
            }

            @Override // com.google.common.base.i0
            /* renamed from: a */
            public Checksum get() {
                return new CRC32();
            }
        }

        /* compiled from: Hashing.java */
        /* renamed from: com.google.common.hash.o$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0255b extends b {
            C0255b(String str, int i4, String str2) {
                super(str, i4, str2);
            }

            @Override // com.google.common.base.i0
            /* renamed from: a */
            public Checksum get() {
                return new Adler32();
            }
        }

        static {
            a aVar = new a("CRC_32", 0, "Hashing.crc32()");
            f34323b = aVar;
            C0255b c0255b = new C0255b("ADLER_32", 1, "Hashing.adler32()");
            f34324c = c0255b;
            f34325d = new b[]{aVar, c0255b};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f34325d.clone();
        }

        private b(String str, int i4, String str2) {
            this.f34326a = new com.google.common.hash.h(this, 32, str2);
        }
    }

    /* compiled from: Hashing.java */
    /* loaded from: classes2.dex */
    private static final class c extends com.google.common.hash.b {
        @Override // com.google.common.hash.m
        public int c() {
            int i4 = 0;
            for (m mVar : this.f34234a) {
                i4 += mVar.c();
            }
            return i4;
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(this.f34234a, ((c) obj).f34234a);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f34234a);
        }

        @Override // com.google.common.hash.b
        l o(n[] nVarArr) {
            byte[] bArr = new byte[c() / 8];
            int i4 = 0;
            for (n nVar : nVarArr) {
                l i10 = nVar.i();
                i4 += i10.p(bArr, i4, i10.d() / 8);
            }
            return l.j(bArr);
        }

        private c(m... mVarArr) {
            super(mVarArr);
            for (m mVar : mVarArr) {
                com.google.common.base.a0.o(mVar.c() % 8 == 0, "the number of bits (%s) in hashFunction (%s) must be divisible by 8", mVar.c(), mVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Hashing.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private long f34327a;

        public d(long j4) {
            this.f34327a = j4;
        }

        public double a() {
            long j4 = (this.f34327a * 2862933555777941757L) + 1;
            this.f34327a = j4;
            return (((int) (j4 >>> 33)) + 1) / 2.147483648E9d;
        }
    }

    /* compiled from: Hashing.java */
    /* loaded from: classes2.dex */
    private static class e {

        /* renamed from: a  reason: collision with root package name */
        static final m f34328a = new x(shaded.org.apache.commons.codec.digest.f.f93510b, "Hashing.md5()");

        private e() {
        }
    }

    /* compiled from: Hashing.java */
    /* loaded from: classes2.dex */
    private static class f {

        /* renamed from: a  reason: collision with root package name */
        static final m f34329a = new x("SHA-1", "Hashing.sha1()");

        private f() {
        }
    }

    /* compiled from: Hashing.java */
    /* loaded from: classes2.dex */
    private static class g {

        /* renamed from: a  reason: collision with root package name */
        static final m f34330a = new x("SHA-256", "Hashing.sha256()");

        private g() {
        }
    }

    /* compiled from: Hashing.java */
    /* loaded from: classes2.dex */
    private static class h {

        /* renamed from: a  reason: collision with root package name */
        static final m f34331a = new x("SHA-384", "Hashing.sha384()");

        private h() {
        }
    }

    /* compiled from: Hashing.java */
    /* loaded from: classes2.dex */
    private static class i {

        /* renamed from: a  reason: collision with root package name */
        static final m f34332a = new x("SHA-512", "Hashing.sha512()");

        private i() {
        }
    }

    private o() {
    }

    @Deprecated
    public static m A() {
        return f.f34329a;
    }

    public static m B() {
        return g.f34330a;
    }

    public static m C() {
        return h.f34331a;
    }

    public static m D() {
        return i.f34332a;
    }

    public static m E() {
        return b0.f34237e;
    }

    public static m F(long j4, long j10) {
        return new b0(2, 4, j4, j10);
    }

    public static m a() {
        return b.f34324c.f34326a;
    }

    static int b(int i4) {
        com.google.common.base.a0.e(i4 > 0, "Number of bits must be positive");
        return (i4 + 31) & (-32);
    }

    public static l c(Iterable<l> iterable) {
        Iterator<l> it = iterable.iterator();
        com.google.common.base.a0.e(it.hasNext(), "Must be at least 1 hash code to combine.");
        int d4 = it.next().d() / 8;
        byte[] bArr = new byte[d4];
        for (l lVar : iterable) {
            byte[] a10 = lVar.a();
            com.google.common.base.a0.e(a10.length == d4, "All hashcodes must have the same bit length.");
            for (int i4 = 0; i4 < a10.length; i4++) {
                bArr[i4] = (byte) ((bArr[i4] * 37) ^ a10[i4]);
            }
        }
        return l.j(bArr);
    }

    public static l d(Iterable<l> iterable) {
        Iterator<l> it = iterable.iterator();
        com.google.common.base.a0.e(it.hasNext(), "Must be at least 1 hash code to combine.");
        int d4 = it.next().d() / 8;
        byte[] bArr = new byte[d4];
        for (l lVar : iterable) {
            byte[] a10 = lVar.a();
            com.google.common.base.a0.e(a10.length == d4, "All hashcodes must have the same bit length.");
            for (int i4 = 0; i4 < a10.length; i4++) {
                bArr[i4] = (byte) (bArr[i4] + a10[i4]);
            }
        }
        return l.j(bArr);
    }

    public static m e(m mVar, m mVar2, m... mVarArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(mVar);
        arrayList.add(mVar2);
        arrayList.addAll(Arrays.asList(mVarArr));
        return new c((m[]) arrayList.toArray(new m[0]));
    }

    public static m f(Iterable<m> iterable) {
        com.google.common.base.a0.E(iterable);
        ArrayList arrayList = new ArrayList();
        for (m mVar : iterable) {
            arrayList.add(mVar);
        }
        com.google.common.base.a0.k(arrayList.size() > 0, "number of hash functions (%s) must be > 0", arrayList.size());
        return new c((m[]) arrayList.toArray(new m[0]));
    }

    public static int g(long j4, int i4) {
        int i10 = 0;
        com.google.common.base.a0.k(i4 > 0, "buckets must be positive: %s", i4);
        d dVar = new d(j4);
        while (true) {
            int a10 = (int) ((i10 + 1) / dVar.a());
            if (a10 < 0 || a10 >= i4) {
                break;
            }
            i10 = a10;
        }
        return i10;
    }

    public static int h(l lVar, int i4) {
        return g(lVar.o(), i4);
    }

    public static m i() {
        return b.f34323b.f34326a;
    }

    public static m j() {
        return com.google.common.hash.i.f34295a;
    }

    public static m k() {
        return j.f34298a;
    }

    public static m l(int i4) {
        int b10 = b(i4);
        if (b10 == 32) {
            return z.f34375c;
        }
        if (b10 <= 128) {
            return y.f34365c;
        }
        int i10 = (b10 + 127) / 128;
        m[] mVarArr = new m[i10];
        mVarArr[0] = y.f34365c;
        int i11 = f34322a;
        for (int i12 = 1; i12 < i10; i12++) {
            i11 += 1500450271;
            mVarArr[i12] = x(i11);
        }
        return new c(mVarArr);
    }

    public static m m(Key key) {
        return new w("HmacMD5", key, u("hmacMd5", key));
    }

    public static m n(byte[] bArr) {
        return m(new SecretKeySpec((byte[]) com.google.common.base.a0.E(bArr), "HmacMD5"));
    }

    public static m o(Key key) {
        return new w(com.alipay.security.mobile.module.commonutils.crypto.c.f7003a, key, u("hmacSha1", key));
    }

    public static m p(byte[] bArr) {
        return o(new SecretKeySpec((byte[]) com.google.common.base.a0.E(bArr), com.alipay.security.mobile.module.commonutils.crypto.c.f7003a));
    }

    public static m q(Key key) {
        return new w("HmacSHA256", key, u("hmacSha256", key));
    }

    public static m r(byte[] bArr) {
        return q(new SecretKeySpec((byte[]) com.google.common.base.a0.E(bArr), "HmacSHA256"));
    }

    public static m s(Key key) {
        return new w("HmacSHA512", key, u("hmacSha512", key));
    }

    public static m t(byte[] bArr) {
        return s(new SecretKeySpec((byte[]) com.google.common.base.a0.E(bArr), "HmacSHA512"));
    }

    private static String u(String str, Key key) {
        return String.format("Hashing.%s(Key[algorithm=%s, format=%s])", str, key.getAlgorithm(), key.getFormat());
    }

    @Deprecated
    public static m v() {
        return e.f34328a;
    }

    public static m w() {
        return y.f34364b;
    }

    public static m x(int i4) {
        return new y(i4);
    }

    public static m y() {
        return z.f34374b;
    }

    public static m z(int i4) {
        return new z(i4);
    }
}
