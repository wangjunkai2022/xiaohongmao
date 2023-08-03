package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.chunk.g;
import com.google.android.exoplayer2.upstream.m0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: InitializationChunk.java */
/* loaded from: classes2.dex */
public final class m extends f {

    /* renamed from: j  reason: collision with root package name */
    private final g f24868j;

    /* renamed from: k  reason: collision with root package name */
    private g.b f24869k;

    /* renamed from: l  reason: collision with root package name */
    private long f24870l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f24871m;

    public m(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar, Format format, int i4, @Nullable Object obj, g gVar) {
        super(mVar, oVar, 2, format, i4, obj, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b);
        this.f24868j = gVar;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public void a() throws IOException {
        if (this.f24870l == 0) {
            this.f24868j.b(this.f24869k, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b);
        }
        try {
            com.google.android.exoplayer2.upstream.o e4 = this.f24820b.e(this.f24870l);
            m0 m0Var = this.f24827i;
            com.google.android.exoplayer2.extractor.g gVar = new com.google.android.exoplayer2.extractor.g(m0Var, e4.f27294g, m0Var.a(e4));
            while (!this.f24871m && this.f24868j.a(gVar)) {
            }
            this.f24870l = gVar.getPosition() - this.f24820b.f27294g;
        } finally {
            z0.p(this.f24827i);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public void c() {
        this.f24871m = true;
    }

    public void g(g.b bVar) {
        this.f24869k = bVar;
    }
}
