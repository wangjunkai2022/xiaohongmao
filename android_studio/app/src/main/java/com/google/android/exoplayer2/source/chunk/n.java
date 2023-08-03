package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;

/* compiled from: MediaChunk.java */
/* loaded from: classes2.dex */
public abstract class n extends f {

    /* renamed from: j  reason: collision with root package name */
    public final long f24872j;

    public n(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar, Format format, int i4, @Nullable Object obj, long j4, long j10, long j11) {
        super(mVar, oVar, 1, format, i4, obj, j4, j10);
        com.google.android.exoplayer2.util.a.g(format);
        this.f24872j = j11;
    }

    public long g() {
        long j4 = this.f24872j;
        if (j4 != -1) {
            return 1 + j4;
        }
        return -1L;
    }

    public abstract boolean h();
}
