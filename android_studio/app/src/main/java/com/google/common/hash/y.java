package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Murmur3_128HashFunction.java */
@Immutable
/* loaded from: classes2.dex */
public final class y extends c implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    static final m f34364b = new y(0);

    /* renamed from: c  reason: collision with root package name */
    static final m f34365c = new y(o.f34322a);

    /* renamed from: d  reason: collision with root package name */
    private static final long f34366d = 0;

    /* renamed from: a  reason: collision with root package name */
    private final int f34367a;

    /* compiled from: Murmur3_128HashFunction.java */
    /* loaded from: classes2.dex */
    private static final class a extends f {

        /* renamed from: g  reason: collision with root package name */
        private static final int f34368g = 16;

        /* renamed from: h  reason: collision with root package name */
        private static final long f34369h = -8663945395140668459L;

        /* renamed from: i  reason: collision with root package name */
        private static final long f34370i = 5545529020109919103L;

        /* renamed from: d  reason: collision with root package name */
        private long f34371d;

        /* renamed from: e  reason: collision with root package name */
        private long f34372e;

        /* renamed from: f  reason: collision with root package name */
        private int f34373f;

        a(int i4) {
            super(16);
            long j4 = i4;
            this.f34371d = j4;
            this.f34372e = j4;
            this.f34373f = 0;
        }

        private void p(long j4, long j10) {
            long r9 = r(j4) ^ this.f34371d;
            this.f34371d = r9;
            long rotateLeft = Long.rotateLeft(r9, 27);
            long j11 = this.f34372e;
            this.f34371d = ((rotateLeft + j11) * 5) + 1390208809;
            long s9 = s(j10) ^ j11;
            this.f34372e = s9;
            this.f34372e = ((Long.rotateLeft(s9, 31) + this.f34371d) * 5) + 944331445;
        }

        private static long q(long j4) {
            long j10 = (j4 ^ (j4 >>> 33)) * (-49064778989728563L);
            long j11 = (j10 ^ (j10 >>> 33)) * (-4265267296055464877L);
            return j11 ^ (j11 >>> 33);
        }

        private static long r(long j4) {
            return Long.rotateLeft(j4 * f34369h, 31) * f34370i;
        }

        private static long s(long j4) {
            return Long.rotateLeft(j4 * f34370i, 33) * f34369h;
        }

        @Override // com.google.common.hash.f
        public l j() {
            long j4 = this.f34371d;
            int i4 = this.f34373f;
            long j10 = j4 ^ i4;
            long j11 = this.f34372e ^ i4;
            long j12 = j10 + j11;
            this.f34371d = j12;
            this.f34372e = j11 + j12;
            this.f34371d = q(j12);
            long q9 = q(this.f34372e);
            long j13 = this.f34371d + q9;
            this.f34371d = j13;
            this.f34372e = q9 + j13;
            return l.j(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f34371d).putLong(this.f34372e).array());
        }

        @Override // com.google.common.hash.f
        protected void m(ByteBuffer byteBuffer) {
            p(byteBuffer.getLong(), byteBuffer.getLong());
            this.f34373f += 16;
        }

        @Override // com.google.common.hash.f
        protected void n(ByteBuffer byteBuffer) {
            long j4;
            long j10;
            long j11;
            long j12;
            long j13;
            long j14;
            long p9;
            long j15;
            long j16;
            long j17;
            long j18;
            long j19;
            long j20;
            long j21;
            this.f34373f += byteBuffer.remaining();
            long j22 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j4 = 0;
                    p9 = com.google.common.primitives.l.p(byteBuffer.get(0)) ^ j4;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 2:
                    j10 = 0;
                    j4 = j10 ^ (com.google.common.primitives.l.p(byteBuffer.get(1)) << 8);
                    p9 = com.google.common.primitives.l.p(byteBuffer.get(0)) ^ j4;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 3:
                    j11 = 0;
                    j10 = j11 ^ (com.google.common.primitives.l.p(byteBuffer.get(2)) << 16);
                    j4 = j10 ^ (com.google.common.primitives.l.p(byteBuffer.get(1)) << 8);
                    p9 = com.google.common.primitives.l.p(byteBuffer.get(0)) ^ j4;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 4:
                    j12 = 0;
                    j11 = j12 ^ (com.google.common.primitives.l.p(byteBuffer.get(3)) << 24);
                    j10 = j11 ^ (com.google.common.primitives.l.p(byteBuffer.get(2)) << 16);
                    j4 = j10 ^ (com.google.common.primitives.l.p(byteBuffer.get(1)) << 8);
                    p9 = com.google.common.primitives.l.p(byteBuffer.get(0)) ^ j4;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 5:
                    j13 = 0;
                    j12 = j13 ^ (com.google.common.primitives.l.p(byteBuffer.get(4)) << 32);
                    j11 = j12 ^ (com.google.common.primitives.l.p(byteBuffer.get(3)) << 24);
                    j10 = j11 ^ (com.google.common.primitives.l.p(byteBuffer.get(2)) << 16);
                    j4 = j10 ^ (com.google.common.primitives.l.p(byteBuffer.get(1)) << 8);
                    p9 = com.google.common.primitives.l.p(byteBuffer.get(0)) ^ j4;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 6:
                    j14 = 0;
                    j13 = j14 ^ (com.google.common.primitives.l.p(byteBuffer.get(5)) << 40);
                    j12 = j13 ^ (com.google.common.primitives.l.p(byteBuffer.get(4)) << 32);
                    j11 = j12 ^ (com.google.common.primitives.l.p(byteBuffer.get(3)) << 24);
                    j10 = j11 ^ (com.google.common.primitives.l.p(byteBuffer.get(2)) << 16);
                    j4 = j10 ^ (com.google.common.primitives.l.p(byteBuffer.get(1)) << 8);
                    p9 = com.google.common.primitives.l.p(byteBuffer.get(0)) ^ j4;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 7:
                    j14 = (com.google.common.primitives.l.p(byteBuffer.get(6)) << 48) ^ 0;
                    j13 = j14 ^ (com.google.common.primitives.l.p(byteBuffer.get(5)) << 40);
                    j12 = j13 ^ (com.google.common.primitives.l.p(byteBuffer.get(4)) << 32);
                    j11 = j12 ^ (com.google.common.primitives.l.p(byteBuffer.get(3)) << 24);
                    j10 = j11 ^ (com.google.common.primitives.l.p(byteBuffer.get(2)) << 16);
                    j4 = j10 ^ (com.google.common.primitives.l.p(byteBuffer.get(1)) << 8);
                    p9 = com.google.common.primitives.l.p(byteBuffer.get(0)) ^ j4;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 8:
                    j15 = 0;
                    p9 = byteBuffer.getLong() ^ 0;
                    j22 = j15;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 9:
                    j16 = 0;
                    j15 = j16 ^ com.google.common.primitives.l.p(byteBuffer.get(8));
                    p9 = byteBuffer.getLong() ^ 0;
                    j22 = j15;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 10:
                    j17 = 0;
                    j16 = j17 ^ (com.google.common.primitives.l.p(byteBuffer.get(9)) << 8);
                    j15 = j16 ^ com.google.common.primitives.l.p(byteBuffer.get(8));
                    p9 = byteBuffer.getLong() ^ 0;
                    j22 = j15;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 11:
                    j18 = 0;
                    j17 = j18 ^ (com.google.common.primitives.l.p(byteBuffer.get(10)) << 16);
                    j16 = j17 ^ (com.google.common.primitives.l.p(byteBuffer.get(9)) << 8);
                    j15 = j16 ^ com.google.common.primitives.l.p(byteBuffer.get(8));
                    p9 = byteBuffer.getLong() ^ 0;
                    j22 = j15;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 12:
                    j19 = 0;
                    j18 = j19 ^ (com.google.common.primitives.l.p(byteBuffer.get(11)) << 24);
                    j17 = j18 ^ (com.google.common.primitives.l.p(byteBuffer.get(10)) << 16);
                    j16 = j17 ^ (com.google.common.primitives.l.p(byteBuffer.get(9)) << 8);
                    j15 = j16 ^ com.google.common.primitives.l.p(byteBuffer.get(8));
                    p9 = byteBuffer.getLong() ^ 0;
                    j22 = j15;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 13:
                    j20 = 0;
                    j19 = j20 ^ (com.google.common.primitives.l.p(byteBuffer.get(12)) << 32);
                    j18 = j19 ^ (com.google.common.primitives.l.p(byteBuffer.get(11)) << 24);
                    j17 = j18 ^ (com.google.common.primitives.l.p(byteBuffer.get(10)) << 16);
                    j16 = j17 ^ (com.google.common.primitives.l.p(byteBuffer.get(9)) << 8);
                    j15 = j16 ^ com.google.common.primitives.l.p(byteBuffer.get(8));
                    p9 = byteBuffer.getLong() ^ 0;
                    j22 = j15;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 14:
                    j21 = 0;
                    j20 = j21 ^ (com.google.common.primitives.l.p(byteBuffer.get(13)) << 40);
                    j19 = j20 ^ (com.google.common.primitives.l.p(byteBuffer.get(12)) << 32);
                    j18 = j19 ^ (com.google.common.primitives.l.p(byteBuffer.get(11)) << 24);
                    j17 = j18 ^ (com.google.common.primitives.l.p(byteBuffer.get(10)) << 16);
                    j16 = j17 ^ (com.google.common.primitives.l.p(byteBuffer.get(9)) << 8);
                    j15 = j16 ^ com.google.common.primitives.l.p(byteBuffer.get(8));
                    p9 = byteBuffer.getLong() ^ 0;
                    j22 = j15;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                case 15:
                    j21 = (com.google.common.primitives.l.p(byteBuffer.get(14)) << 48) ^ 0;
                    j20 = j21 ^ (com.google.common.primitives.l.p(byteBuffer.get(13)) << 40);
                    j19 = j20 ^ (com.google.common.primitives.l.p(byteBuffer.get(12)) << 32);
                    j18 = j19 ^ (com.google.common.primitives.l.p(byteBuffer.get(11)) << 24);
                    j17 = j18 ^ (com.google.common.primitives.l.p(byteBuffer.get(10)) << 16);
                    j16 = j17 ^ (com.google.common.primitives.l.p(byteBuffer.get(9)) << 8);
                    j15 = j16 ^ com.google.common.primitives.l.p(byteBuffer.get(8));
                    p9 = byteBuffer.getLong() ^ 0;
                    j22 = j15;
                    this.f34371d ^= r(p9);
                    this.f34372e ^= s(j22);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(int i4) {
        this.f34367a = i4;
    }

    @Override // com.google.common.hash.m
    public int c() {
        return 128;
    }

    public boolean equals(@NullableDecl Object obj) {
        return (obj instanceof y) && this.f34367a == ((y) obj).f34367a;
    }

    @Override // com.google.common.hash.m
    public n h() {
        return new a(this.f34367a);
    }

    public int hashCode() {
        return y.class.hashCode() ^ this.f34367a;
    }

    public String toString() {
        return "Hashing.murmur3_128(" + this.f34367a + ")";
    }
}
