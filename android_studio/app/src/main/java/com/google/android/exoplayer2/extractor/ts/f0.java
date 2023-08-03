package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: TsDurationReader.java */
/* loaded from: classes2.dex */
final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f23067a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f23070d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23071e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f23072f;

    /* renamed from: b  reason: collision with root package name */
    private final u0 f23068b = new u0(0);

    /* renamed from: g  reason: collision with root package name */
    private long f23073g = com.google.android.exoplayer2.i.f23649b;

    /* renamed from: h  reason: collision with root package name */
    private long f23074h = com.google.android.exoplayer2.i.f23649b;

    /* renamed from: i  reason: collision with root package name */
    private long f23075i = com.google.android.exoplayer2.i.f23649b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23069c = new com.google.android.exoplayer2.util.h0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(int i4) {
        this.f23067a = i4;
    }

    private int a(com.google.android.exoplayer2.extractor.l lVar) {
        this.f23069c.P(z0.f27748f);
        this.f23070d = true;
        lVar.h();
        return 0;
    }

    private int f(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar, int i4) throws IOException {
        int min = (int) Math.min(this.f23067a, lVar.getLength());
        long j4 = 0;
        if (lVar.getPosition() != j4) {
            zVar.f23544a = j4;
            return 1;
        }
        this.f23069c.O(min);
        lVar.h();
        lVar.s(this.f23069c.d(), 0, min);
        this.f23073g = g(this.f23069c, i4);
        this.f23071e = true;
        return 0;
    }

    private long g(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        int f10 = h0Var.f();
        for (int e4 = h0Var.e(); e4 < f10; e4++) {
            if (h0Var.d()[e4] == 71) {
                long c10 = j0.c(h0Var, e4, i4);
                if (c10 != com.google.android.exoplayer2.i.f23649b) {
                    return c10;
                }
            }
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    private int h(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar, int i4) throws IOException {
        long length = lVar.getLength();
        int min = (int) Math.min(this.f23067a, length);
        long j4 = length - min;
        if (lVar.getPosition() != j4) {
            zVar.f23544a = j4;
            return 1;
        }
        this.f23069c.O(min);
        lVar.h();
        lVar.s(this.f23069c.d(), 0, min);
        this.f23074h = i(this.f23069c, i4);
        this.f23072f = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        for (int i10 = f10 - 188; i10 >= e4; i10--) {
            if (j0.b(h0Var.d(), e4, f10, i10)) {
                long c10 = j0.c(h0Var, i10, i4);
                if (c10 != com.google.android.exoplayer2.i.f23649b) {
                    return c10;
                }
            }
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    public long b() {
        return this.f23075i;
    }

    public u0 c() {
        return this.f23068b;
    }

    public boolean d() {
        return this.f23070d;
    }

    public int e(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar, int i4) throws IOException {
        if (i4 <= 0) {
            return a(lVar);
        }
        if (!this.f23072f) {
            return h(lVar, zVar, i4);
        }
        if (this.f23074h == com.google.android.exoplayer2.i.f23649b) {
            return a(lVar);
        }
        if (!this.f23071e) {
            return f(lVar, zVar, i4);
        }
        long j4 = this.f23073g;
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            return a(lVar);
        }
        this.f23075i = this.f23068b.b(this.f23074h) - this.f23068b.b(j4);
        return a(lVar);
    }
}
