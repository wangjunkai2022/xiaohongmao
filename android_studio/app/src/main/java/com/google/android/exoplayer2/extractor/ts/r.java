package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;

/* compiled from: Id3Reader.java */
/* loaded from: classes2.dex */
public final class r implements m {

    /* renamed from: g  reason: collision with root package name */
    private static final String f23378g = "Id3Reader";

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23379a = new com.google.android.exoplayer2.util.h0(10);

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23380b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23381c;

    /* renamed from: d  reason: collision with root package name */
    private long f23382d;

    /* renamed from: e  reason: collision with root package name */
    private int f23383e;

    /* renamed from: f  reason: collision with root package name */
    private int f23384f;

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        com.google.android.exoplayer2.util.a.k(this.f23380b);
        if (this.f23381c) {
            int a10 = h0Var.a();
            int i4 = this.f23384f;
            if (i4 < 10) {
                int min = Math.min(a10, 10 - i4);
                System.arraycopy(h0Var.d(), h0Var.e(), this.f23379a.d(), this.f23384f, min);
                if (this.f23384f + min == 10) {
                    this.f23379a.S(0);
                    if (73 == this.f23379a.G() && 68 == this.f23379a.G() && 51 == this.f23379a.G()) {
                        this.f23379a.T(3);
                        this.f23383e = this.f23379a.F() + 10;
                    } else {
                        com.google.android.exoplayer2.util.w.n(f23378g, "Discarding invalid ID3 tag");
                        this.f23381c = false;
                        return;
                    }
                }
            }
            int min2 = Math.min(a10, this.f23383e - this.f23384f);
            this.f23380b.c(h0Var, min2);
            this.f23384f += min2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23381c = false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 5);
        this.f23380b = f10;
        f10.d(new Format.b().S(eVar.b()).e0(com.google.android.exoplayer2.util.a0.f27456m0).E());
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
        int i4;
        com.google.android.exoplayer2.util.a.k(this.f23380b);
        if (this.f23381c && (i4 = this.f23383e) != 0 && this.f23384f == i4) {
            this.f23380b.e(this.f23382d, 1, i4, 0, null);
            this.f23381c = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        if ((i4 & 4) == 0) {
            return;
        }
        this.f23381c = true;
        this.f23382d = j4;
        this.f23383e = 0;
        this.f23384f = 0;
    }
}
