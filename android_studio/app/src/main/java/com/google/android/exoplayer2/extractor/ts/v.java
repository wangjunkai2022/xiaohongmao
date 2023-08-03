package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.z0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: PassthroughSectionPayloadReader.java */
/* loaded from: classes2.dex */
public final class v implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private Format f23432a;

    /* renamed from: b  reason: collision with root package name */
    private u0 f23433b;

    /* renamed from: c  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23434c;

    public v(String str) {
        this.f23432a = new Format.b().e0(str).E();
    }

    @EnsuresNonNull({"timestampAdjuster", "output"})
    private void c() {
        com.google.android.exoplayer2.util.a.k(this.f23433b);
        z0.k(this.f23434c);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.b0
    public void a(u0 u0Var, com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        this.f23433b = u0Var;
        eVar.a();
        com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 5);
        this.f23434c = f10;
        f10.d(this.f23432a);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.b0
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        c();
        long e4 = this.f23433b.e();
        if (e4 == com.google.android.exoplayer2.i.f23649b) {
            return;
        }
        Format format = this.f23432a;
        if (e4 != format.subsampleOffsetUs) {
            Format E = format.buildUpon().i0(e4).E();
            this.f23432a = E;
            this.f23434c.d(E);
        }
        int a10 = h0Var.a();
        this.f23434c.c(h0Var, a10);
        this.f23434c.e(this.f23433b.d(), 1, a10, 0, null);
    }
}
