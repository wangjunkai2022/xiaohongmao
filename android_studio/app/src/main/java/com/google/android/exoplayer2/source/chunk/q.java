package com.google.android.exoplayer2.source.chunk;

import android.annotation.SuppressLint;
import android.media.MediaParser;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.source.chunk.g;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MediaParserChunkExtractor.java */
@RequiresApi(30)
/* loaded from: classes2.dex */
public final class q implements g {

    /* renamed from: i  reason: collision with root package name */
    private static final String f24875i = "MediaPrsrChunkExtractor";

    /* renamed from: j  reason: collision with root package name */
    public static final g.a f24876j = p.f24874a;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.source.mediaparser.c f24877a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.source.mediaparser.a f24878b;

    /* renamed from: c  reason: collision with root package name */
    private final MediaParser f24879c;

    /* renamed from: d  reason: collision with root package name */
    private final b f24880d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.j f24881e;

    /* renamed from: f  reason: collision with root package name */
    private long f24882f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private g.b f24883g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Format[] f24884h;

    /* compiled from: MediaParserChunkExtractor.java */
    /* loaded from: classes2.dex */
    private class b implements com.google.android.exoplayer2.extractor.m {
        private b() {
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public e0 f(int i4, int i10) {
            return q.this.f24883g != null ? q.this.f24883g.f(i4, i10) : q.this.f24881e;
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public void q(b0 b0Var) {
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public void t() {
            q qVar = q.this;
            qVar.f24884h = qVar.f24877a.j();
        }
    }

    @SuppressLint({"WrongConstant"})
    public q(int i4, Format format, List<Format> list) {
        com.google.android.exoplayer2.source.mediaparser.c cVar = new com.google.android.exoplayer2.source.mediaparser.c(format, i4, true);
        this.f24877a = cVar;
        this.f24878b = new com.google.android.exoplayer2.source.mediaparser.a();
        String str = a0.q((String) com.google.android.exoplayer2.util.a.g(format.containerMimeType)) ? "android.media.mediaparser.MatroskaParser" : "android.media.mediaparser.FragmentedMp4Parser";
        cVar.r(str);
        MediaParser createByName = MediaParser.createByName(str, cVar);
        this.f24879c = createByName;
        Boolean bool = Boolean.TRUE;
        createByName.setParameter("android.media.mediaparser.matroska.disableCuesSeeking", bool);
        createByName.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25011a, bool);
        createByName.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25012b, bool);
        createByName.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25013c, bool);
        createByName.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25014d, bool);
        createByName.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25015e, bool);
        createByName.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25016f, bool);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(com.google.android.exoplayer2.source.mediaparser.b.a(list.get(i10)));
        }
        this.f24879c.setParameter(com.google.android.exoplayer2.source.mediaparser.b.f25017g, arrayList);
        this.f24877a.p(list);
        this.f24880d = new b();
        this.f24881e = new com.google.android.exoplayer2.extractor.j();
        this.f24882f = com.google.android.exoplayer2.i.f23649b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g j(int i4, Format format, boolean z9, List list, e0 e0Var) {
        if (!a0.r(format.containerMimeType)) {
            return new q(i4, format, list);
        }
        w.n(f24875i, "Ignoring an unsupported text track.");
        return null;
    }

    private void k() {
        MediaParser.SeekMap f10 = this.f24877a.f();
        long j4 = this.f24882f;
        if (j4 == com.google.android.exoplayer2.i.f23649b || f10 == null) {
            return;
        }
        this.f24879c.seek((MediaParser.SeekPoint) f10.getSeekPoints(j4).first);
        this.f24882f = com.google.android.exoplayer2.i.f23649b;
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    public boolean a(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        k();
        this.f24878b.c(lVar, lVar.getLength());
        return this.f24879c.advance(this.f24878b);
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    public void b(@Nullable g.b bVar, long j4, long j10) {
        this.f24883g = bVar;
        this.f24877a.q(j10);
        this.f24877a.o(this.f24880d);
        this.f24882f = j4;
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    @Nullable
    public com.google.android.exoplayer2.extractor.e c() {
        return this.f24877a.d();
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    @Nullable
    public Format[] d() {
        return this.f24884h;
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    public void release() {
        this.f24879c.release();
    }
}
