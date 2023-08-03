package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.chunk.g;
import com.google.android.exoplayer2.upstream.m0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: ContainerMediaChunk.java */
/* loaded from: classes2.dex */
public class k extends a {

    /* renamed from: o  reason: collision with root package name */
    private final int f24859o;

    /* renamed from: p  reason: collision with root package name */
    private final long f24860p;

    /* renamed from: q  reason: collision with root package name */
    private final g f24861q;

    /* renamed from: r  reason: collision with root package name */
    private long f24862r;

    /* renamed from: s  reason: collision with root package name */
    private volatile boolean f24863s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f24864t;

    public k(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar, Format format, int i4, @Nullable Object obj, long j4, long j10, long j11, long j12, long j13, int i10, long j14, g gVar) {
        super(mVar, oVar, format, i4, obj, j4, j10, j11, j12, j13);
        this.f24859o = i10;
        this.f24860p = j14;
        this.f24861q = gVar;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public final void a() throws IOException {
        if (this.f24862r == 0) {
            c j4 = j();
            j4.b(this.f24860p);
            g gVar = this.f24861q;
            g.b l10 = l(j4);
            long j10 = this.f24790k;
            long j11 = j10 == com.google.android.exoplayer2.i.f23649b ? -9223372036854775807L : j10 - this.f24860p;
            long j12 = this.f24791l;
            gVar.b(l10, j11, j12 == com.google.android.exoplayer2.i.f23649b ? -9223372036854775807L : j12 - this.f24860p);
        }
        try {
            com.google.android.exoplayer2.upstream.o e4 = this.f24820b.e(this.f24862r);
            m0 m0Var = this.f24827i;
            com.google.android.exoplayer2.extractor.g gVar2 = new com.google.android.exoplayer2.extractor.g(m0Var, e4.f27294g, m0Var.a(e4));
            while (!this.f24863s && this.f24861q.a(gVar2)) {
            }
            this.f24862r = gVar2.getPosition() - this.f24820b.f27294g;
            z0.p(this.f24827i);
            this.f24864t = !this.f24863s;
        } catch (Throwable th) {
            z0.p(this.f24827i);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public final void c() {
        this.f24863s = true;
    }

    @Override // com.google.android.exoplayer2.source.chunk.n
    public long g() {
        return this.f24872j + this.f24859o;
    }

    @Override // com.google.android.exoplayer2.source.chunk.n
    public boolean h() {
        return this.f24864t;
    }

    protected g.b l(c cVar) {
        return cVar;
    }
}
