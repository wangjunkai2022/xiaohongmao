package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.j2;
import java.io.IOException;
import java.util.List;

/* compiled from: ChunkSource.java */
/* loaded from: classes2.dex */
public interface j {
    void a() throws IOException;

    boolean b(long j4, f fVar, List<? extends n> list);

    void c(f fVar);

    long d(long j4, j2 j2Var);

    boolean e(f fVar, boolean z9, Exception exc, long j4);

    int f(long j4, List<? extends n> list);

    void g(long j4, long j10, List<? extends n> list, h hVar);

    void release();
}
