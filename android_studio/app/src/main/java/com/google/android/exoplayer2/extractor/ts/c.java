package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.b;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.z0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: Ac3Reader.java */
/* loaded from: classes2.dex */
public final class c implements m {

    /* renamed from: m  reason: collision with root package name */
    private static final int f23010m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static final int f23011n = 1;

    /* renamed from: o  reason: collision with root package name */
    private static final int f23012o = 2;

    /* renamed from: p  reason: collision with root package name */
    private static final int f23013p = 128;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g0 f23014a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23015b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f23016c;

    /* renamed from: d  reason: collision with root package name */
    private String f23017d;

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23018e;

    /* renamed from: f  reason: collision with root package name */
    private int f23019f;

    /* renamed from: g  reason: collision with root package name */
    private int f23020g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f23021h;

    /* renamed from: i  reason: collision with root package name */
    private long f23022i;

    /* renamed from: j  reason: collision with root package name */
    private Format f23023j;

    /* renamed from: k  reason: collision with root package name */
    private int f23024k;

    /* renamed from: l  reason: collision with root package name */
    private long f23025l;

    public c() {
        this(null);
    }

    private boolean a(com.google.android.exoplayer2.util.h0 h0Var, byte[] bArr, int i4) {
        int min = Math.min(h0Var.a(), i4 - this.f23020g);
        h0Var.k(bArr, this.f23020g, min);
        int i10 = this.f23020g + min;
        this.f23020g = i10;
        return i10 == i4;
    }

    @RequiresNonNull({"output"})
    private void g() {
        this.f23014a.q(0);
        b.C0155b e4 = com.google.android.exoplayer2.audio.b.e(this.f23014a);
        Format format = this.f23023j;
        if (format == null || e4.f21139d != format.channelCount || e4.f21138c != format.sampleRate || !z0.c(e4.f21136a, format.sampleMimeType)) {
            Format E = new Format.b().S(this.f23017d).e0(e4.f21136a).H(e4.f21139d).f0(e4.f21138c).V(this.f23016c).E();
            this.f23023j = E;
            this.f23018e.d(E);
        }
        this.f23024k = e4.f21140e;
        this.f23022i = (e4.f21141f * 1000000) / this.f23023j.sampleRate;
    }

    private boolean h(com.google.android.exoplayer2.util.h0 h0Var) {
        while (true) {
            if (h0Var.a() <= 0) {
                return false;
            }
            if (!this.f23021h) {
                this.f23021h = h0Var.G() == 11;
            } else {
                int G = h0Var.G();
                if (G == 119) {
                    this.f23021h = false;
                    return true;
                }
                this.f23021h = G == 11;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        com.google.android.exoplayer2.util.a.k(this.f23018e);
        while (h0Var.a() > 0) {
            int i4 = this.f23019f;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        int min = Math.min(h0Var.a(), this.f23024k - this.f23020g);
                        this.f23018e.c(h0Var, min);
                        int i10 = this.f23020g + min;
                        this.f23020g = i10;
                        int i11 = this.f23024k;
                        if (i10 == i11) {
                            this.f23018e.e(this.f23025l, 1, i11, 0, null);
                            this.f23025l += this.f23022i;
                            this.f23019f = 0;
                        }
                    }
                } else if (a(h0Var, this.f23015b.d(), 128)) {
                    g();
                    this.f23015b.S(0);
                    this.f23018e.c(this.f23015b, 128);
                    this.f23019f = 2;
                }
            } else if (h(h0Var)) {
                this.f23019f = 1;
                this.f23015b.d()[0] = com.google.common.base.c.f32106m;
                this.f23015b.d()[1] = 119;
                this.f23020g = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23019f = 0;
        this.f23020g = 0;
        this.f23021h = false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23017d = eVar.b();
        this.f23018e = mVar.f(eVar.c(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23025l = j4;
    }

    public c(@Nullable String str) {
        com.google.android.exoplayer2.util.g0 g0Var = new com.google.android.exoplayer2.util.g0(new byte[128]);
        this.f23014a = g0Var;
        this.f23015b = new com.google.android.exoplayer2.util.h0(g0Var.f27547a);
        this.f23019f = 0;
        this.f23016c = str;
    }
}
