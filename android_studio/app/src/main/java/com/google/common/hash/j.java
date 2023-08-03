package com.google.common.hash;

/* compiled from: FarmHashFingerprint64.java */
/* loaded from: classes2.dex */
final class j extends e {

    /* renamed from: a  reason: collision with root package name */
    static final m f34298a = new j();

    /* renamed from: b  reason: collision with root package name */
    private static final long f34299b = -4348849565147123417L;

    /* renamed from: c  reason: collision with root package name */
    private static final long f34300c = -5435081209227447693L;

    /* renamed from: d  reason: collision with root package name */
    private static final long f34301d = -7286425919675154353L;

    j() {
    }

    @h3.d
    static long n(byte[] bArr, int i4, int i10) {
        if (i10 <= 32) {
            if (i10 <= 16) {
                return o(bArr, i4, i10);
            }
            return q(bArr, i4, i10);
        } else if (i10 <= 64) {
            return r(bArr, i4, i10);
        } else {
            return s(bArr, i4, i10);
        }
    }

    private static long o(byte[] bArr, int i4, int i10) {
        if (i10 >= 8) {
            long j4 = (i10 * 2) + f34301d;
            long b10 = s.b(bArr, i4) + f34301d;
            long b11 = s.b(bArr, (i4 + i10) - 8);
            return p((Long.rotateRight(b11, 37) * j4) + b10, (Long.rotateRight(b10, 25) + b11) * j4, j4);
        } else if (i10 >= 4) {
            return p(i10 + ((s.a(bArr, i4) & 4294967295L) << 3), s.a(bArr, (i4 + i10) - 4) & 4294967295L, (i10 * 2) + f34301d);
        } else if (i10 > 0) {
            return t((((bArr[i4] & 255) + ((bArr[(i10 >> 1) + i4] & 255) << 8)) * f34301d) ^ ((i10 + ((bArr[i4 + (i10 - 1)] & 255) << 2)) * f34299b)) * f34301d;
        } else {
            return f34301d;
        }
    }

    private static long p(long j4, long j10, long j11) {
        long j12 = (j4 ^ j10) * j11;
        long j13 = ((j12 ^ (j12 >>> 47)) ^ j10) * j11;
        return (j13 ^ (j13 >>> 47)) * j11;
    }

    private static long q(byte[] bArr, int i4, int i10) {
        long j4 = (i10 * 2) + f34301d;
        long b10 = s.b(bArr, i4) * f34300c;
        long b11 = s.b(bArr, i4 + 8);
        int i11 = i4 + i10;
        long b12 = s.b(bArr, i11 - 8) * j4;
        return p((s.b(bArr, i11 - 16) * f34301d) + Long.rotateRight(b10 + b11, 43) + Long.rotateRight(b12, 30), b10 + Long.rotateRight(b11 + f34301d, 18) + b12, j4);
    }

    private static long r(byte[] bArr, int i4, int i10) {
        long j4 = (i10 * 2) + f34301d;
        long b10 = s.b(bArr, i4) * f34301d;
        long b11 = s.b(bArr, i4 + 8);
        int i11 = i4 + i10;
        long b12 = s.b(bArr, i11 - 8) * j4;
        long rotateRight = Long.rotateRight(b10 + b11, 43) + Long.rotateRight(b12, 30) + (s.b(bArr, i11 - 16) * f34301d);
        long p9 = p(rotateRight, b12 + Long.rotateRight(b11 + f34301d, 18) + b10, j4);
        long b13 = s.b(bArr, i4 + 16) * j4;
        long b14 = s.b(bArr, i4 + 24);
        long b15 = (rotateRight + s.b(bArr, i11 - 32)) * j4;
        return p(((p9 + s.b(bArr, i11 - 24)) * j4) + Long.rotateRight(b13 + b14, 43) + Long.rotateRight(b15, 30), b13 + Long.rotateRight(b14 + b10, 18) + b15, j4);
    }

    private static long s(byte[] bArr, int i4, int i10) {
        long t9 = t(-7956866745689871395L) * f34301d;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long b10 = 95310865018149119L + s.b(bArr, i4);
        int i11 = i10 - 1;
        int i12 = i4 + ((i11 / 64) * 64);
        int i13 = i11 & 63;
        int i14 = (i12 + i13) - 63;
        long j4 = 2480279821605975764L;
        int i15 = i4;
        while (true) {
            long rotateRight = Long.rotateRight(b10 + j4 + jArr[0] + s.b(bArr, i15 + 8), 37) * f34300c;
            long rotateRight2 = Long.rotateRight(j4 + jArr[1] + s.b(bArr, i15 + 48), 42) * f34300c;
            long j10 = rotateRight ^ jArr2[1];
            long b11 = rotateRight2 + jArr[0] + s.b(bArr, i15 + 40);
            long rotateRight3 = Long.rotateRight(t9 + jArr2[0], 33) * f34300c;
            u(bArr, i15, jArr[1] * f34300c, j10 + jArr2[0], jArr);
            u(bArr, i15 + 32, rotateRight3 + jArr2[1], b11 + s.b(bArr, i15 + 16), jArr2);
            i15 += 64;
            if (i15 == i12) {
                long j11 = ((j10 & 255) << 1) + f34300c;
                jArr2[0] = jArr2[0] + i13;
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long rotateRight4 = (Long.rotateRight(((rotateRight3 + b11) + jArr[0]) + s.b(bArr, i14 + 8), 37) * j11) ^ (jArr2[1] * 9);
                long rotateRight5 = (Long.rotateRight(b11 + jArr[1] + s.b(bArr, i14 + 48), 42) * j11) + (jArr[0] * 9) + s.b(bArr, i14 + 40);
                long rotateRight6 = Long.rotateRight(j10 + jArr2[0], 33) * j11;
                u(bArr, i14, jArr[1] * j11, rotateRight4 + jArr2[0], jArr);
                u(bArr, i14 + 32, rotateRight6 + jArr2[1], s.b(bArr, i14 + 16) + rotateRight5, jArr2);
                return p(p(jArr[0], jArr2[0], j11) + (t(rotateRight5) * f34299b) + rotateRight4, p(jArr[1], jArr2[1], j11) + rotateRight6, j11);
            }
            t9 = j10;
            j4 = b11;
            b10 = rotateRight3;
        }
    }

    private static long t(long j4) {
        return j4 ^ (j4 >>> 47);
    }

    private static void u(byte[] bArr, int i4, long j4, long j10, long[] jArr) {
        long b10 = s.b(bArr, i4);
        long b11 = s.b(bArr, i4 + 8);
        long b12 = s.b(bArr, i4 + 16);
        long b13 = s.b(bArr, i4 + 24);
        long j11 = j4 + b10;
        long j12 = b11 + j11 + b12;
        jArr[0] = j12 + b13;
        jArr[1] = Long.rotateRight(j10 + j11 + b13, 21) + Long.rotateRight(j12, 44) + j11;
    }

    @Override // com.google.common.hash.m
    public int c() {
        return 64;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.c, com.google.common.hash.m
    public l m(byte[] bArr, int i4, int i10) {
        com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
        return l.l(n(bArr, i4, i10));
    }

    public String toString() {
        return "Hashing.farmHashFingerprint64()";
    }
}
