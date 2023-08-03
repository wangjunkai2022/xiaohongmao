package com.google.android.exoplayer2.source.ads;

import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.m;

/* compiled from: SinglePeriodAdTimeline.java */
@VisibleForTesting(otherwise = 3)
/* loaded from: classes2.dex */
public final class k extends m {

    /* renamed from: g  reason: collision with root package name */
    private final c f24728g;

    public k(s2 s2Var, c cVar) {
        super(s2Var);
        com.google.android.exoplayer2.util.a.i(s2Var.m() == 1);
        com.google.android.exoplayer2.util.a.i(s2Var.u() == 1);
        this.f24728g = cVar;
    }

    @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
    public s2.b k(int i4, s2.b bVar, boolean z9) {
        this.f25005f.k(i4, bVar, z9);
        long j4 = bVar.f24556d;
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            j4 = this.f24728g.f24707f;
        }
        bVar.u(bVar.f24553a, bVar.f24554b, bVar.f24555c, j4, bVar.q(), this.f24728g, bVar.f24558f);
        return bVar;
    }
}
