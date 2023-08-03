package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: SipHashFunction.java */
@Immutable
/* loaded from: classes2.dex */
final class b0 extends c implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    static final m f34237e = new b0(2, 4, 506097522914230528L, 1084818905618843912L);

    /* renamed from: f  reason: collision with root package name */
    private static final long f34238f = 0;

    /* renamed from: a  reason: collision with root package name */
    private final int f34239a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34240b;

    /* renamed from: c  reason: collision with root package name */
    private final long f34241c;

    /* renamed from: d  reason: collision with root package name */
    private final long f34242d;

    /* compiled from: SipHashFunction.java */
    /* loaded from: classes2.dex */
    private static final class a extends f {

        /* renamed from: l  reason: collision with root package name */
        private static final int f34243l = 8;

        /* renamed from: d  reason: collision with root package name */
        private final int f34244d;

        /* renamed from: e  reason: collision with root package name */
        private final int f34245e;

        /* renamed from: f  reason: collision with root package name */
        private long f34246f;

        /* renamed from: g  reason: collision with root package name */
        private long f34247g;

        /* renamed from: h  reason: collision with root package name */
        private long f34248h;

        /* renamed from: i  reason: collision with root package name */
        private long f34249i;

        /* renamed from: j  reason: collision with root package name */
        private long f34250j;

        /* renamed from: k  reason: collision with root package name */
        private long f34251k;

        a(int i4, int i10, long j4, long j10) {
            super(8);
            this.f34250j = 0L;
            this.f34251k = 0L;
            this.f34244d = i4;
            this.f34245e = i10;
            this.f34246f = 8317987319222330741L ^ j4;
            this.f34247g = 7237128888997146477L ^ j10;
            this.f34248h = 7816392313619706465L ^ j4;
            this.f34249i = 8387220255154660723L ^ j10;
        }

        private void p(long j4) {
            this.f34249i ^= j4;
            q(this.f34244d);
            this.f34246f = j4 ^ this.f34246f;
        }

        private void q(int i4) {
            for (int i10 = 0; i10 < i4; i10++) {
                long j4 = this.f34246f;
                long j10 = this.f34247g;
                this.f34246f = j4 + j10;
                this.f34248h += this.f34249i;
                this.f34247g = Long.rotateLeft(j10, 13);
                long rotateLeft = Long.rotateLeft(this.f34249i, 16);
                long j11 = this.f34247g;
                long j12 = this.f34246f;
                this.f34247g = j11 ^ j12;
                this.f34249i = rotateLeft ^ this.f34248h;
                long rotateLeft2 = Long.rotateLeft(j12, 32);
                long j13 = this.f34248h;
                long j14 = this.f34247g;
                this.f34248h = j13 + j14;
                this.f34246f = rotateLeft2 + this.f34249i;
                this.f34247g = Long.rotateLeft(j14, 17);
                long rotateLeft3 = Long.rotateLeft(this.f34249i, 21);
                long j15 = this.f34247g;
                long j16 = this.f34248h;
                this.f34247g = j15 ^ j16;
                this.f34249i = rotateLeft3 ^ this.f34246f;
                this.f34248h = Long.rotateLeft(j16, 32);
            }
        }

        @Override // com.google.common.hash.f
        public l j() {
            long j4 = this.f34251k ^ (this.f34250j << 56);
            this.f34251k = j4;
            p(j4);
            this.f34248h ^= 255;
            q(this.f34245e);
            return l.l(((this.f34246f ^ this.f34247g) ^ this.f34248h) ^ this.f34249i);
        }

        @Override // com.google.common.hash.f
        protected void m(ByteBuffer byteBuffer) {
            this.f34250j += 8;
            p(byteBuffer.getLong());
        }

        @Override // com.google.common.hash.f
        protected void n(ByteBuffer byteBuffer) {
            this.f34250j += byteBuffer.remaining();
            int i4 = 0;
            while (byteBuffer.hasRemaining()) {
                this.f34251k ^= (byteBuffer.get() & 255) << i4;
                i4 += 8;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(int i4, int i10, long j4, long j10) {
        com.google.common.base.a0.k(i4 > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", i4);
        com.google.common.base.a0.k(i10 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", i10);
        this.f34239a = i4;
        this.f34240b = i10;
        this.f34241c = j4;
        this.f34242d = j10;
    }

    @Override // com.google.common.hash.m
    public int c() {
        return 64;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof b0) {
            b0 b0Var = (b0) obj;
            return this.f34239a == b0Var.f34239a && this.f34240b == b0Var.f34240b && this.f34241c == b0Var.f34241c && this.f34242d == b0Var.f34242d;
        }
        return false;
    }

    @Override // com.google.common.hash.m
    public n h() {
        return new a(this.f34239a, this.f34240b, this.f34241c, this.f34242d);
    }

    public int hashCode() {
        return (int) ((((b0.class.hashCode() ^ this.f34239a) ^ this.f34240b) ^ this.f34241c) ^ this.f34242d);
    }

    public String toString() {
        return "Hashing.sipHash" + this.f34239a + "" + this.f34240b + "(" + this.f34241c + ", " + this.f34242d + ")";
    }
}
