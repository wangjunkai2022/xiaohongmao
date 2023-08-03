package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.z0;

/* compiled from: SectionReader.java */
/* loaded from: classes2.dex */
public final class c0 implements i0 {

    /* renamed from: j  reason: collision with root package name */
    private static final int f23026j = 3;

    /* renamed from: k  reason: collision with root package name */
    private static final int f23027k = 32;

    /* renamed from: l  reason: collision with root package name */
    private static final int f23028l = 4098;

    /* renamed from: d  reason: collision with root package name */
    private final b0 f23029d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23030e = new com.google.android.exoplayer2.util.h0(32);

    /* renamed from: f  reason: collision with root package name */
    private int f23031f;

    /* renamed from: g  reason: collision with root package name */
    private int f23032g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f23033h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f23034i;

    public c0(b0 b0Var) {
        this.f23029d = b0Var;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public void a(u0 u0Var, com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        this.f23029d.a(u0Var, mVar, eVar);
        this.f23034i = true;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public void b(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        boolean z9 = (i4 & 1) != 0;
        int e4 = z9 ? h0Var.e() + h0Var.G() : -1;
        if (this.f23034i) {
            if (!z9) {
                return;
            }
            this.f23034i = false;
            h0Var.S(e4);
            this.f23032g = 0;
        }
        while (h0Var.a() > 0) {
            int i10 = this.f23032g;
            if (i10 < 3) {
                if (i10 == 0) {
                    int G = h0Var.G();
                    h0Var.S(h0Var.e() - 1);
                    if (G == 255) {
                        this.f23034i = true;
                        return;
                    }
                }
                int min = Math.min(h0Var.a(), 3 - this.f23032g);
                h0Var.k(this.f23030e.d(), this.f23032g, min);
                int i11 = this.f23032g + min;
                this.f23032g = i11;
                if (i11 == 3) {
                    this.f23030e.S(0);
                    this.f23030e.R(3);
                    this.f23030e.T(1);
                    int G2 = this.f23030e.G();
                    int G3 = this.f23030e.G();
                    this.f23033h = (G2 & 128) != 0;
                    this.f23031f = (((G2 & 15) << 8) | G3) + 3;
                    int b10 = this.f23030e.b();
                    int i12 = this.f23031f;
                    if (b10 < i12) {
                        this.f23030e.c(Math.min(4098, Math.max(i12, this.f23030e.b() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(h0Var.a(), this.f23031f - this.f23032g);
                h0Var.k(this.f23030e.d(), this.f23032g, min2);
                int i13 = this.f23032g + min2;
                this.f23032g = i13;
                int i14 = this.f23031f;
                if (i13 != i14) {
                    continue;
                } else {
                    if (this.f23033h) {
                        if (z0.w(this.f23030e.d(), 0, this.f23031f, -1) != 0) {
                            this.f23034i = true;
                            return;
                        }
                        this.f23030e.R(this.f23031f - 4);
                    } else {
                        this.f23030e.R(i14);
                    }
                    this.f23030e.S(0);
                    this.f23029d.b(this.f23030e);
                    this.f23032g = 0;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public void c() {
        this.f23034i = true;
    }
}
