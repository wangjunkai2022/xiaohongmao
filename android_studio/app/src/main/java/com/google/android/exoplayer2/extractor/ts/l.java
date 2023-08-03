package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import java.util.Collections;
import java.util.List;

/* compiled from: DvbSubtitleReader.java */
/* loaded from: classes2.dex */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final List<i0.a> f23206a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.e0[] f23207b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23208c;

    /* renamed from: d  reason: collision with root package name */
    private int f23209d;

    /* renamed from: e  reason: collision with root package name */
    private int f23210e;

    /* renamed from: f  reason: collision with root package name */
    private long f23211f;

    public l(List<i0.a> list) {
        this.f23206a = list;
        this.f23207b = new com.google.android.exoplayer2.extractor.e0[list.size()];
    }

    private boolean a(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        if (h0Var.a() == 0) {
            return false;
        }
        if (h0Var.G() != i4) {
            this.f23208c = false;
        }
        this.f23209d--;
        return this.f23208c;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        com.google.android.exoplayer2.extractor.e0[] e0VarArr;
        if (this.f23208c) {
            if (this.f23209d != 2 || a(h0Var, 32)) {
                if (this.f23209d != 1 || a(h0Var, 0)) {
                    int e4 = h0Var.e();
                    int a10 = h0Var.a();
                    for (com.google.android.exoplayer2.extractor.e0 e0Var : this.f23207b) {
                        h0Var.S(e4);
                        e0Var.c(h0Var, a10);
                    }
                    this.f23210e += a10;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23208c = false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        for (int i4 = 0; i4 < this.f23207b.length; i4++) {
            i0.a aVar = this.f23206a.get(i4);
            eVar.a();
            com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 3);
            f10.d(new Format.b().S(eVar.b()).e0(com.google.android.exoplayer2.util.a0.A0).T(Collections.singletonList(aVar.f23167c)).V(aVar.f23165a).E());
            this.f23207b[i4] = f10;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
        if (this.f23208c) {
            for (com.google.android.exoplayer2.extractor.e0 e0Var : this.f23207b) {
                e0Var.e(this.f23211f, 1, this.f23210e, 0, null);
            }
            this.f23208c = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        if ((i4 & 4) == 0) {
            return;
        }
        this.f23208c = true;
        this.f23211f = j4;
        this.f23210e = 0;
        this.f23209d = 2;
    }
}
