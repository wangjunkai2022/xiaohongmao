package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.e0;
import java.io.IOException;
import java.util.List;

/* compiled from: ChunkExtractor.java */
/* loaded from: classes2.dex */
public interface g {

    /* compiled from: ChunkExtractor.java */
    /* loaded from: classes2.dex */
    public interface a {
        @Nullable
        g a(int i4, Format format, boolean z9, List<Format> list, @Nullable e0 e0Var);
    }

    /* compiled from: ChunkExtractor.java */
    /* loaded from: classes2.dex */
    public interface b {
        e0 f(int i4, int i10);
    }

    boolean a(com.google.android.exoplayer2.extractor.l lVar) throws IOException;

    void b(@Nullable b bVar, long j4, long j10);

    @Nullable
    com.google.android.exoplayer2.extractor.e c();

    @Nullable
    Format[] d();

    void release();
}
