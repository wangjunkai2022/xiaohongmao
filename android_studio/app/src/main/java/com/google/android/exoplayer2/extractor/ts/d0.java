package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import java.util.List;

/* compiled from: SeiReader.java */
/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final List<Format> f23036a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.e0[] f23037b;

    public d0(List<Format> list) {
        this.f23036a = list;
        this.f23037b = new com.google.android.exoplayer2.extractor.e0[list.size()];
    }

    public void a(long j4, com.google.android.exoplayer2.util.h0 h0Var) {
        com.google.android.exoplayer2.extractor.d.a(j4, h0Var, this.f23037b);
    }

    public void b(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        for (int i4 = 0; i4 < this.f23037b.length; i4++) {
            eVar.a();
            com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 3);
            Format format = this.f23036a.get(i4);
            String str = format.sampleMimeType;
            boolean z9 = com.google.android.exoplayer2.util.a0.f27458n0.equals(str) || com.google.android.exoplayer2.util.a0.f27460o0.equals(str);
            String valueOf = String.valueOf(str);
            com.google.android.exoplayer2.util.a.b(z9, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            String str2 = format.id;
            if (str2 == null) {
                str2 = eVar.b();
            }
            f10.d(new Format.b().S(str2).e0(str).g0(format.selectionFlags).V(format.language).F(format.accessibilityChannel).T(format.initializationData).E());
            this.f23037b[i4] = f10;
        }
    }
}
