package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.extractor.a;
import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PsBinarySearchSeeker.java */
/* loaded from: classes2.dex */
public final class x extends com.google.android.exoplayer2.extractor.a {

    /* renamed from: f  reason: collision with root package name */
    private static final long f23455f = 100000;

    /* renamed from: g  reason: collision with root package name */
    private static final int f23456g = 1000;

    /* renamed from: h  reason: collision with root package name */
    private static final int f23457h = 20000;

    /* compiled from: PsBinarySearchSeeker.java */
    /* loaded from: classes2.dex */
    private static final class b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final u0 f23458a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.h0 f23459b;

        private a.e c(com.google.android.exoplayer2.util.h0 h0Var, long j4, long j10) {
            int i4 = -1;
            long j11 = -9223372036854775807L;
            int i10 = -1;
            while (h0Var.a() >= 4) {
                if (x.k(h0Var.d(), h0Var.e()) != 442) {
                    h0Var.T(1);
                } else {
                    h0Var.T(4);
                    long l10 = y.l(h0Var);
                    if (l10 != com.google.android.exoplayer2.i.f23649b) {
                        long b10 = this.f23458a.b(l10);
                        if (b10 > j4) {
                            if (j11 == com.google.android.exoplayer2.i.f23649b) {
                                return a.e.d(b10, j10);
                            }
                            return a.e.e(j10 + i10);
                        } else if (x.f23455f + b10 > j4) {
                            return a.e.e(j10 + h0Var.e());
                        } else {
                            i10 = h0Var.e();
                            j11 = b10;
                        }
                    }
                    d(h0Var);
                    i4 = h0Var.e();
                }
            }
            if (j11 != com.google.android.exoplayer2.i.f23649b) {
                return a.e.f(j11, j10 + i4);
            }
            return a.e.f22086h;
        }

        private static void d(com.google.android.exoplayer2.util.h0 h0Var) {
            int k10;
            int f10 = h0Var.f();
            if (h0Var.a() < 10) {
                h0Var.S(f10);
                return;
            }
            h0Var.T(9);
            int G = h0Var.G() & 7;
            if (h0Var.a() < G) {
                h0Var.S(f10);
                return;
            }
            h0Var.T(G);
            if (h0Var.a() < 4) {
                h0Var.S(f10);
                return;
            }
            if (x.k(h0Var.d(), h0Var.e()) == 443) {
                h0Var.T(4);
                int M = h0Var.M();
                if (h0Var.a() < M) {
                    h0Var.S(f10);
                    return;
                }
                h0Var.T(M);
            }
            while (h0Var.a() >= 4 && (k10 = x.k(h0Var.d(), h0Var.e())) != 442 && k10 != 441 && (k10 >>> 8) == 1) {
                h0Var.T(4);
                if (h0Var.a() < 2) {
                    h0Var.S(f10);
                    return;
                }
                h0Var.S(Math.min(h0Var.f(), h0Var.e() + h0Var.M()));
            }
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public a.e a(com.google.android.exoplayer2.extractor.l lVar, long j4) throws IOException {
            long position = lVar.getPosition();
            int min = (int) Math.min((long) com.google.android.exoplayer2.audio.j0.f21249v, lVar.getLength() - position);
            this.f23459b.O(min);
            lVar.s(this.f23459b.d(), 0, min);
            return c(this.f23459b, j4, position);
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public void b() {
            this.f23459b.P(z0.f27748f);
        }

        private b(u0 u0Var) {
            this.f23458a = u0Var;
            this.f23459b = new com.google.android.exoplayer2.util.h0();
        }
    }

    public x(u0 u0Var, long j4, long j10) {
        super(new a.b(), new b(u0Var), j4, 0L, j4 + 1, 0L, j10, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i4) {
        return (bArr[i4 + 3] & 255) | ((bArr[i4] & 255) << 24) | ((bArr[i4 + 1] & 255) << 16) | ((bArr[i4 + 2] & 255) << 8);
    }
}
