package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: SingleSampleMediaChunk.java */
/* loaded from: classes2.dex */
public final class r extends a {

    /* renamed from: o  reason: collision with root package name */
    private final int f24886o;

    /* renamed from: p  reason: collision with root package name */
    private final Format f24887p;

    /* renamed from: q  reason: collision with root package name */
    private long f24888q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f24889r;

    public r(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar, Format format, int i4, @Nullable Object obj, long j4, long j10, long j11, int i10, Format format2) {
        super(mVar, oVar, format, i4, obj, j4, j10, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b, j11);
        this.f24886o = i10;
        this.f24887p = format2;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public void a() throws IOException {
        c j4 = j();
        j4.b(0L);
        e0 f10 = j4.f(0, this.f24886o);
        f10.d(this.f24887p);
        try {
            long a10 = this.f24827i.a(this.f24820b.e(this.f24888q));
            if (a10 != -1) {
                a10 += this.f24888q;
            }
            com.google.android.exoplayer2.extractor.g gVar = new com.google.android.exoplayer2.extractor.g(this.f24827i, this.f24888q, a10);
            for (int i4 = 0; i4 != -1; i4 = f10.b(gVar, Integer.MAX_VALUE, true)) {
                this.f24888q += i4;
            }
            f10.e(this.f24825g, 1, (int) this.f24888q, 0, null);
            z0.p(this.f24827i);
            this.f24889r = true;
        } catch (Throwable th) {
            z0.p(this.f24827i);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public void c() {
    }

    @Override // com.google.android.exoplayer2.source.chunk.n
    public boolean h() {
        return this.f24889r;
    }
}
