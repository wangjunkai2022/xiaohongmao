package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.extractor.a;
import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: TsBinarySearchSeeker.java */
/* loaded from: classes2.dex */
final class e0 extends com.google.android.exoplayer2.extractor.a {

    /* renamed from: f  reason: collision with root package name */
    private static final long f23045f = 100000;

    /* renamed from: g  reason: collision with root package name */
    private static final int f23046g = 940;

    /* compiled from: TsBinarySearchSeeker.java */
    /* loaded from: classes2.dex */
    private static final class a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final u0 f23047a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.h0 f23048b = new com.google.android.exoplayer2.util.h0();

        /* renamed from: c  reason: collision with root package name */
        private final int f23049c;

        /* renamed from: d  reason: collision with root package name */
        private final int f23050d;

        public a(int i4, u0 u0Var, int i10) {
            this.f23049c = i4;
            this.f23047a = u0Var;
            this.f23050d = i10;
        }

        private a.e c(com.google.android.exoplayer2.util.h0 h0Var, long j4, long j10) {
            int a10;
            int a11;
            int f10 = h0Var.f();
            long j11 = -1;
            long j12 = -1;
            long j13 = -9223372036854775807L;
            while (h0Var.a() >= 188 && (a11 = (a10 = j0.a(h0Var.d(), h0Var.e(), f10)) + 188) <= f10) {
                long c10 = j0.c(h0Var, a10, this.f23049c);
                if (c10 != com.google.android.exoplayer2.i.f23649b) {
                    long b10 = this.f23047a.b(c10);
                    if (b10 > j4) {
                        if (j13 == com.google.android.exoplayer2.i.f23649b) {
                            return a.e.d(b10, j10);
                        }
                        return a.e.e(j10 + j12);
                    } else if (e0.f23045f + b10 > j4) {
                        return a.e.e(j10 + a10);
                    } else {
                        j12 = a10;
                        j13 = b10;
                    }
                }
                h0Var.S(a11);
                j11 = a11;
            }
            if (j13 != com.google.android.exoplayer2.i.f23649b) {
                return a.e.f(j13, j10 + j11);
            }
            return a.e.f22086h;
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public a.e a(com.google.android.exoplayer2.extractor.l lVar, long j4) throws IOException {
            long position = lVar.getPosition();
            int min = (int) Math.min(this.f23050d, lVar.getLength() - position);
            this.f23048b.O(min);
            lVar.s(this.f23048b.d(), 0, min);
            return c(this.f23048b, j4, position);
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public void b() {
            this.f23048b.P(z0.f27748f);
        }
    }

    public e0(u0 u0Var, long j4, long j10, int i4, int i10) {
        super(new a.b(), new a(i4, u0Var, i10), j4, 0L, j4 + 1, 0L, j10, 188L, f23046g);
    }
}
