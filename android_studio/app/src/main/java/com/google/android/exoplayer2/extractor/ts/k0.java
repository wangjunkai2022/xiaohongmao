package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UserDataReader.java */
/* loaded from: classes2.dex */
public final class k0 {

    /* renamed from: c  reason: collision with root package name */
    private static final int f23203c = 434;

    /* renamed from: a  reason: collision with root package name */
    private final List<Format> f23204a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.e0[] f23205b;

    public k0(List<Format> list) {
        this.f23204a = list;
        this.f23205b = new com.google.android.exoplayer2.extractor.e0[list.size()];
    }

    public void a(long j4, com.google.android.exoplayer2.util.h0 h0Var) {
        if (h0Var.a() < 9) {
            return;
        }
        int o9 = h0Var.o();
        int o10 = h0Var.o();
        int G = h0Var.G();
        if (o9 == f23203c && o10 == 1195456820 && G == 3) {
            com.google.android.exoplayer2.extractor.d.b(j4, h0Var, this.f23205b);
        }
    }

    public void b(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        for (int i4 = 0; i4 < this.f23205b.length; i4++) {
            eVar.a();
            com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 3);
            Format format = this.f23204a.get(i4);
            String str = format.sampleMimeType;
            boolean z9 = com.google.android.exoplayer2.util.a0.f27458n0.equals(str) || com.google.android.exoplayer2.util.a0.f27460o0.equals(str);
            String valueOf = String.valueOf(str);
            com.google.android.exoplayer2.util.a.b(z9, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            f10.d(new Format.b().S(eVar.b()).e0(str).g0(format.selectionFlags).V(format.language).F(format.accessibilityChannel).T(format.initializationData).E());
            this.f23205b[i4] = f10;
        }
    }
}
