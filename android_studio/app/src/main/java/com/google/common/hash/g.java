package com.google.common.hash;

import com.google.common.hash.BloomFilter;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: BloomFilterStrategies.java */
/* loaded from: classes2.dex */
public abstract class g implements BloomFilter.c {

    /* renamed from: a  reason: collision with root package name */
    public static final g f34283a;

    /* renamed from: b  reason: collision with root package name */
    public static final g f34284b;

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ g[] f34285c;

    /* compiled from: BloomFilterStrategies.java */
    /* loaded from: classes2.dex */
    enum a extends g {
        a(String str, int i4) {
            super(str, i4, null);
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean f(T t9, Funnel<? super T> funnel, int i4, c cVar) {
            long b10 = cVar.b();
            long c10 = o.w().j(t9, funnel).c();
            int i10 = (int) c10;
            int i11 = (int) (c10 >>> 32);
            for (int i12 = 1; i12 <= i4; i12++) {
                int i13 = (i12 * i11) + i10;
                if (i13 < 0) {
                    i13 = ~i13;
                }
                if (!cVar.d(i13 % b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean g(T t9, Funnel<? super T> funnel, int i4, c cVar) {
            long b10 = cVar.b();
            long c10 = o.w().j(t9, funnel).c();
            int i10 = (int) c10;
            int i11 = (int) (c10 >>> 32);
            boolean z9 = false;
            for (int i12 = 1; i12 <= i4; i12++) {
                int i13 = (i12 * i11) + i10;
                if (i13 < 0) {
                    i13 = ~i13;
                }
                z9 |= cVar.f(i13 % b10);
            }
            return z9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BloomFilterStrategies.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: c  reason: collision with root package name */
        private static final int f34286c = 6;

        /* renamed from: a  reason: collision with root package name */
        final AtomicLongArray f34287a;

        /* renamed from: b  reason: collision with root package name */
        private final t f34288b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(long j4) {
            this(new long[com.google.common.primitives.f.d(com.google.common.math.f.g(j4, 64L, RoundingMode.CEILING))]);
        }

        public static long[] g(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i4 = 0; i4 < length; i4++) {
                jArr[i4] = atomicLongArray.get(i4);
            }
            return jArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long a() {
            return this.f34288b.c();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long b() {
            return this.f34287a.length() * 64;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c c() {
            return new c(g(this.f34287a));
        }

        boolean d(long j4) {
            return ((1 << ((int) j4)) & this.f34287a.get((int) (j4 >>> 6))) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void e(c cVar) {
            long j4;
            long j10;
            boolean z9;
            com.google.common.base.a0.m(this.f34287a.length() == cVar.f34287a.length(), "BitArrays must be of equal length (%s != %s)", this.f34287a.length(), cVar.f34287a.length());
            for (int i4 = 0; i4 < this.f34287a.length(); i4++) {
                long j11 = cVar.f34287a.get(i4);
                while (true) {
                    j4 = this.f34287a.get(i4);
                    j10 = j4 | j11;
                    if (j4 == j10) {
                        z9 = false;
                        break;
                    } else if (this.f34287a.compareAndSet(i4, j4, j10)) {
                        z9 = true;
                        break;
                    }
                }
                if (z9) {
                    this.f34288b.a(Long.bitCount(j10) - Long.bitCount(j4));
                }
            }
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(g(this.f34287a), g(((c) obj).f34287a));
            }
            return false;
        }

        boolean f(long j4) {
            long j10;
            long j11;
            if (d(j4)) {
                return false;
            }
            int i4 = (int) (j4 >>> 6);
            long j12 = 1 << ((int) j4);
            do {
                j10 = this.f34287a.get(i4);
                j11 = j10 | j12;
                if (j10 == j11) {
                    return false;
                }
            } while (!this.f34287a.compareAndSet(i4, j10, j11));
            this.f34288b.b();
            return true;
        }

        public int hashCode() {
            return Arrays.hashCode(g(this.f34287a));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(long[] jArr) {
            com.google.common.base.a0.e(jArr.length > 0, "data length is zero!");
            this.f34287a = new AtomicLongArray(jArr);
            this.f34288b = u.a();
            long j4 = 0;
            for (long j10 : jArr) {
                j4 += Long.bitCount(j10);
            }
            this.f34288b.a(j4);
        }
    }

    static {
        a aVar = new a("MURMUR128_MITZ_32", 0);
        f34283a = aVar;
        g gVar = new g("MURMUR128_MITZ_64", 1) { // from class: com.google.common.hash.g.b
            private long a(byte[] bArr) {
                return com.google.common.primitives.g.j(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
            }

            private long b(byte[] bArr) {
                return com.google.common.primitives.g.j(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
            }

            @Override // com.google.common.hash.BloomFilter.c
            public <T> boolean f(T t9, Funnel<? super T> funnel, int i4, c cVar) {
                long b10 = cVar.b();
                byte[] n9 = o.w().j(t9, funnel).n();
                long a10 = a(n9);
                long b11 = b(n9);
                for (int i10 = 0; i10 < i4; i10++) {
                    if (!cVar.d((Long.MAX_VALUE & a10) % b10)) {
                        return false;
                    }
                    a10 += b11;
                }
                return true;
            }

            @Override // com.google.common.hash.BloomFilter.c
            public <T> boolean g(T t9, Funnel<? super T> funnel, int i4, c cVar) {
                long b10 = cVar.b();
                byte[] n9 = o.w().j(t9, funnel).n();
                long a10 = a(n9);
                long b11 = b(n9);
                boolean z9 = false;
                for (int i10 = 0; i10 < i4; i10++) {
                    z9 |= cVar.f((Long.MAX_VALUE & a10) % b10);
                    a10 += b11;
                }
                return z9;
            }
        };
        f34284b = gVar;
        f34285c = new g[]{aVar, gVar};
    }

    private g(String str, int i4) {
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f34285c.clone();
    }

    /* synthetic */ g(String str, int i4, a aVar) {
        this(str, i4);
    }
}
