package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;

/* compiled from: BaseMediaChunk.java */
/* loaded from: classes2.dex */
public abstract class a extends n {

    /* renamed from: k  reason: collision with root package name */
    public final long f24790k;

    /* renamed from: l  reason: collision with root package name */
    public final long f24791l;

    /* renamed from: m  reason: collision with root package name */
    private c f24792m;

    /* renamed from: n  reason: collision with root package name */
    private int[] f24793n;

    public a(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar, Format format, int i4, @Nullable Object obj, long j4, long j10, long j11, long j12, long j13) {
        super(mVar, oVar, format, i4, obj, j4, j10, j13);
        this.f24790k = j11;
        this.f24791l = j12;
    }

    public final int i(int i4) {
        return ((int[]) com.google.android.exoplayer2.util.a.k(this.f24793n))[i4];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c j() {
        return (c) com.google.android.exoplayer2.util.a.k(this.f24792m);
    }

    public void k(c cVar) {
        this.f24792m = cVar;
        this.f24793n = cVar.a();
    }
}
