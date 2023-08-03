package com.google.android.exoplayer2.source;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: ProgressiveMediaExtractor.java */
/* loaded from: classes2.dex */
public interface l0 {

    /* compiled from: ProgressiveMediaExtractor.java */
    /* loaded from: classes2.dex */
    public interface a {
        l0 a();
    }

    void a(long j4, long j10);

    int b(com.google.android.exoplayer2.extractor.z zVar) throws IOException;

    void c();

    void d(com.google.android.exoplayer2.upstream.i iVar, Uri uri, Map<String, List<String>> map, long j4, long j10, com.google.android.exoplayer2.extractor.m mVar) throws IOException;

    long e();

    void release();
}
