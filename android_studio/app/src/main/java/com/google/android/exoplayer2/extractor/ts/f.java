package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.c;
import com.google.android.exoplayer2.extractor.ts.i0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: Ac4Reader.java */
/* loaded from: classes2.dex */
public final class f implements m {

    /* renamed from: n  reason: collision with root package name */
    private static final int f23051n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f23052o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f23053p = 2;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g0 f23054a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23055b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f23056c;

    /* renamed from: d  reason: collision with root package name */
    private String f23057d;

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23058e;

    /* renamed from: f  reason: collision with root package name */
    private int f23059f;

    /* renamed from: g  reason: collision with root package name */
    private int f23060g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f23061h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f23062i;

    /* renamed from: j  reason: collision with root package name */
    private long f23063j;

    /* renamed from: k  reason: collision with root package name */
    private Format f23064k;

    /* renamed from: l  reason: collision with root package name */
    private int f23065l;

    /* renamed from: m  reason: collision with root package name */
    private long f23066m;

    public f() {
        this(null);
    }

    private boolean a(com.google.android.exoplayer2.util.h0 h0Var, byte[] bArr, int i4) {
        int min = Math.min(h0Var.a(), i4 - this.f23060g);
        h0Var.k(bArr, this.f23060g, min);
        int i10 = this.f23060g + min;
        this.f23060g = i10;
        return i10 == i4;
    }

    @RequiresNonNull({"output"})
    private void g() {
        this.f23054a.q(0);
        c.b d4 = com.google.android.exoplayer2.audio.c.d(this.f23054a);
        Format format = this.f23064k;
        if (format == null || d4.f21166c != format.channelCount || d4.f21165b != format.sampleRate || !com.google.android.exoplayer2.util.a0.O.equals(format.sampleMimeType)) {
            Format E = new Format.b().S(this.f23057d).e0(com.google.android.exoplayer2.util.a0.O).H(d4.f21166c).f0(d4.f21165b).V(this.f23056c).E();
            this.f23064k = E;
            this.f23058e.d(E);
        }
        this.f23065l = d4.f21167d;
        this.f23063j = (d4.f21168e * 1000000) / this.f23064k.sampleRate;
    }

    private boolean h(com.google.android.exoplayer2.util.h0 h0Var) {
        int G;
        while (true) {
            if (h0Var.a() <= 0) {
                return false;
            }
            if (!this.f23061h) {
                this.f23061h = h0Var.G() == 172;
            } else {
                G = h0Var.G();
                this.f23061h = G == 172;
                if (G == 64 || G == 65) {
                    break;
                }
            }
        }
        this.f23062i = G == 65;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        com.google.android.exoplayer2.util.a.k(this.f23058e);
        while (h0Var.a() > 0) {
            int i4 = this.f23059f;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        int min = Math.min(h0Var.a(), this.f23065l - this.f23060g);
                        this.f23058e.c(h0Var, min);
                        int i10 = this.f23060g + min;
                        this.f23060g = i10;
                        int i11 = this.f23065l;
                        if (i10 == i11) {
                            this.f23058e.e(this.f23066m, 1, i11, 0, null);
                            this.f23066m += this.f23063j;
                            this.f23059f = 0;
                        }
                    }
                } else if (a(h0Var, this.f23055b.d(), 16)) {
                    g();
                    this.f23055b.S(0);
                    this.f23058e.c(this.f23055b, 16);
                    this.f23059f = 2;
                }
            } else if (h(h0Var)) {
                this.f23059f = 1;
                this.f23055b.d()[0] = -84;
                this.f23055b.d()[1] = (byte) (this.f23062i ? 65 : 64);
                this.f23060g = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23059f = 0;
        this.f23060g = 0;
        this.f23061h = false;
        this.f23062i = false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23057d = eVar.b();
        this.f23058e = mVar.f(eVar.c(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23066m = j4;
    }

    public f(@Nullable String str) {
        com.google.android.exoplayer2.util.g0 g0Var = new com.google.android.exoplayer2.util.g0(new byte[16]);
        this.f23054a = g0Var;
        this.f23055b = new com.google.android.exoplayer2.util.h0(g0Var.f27547a);
        this.f23059f = 0;
        this.f23060g = 0;
        this.f23061h = false;
        this.f23062i = false;
        this.f23056c = str;
    }
}
