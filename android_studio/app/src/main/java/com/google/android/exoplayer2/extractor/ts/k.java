package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: DtsReader.java */
/* loaded from: classes2.dex */
public final class k implements m {

    /* renamed from: l  reason: collision with root package name */
    private static final int f23188l = 0;

    /* renamed from: m  reason: collision with root package name */
    private static final int f23189m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f23190n = 2;

    /* renamed from: o  reason: collision with root package name */
    private static final int f23191o = 18;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f23193b;

    /* renamed from: c  reason: collision with root package name */
    private String f23194c;

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23195d;

    /* renamed from: f  reason: collision with root package name */
    private int f23197f;

    /* renamed from: g  reason: collision with root package name */
    private int f23198g;

    /* renamed from: h  reason: collision with root package name */
    private long f23199h;

    /* renamed from: i  reason: collision with root package name */
    private Format f23200i;

    /* renamed from: j  reason: collision with root package name */
    private int f23201j;

    /* renamed from: k  reason: collision with root package name */
    private long f23202k;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23192a = new com.google.android.exoplayer2.util.h0(new byte[18]);

    /* renamed from: e  reason: collision with root package name */
    private int f23196e = 0;

    public k(@Nullable String str) {
        this.f23193b = str;
    }

    private boolean a(com.google.android.exoplayer2.util.h0 h0Var, byte[] bArr, int i4) {
        int min = Math.min(h0Var.a(), i4 - this.f23197f);
        h0Var.k(bArr, this.f23197f, min);
        int i10 = this.f23197f + min;
        this.f23197f = i10;
        return i10 == i4;
    }

    @RequiresNonNull({"output"})
    private void g() {
        byte[] d4 = this.f23192a.d();
        if (this.f23200i == null) {
            Format g4 = com.google.android.exoplayer2.audio.c0.g(d4, this.f23194c, this.f23193b, null);
            this.f23200i = g4;
            this.f23195d.d(g4);
        }
        this.f23201j = com.google.android.exoplayer2.audio.c0.a(d4);
        this.f23199h = (int) ((com.google.android.exoplayer2.audio.c0.f(d4) * 1000000) / this.f23200i.sampleRate);
    }

    private boolean h(com.google.android.exoplayer2.util.h0 h0Var) {
        while (h0Var.a() > 0) {
            int i4 = this.f23198g << 8;
            this.f23198g = i4;
            int G = i4 | h0Var.G();
            this.f23198g = G;
            if (com.google.android.exoplayer2.audio.c0.d(G)) {
                byte[] d4 = this.f23192a.d();
                int i10 = this.f23198g;
                d4[0] = (byte) ((i10 >> 24) & 255);
                d4[1] = (byte) ((i10 >> 16) & 255);
                d4[2] = (byte) ((i10 >> 8) & 255);
                d4[3] = (byte) (i10 & 255);
                this.f23197f = 4;
                this.f23198g = 0;
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        com.google.android.exoplayer2.util.a.k(this.f23195d);
        while (h0Var.a() > 0) {
            int i4 = this.f23196e;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        int min = Math.min(h0Var.a(), this.f23201j - this.f23197f);
                        this.f23195d.c(h0Var, min);
                        int i10 = this.f23197f + min;
                        this.f23197f = i10;
                        int i11 = this.f23201j;
                        if (i10 == i11) {
                            this.f23195d.e(this.f23202k, 1, i11, 0, null);
                            this.f23202k += this.f23199h;
                            this.f23196e = 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (a(h0Var, this.f23192a.d(), 18)) {
                    g();
                    this.f23192a.S(0);
                    this.f23195d.c(this.f23192a, 18);
                    this.f23196e = 2;
                }
            } else if (h(h0Var)) {
                this.f23196e = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23196e = 0;
        this.f23197f = 0;
        this.f23198g = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23194c = eVar.b();
        this.f23195d = mVar.f(eVar.c(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23202k = j4;
    }
}
