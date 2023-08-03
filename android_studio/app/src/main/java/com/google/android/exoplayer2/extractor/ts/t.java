package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.g0;
import com.google.android.exoplayer2.extractor.ts.i0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: MpegAudioReader.java */
/* loaded from: classes2.dex */
public final class t implements m {

    /* renamed from: m  reason: collision with root package name */
    private static final int f23411m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static final int f23412n = 1;

    /* renamed from: o  reason: collision with root package name */
    private static final int f23413o = 2;

    /* renamed from: p  reason: collision with root package name */
    private static final int f23414p = 4;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23415a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.a f23416b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f23417c;

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23418d;

    /* renamed from: e  reason: collision with root package name */
    private String f23419e;

    /* renamed from: f  reason: collision with root package name */
    private int f23420f;

    /* renamed from: g  reason: collision with root package name */
    private int f23421g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f23422h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f23423i;

    /* renamed from: j  reason: collision with root package name */
    private long f23424j;

    /* renamed from: k  reason: collision with root package name */
    private int f23425k;

    /* renamed from: l  reason: collision with root package name */
    private long f23426l;

    public t() {
        this(null);
    }

    private void a(com.google.android.exoplayer2.util.h0 h0Var) {
        byte[] d4 = h0Var.d();
        int f10 = h0Var.f();
        for (int e4 = h0Var.e(); e4 < f10; e4++) {
            boolean z9 = (d4[e4] & 255) == 255;
            boolean z10 = this.f23423i && (d4[e4] & 224) == 224;
            this.f23423i = z9;
            if (z10) {
                h0Var.S(e4 + 1);
                this.f23423i = false;
                this.f23415a.d()[1] = d4[e4];
                this.f23421g = 2;
                this.f23420f = 1;
                return;
            }
        }
        h0Var.S(f10);
    }

    @RequiresNonNull({"output"})
    private void g(com.google.android.exoplayer2.util.h0 h0Var) {
        int min = Math.min(h0Var.a(), this.f23425k - this.f23421g);
        this.f23418d.c(h0Var, min);
        int i4 = this.f23421g + min;
        this.f23421g = i4;
        int i10 = this.f23425k;
        if (i4 < i10) {
            return;
        }
        this.f23418d.e(this.f23426l, 1, i10, 0, null);
        this.f23426l += this.f23424j;
        this.f23421g = 0;
        this.f23420f = 0;
    }

    @RequiresNonNull({"output"})
    private void h(com.google.android.exoplayer2.util.h0 h0Var) {
        int min = Math.min(h0Var.a(), 4 - this.f23421g);
        h0Var.k(this.f23415a.d(), this.f23421g, min);
        int i4 = this.f23421g + min;
        this.f23421g = i4;
        if (i4 < 4) {
            return;
        }
        this.f23415a.S(0);
        if (!this.f23416b.a(this.f23415a.o())) {
            this.f23421g = 0;
            this.f23420f = 1;
            return;
        }
        g0.a aVar = this.f23416b;
        this.f23425k = aVar.f21240c;
        if (!this.f23422h) {
            this.f23424j = (aVar.f21244g * 1000000) / aVar.f21241d;
            this.f23418d.d(new Format.b().S(this.f23419e).e0(this.f23416b.f21239b).W(4096).H(this.f23416b.f21242e).f0(this.f23416b.f21241d).V(this.f23417c).E());
            this.f23422h = true;
        }
        this.f23415a.S(0);
        this.f23418d.c(this.f23415a, 4);
        this.f23420f = 2;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        com.google.android.exoplayer2.util.a.k(this.f23418d);
        while (h0Var.a() > 0) {
            int i4 = this.f23420f;
            if (i4 == 0) {
                a(h0Var);
            } else if (i4 == 1) {
                h(h0Var);
            } else if (i4 == 2) {
                g(h0Var);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23420f = 0;
        this.f23421g = 0;
        this.f23423i = false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23419e = eVar.b();
        this.f23418d = mVar.f(eVar.c(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23426l = j4;
    }

    public t(@Nullable String str) {
        this.f23420f = 0;
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(4);
        this.f23415a = h0Var;
        h0Var.d()[0] = -1;
        this.f23416b = new g0.a();
        this.f23417c = str;
    }
}
