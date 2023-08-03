package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.j2;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.y0;
import java.io.IOException;
import java.util.List;

/* compiled from: MediaPeriod.java */
/* loaded from: classes2.dex */
public interface w extends y0 {

    /* compiled from: MediaPeriod.java */
    /* loaded from: classes2.dex */
    public interface a extends y0.a<w> {
        void i(w wVar);
    }

    @Override // com.google.android.exoplayer2.source.y0
    boolean b();

    @Override // com.google.android.exoplayer2.source.y0
    long c();

    long d(long j4, j2 j2Var);

    @Override // com.google.android.exoplayer2.source.y0
    boolean e(long j4);

    @Override // com.google.android.exoplayer2.source.y0
    long g();

    @Override // com.google.android.exoplayer2.source.y0
    void h(long j4);

    List<StreamKey> j(List<com.google.android.exoplayer2.trackselection.g> list);

    long l(long j4);

    long m();

    void n(a aVar, long j4);

    long o(com.google.android.exoplayer2.trackselection.g[] gVarArr, boolean[] zArr, x0[] x0VarArr, boolean[] zArr2, long j4);

    void s() throws IOException;

    TrackGroupArray u();

    void v(long j4, boolean z9);
}
