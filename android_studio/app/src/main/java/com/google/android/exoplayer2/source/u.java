package com.google.android.exoplayer2.source;

import android.annotation.SuppressLint;
import android.media.MediaParser;
import android.net.Uri;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.source.l0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: MediaParserExtractorAdapter.java */
@RequiresApi(30)
/* loaded from: classes2.dex */
public final class u implements l0 {

    /* renamed from: e  reason: collision with root package name */
    public static final l0.a f25174e = t.f25172a;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.source.mediaparser.c f25175a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.source.mediaparser.a f25176b;

    /* renamed from: c  reason: collision with root package name */
    private final MediaParser f25177c;

    /* renamed from: d  reason: collision with root package name */
    private String f25178d;

    @SuppressLint({"WrongConstant"})
    public u() {
        com.google.android.exoplayer2.source.mediaparser.c cVar = new com.google.android.exoplayer2.source.mediaparser.c();
        this.f25175a = cVar;
        this.f25176b = new com.google.android.exoplayer2.source.mediaparser.a();
        MediaParser create = MediaParser.create(cVar, new String[0]);
        this.f25177c = create;
        Boolean bool = Boolean.TRUE;
        create.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25013c, bool);
        create.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25011a, bool);
        create.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25012b, bool);
        this.f25178d = "android.media.mediaparser.UNKNOWN";
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void a(long j4, long j10) {
        this.f25176b.b(j4);
        Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> k10 = this.f25175a.k(j10);
        MediaParser mediaParser = this.f25177c;
        Object obj = k10.second;
        mediaParser.seek(((MediaParser.SeekPoint) obj).position == j4 ? (MediaParser.SeekPoint) obj : (MediaParser.SeekPoint) k10.first);
    }

    @Override // com.google.android.exoplayer2.source.l0
    public int b(com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        boolean advance = this.f25177c.advance(this.f25176b);
        long a10 = this.f25176b.a();
        zVar.f23544a = a10;
        if (advance) {
            return a10 != -1 ? 1 : 0;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void c() {
        if ("android.media.mediaparser.Mp3Parser".equals(this.f25178d)) {
            this.f25175a.a();
        }
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void d(com.google.android.exoplayer2.upstream.i iVar, Uri uri, Map<String, List<String>> map, long j4, long j10, com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        this.f25175a.o(mVar);
        this.f25176b.c(iVar, j10);
        this.f25176b.b(j4);
        String parserName = this.f25177c.getParserName();
        if ("android.media.mediaparser.UNKNOWN".equals(parserName)) {
            this.f25177c.advance(this.f25176b);
            String parserName2 = this.f25177c.getParserName();
            this.f25178d = parserName2;
            this.f25175a.r(parserName2);
        } else if (parserName.equals(this.f25178d)) {
        } else {
            String parserName3 = this.f25177c.getParserName();
            this.f25178d = parserName3;
            this.f25175a.r(parserName3);
        }
    }

    @Override // com.google.android.exoplayer2.source.l0
    public long e() {
        return this.f25176b.getPosition();
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void release() {
        this.f25177c.release();
    }
}
