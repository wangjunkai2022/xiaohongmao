package com.google.android.exoplayer2.source.chunk;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.d0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.source.chunk.g;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.List;

/* compiled from: BundledChunkExtractor.java */
/* loaded from: classes2.dex */
public final class e implements com.google.android.exoplayer2.extractor.m, g {

    /* renamed from: j  reason: collision with root package name */
    public static final g.a f24801j = d.f24800a;

    /* renamed from: k  reason: collision with root package name */
    private static final z f24802k = new z();

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.k f24803a;

    /* renamed from: b  reason: collision with root package name */
    private final int f24804b;

    /* renamed from: c  reason: collision with root package name */
    private final Format f24805c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<a> f24806d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private boolean f24807e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private g.b f24808f;

    /* renamed from: g  reason: collision with root package name */
    private long f24809g;

    /* renamed from: h  reason: collision with root package name */
    private b0 f24810h;

    /* renamed from: i  reason: collision with root package name */
    private Format[] f24811i;

    /* compiled from: BundledChunkExtractor.java */
    /* loaded from: classes2.dex */
    private static final class a implements e0 {

        /* renamed from: d  reason: collision with root package name */
        private final int f24812d;

        /* renamed from: e  reason: collision with root package name */
        private final int f24813e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final Format f24814f;

        /* renamed from: g  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.j f24815g = new com.google.android.exoplayer2.extractor.j();

        /* renamed from: h  reason: collision with root package name */
        public Format f24816h;

        /* renamed from: i  reason: collision with root package name */
        private e0 f24817i;

        /* renamed from: j  reason: collision with root package name */
        private long f24818j;

        public a(int i4, int i10, @Nullable Format format) {
            this.f24812d = i4;
            this.f24813e = i10;
            this.f24814f = format;
        }

        @Override // com.google.android.exoplayer2.extractor.e0
        public int a(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9, int i10) throws IOException {
            return ((e0) z0.k(this.f24817i)).b(iVar, i4, z9);
        }

        @Override // com.google.android.exoplayer2.extractor.e0
        public /* synthetic */ int b(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9) {
            return d0.a(this, iVar, i4, z9);
        }

        @Override // com.google.android.exoplayer2.extractor.e0
        public /* synthetic */ void c(h0 h0Var, int i4) {
            d0.b(this, h0Var, i4);
        }

        @Override // com.google.android.exoplayer2.extractor.e0
        public void d(Format format) {
            Format format2 = this.f24814f;
            if (format2 != null) {
                format = format.withManifestFormatInfo(format2);
            }
            this.f24816h = format;
            ((e0) z0.k(this.f24817i)).d(this.f24816h);
        }

        @Override // com.google.android.exoplayer2.extractor.e0
        public void e(long j4, int i4, int i10, int i11, @Nullable e0.a aVar) {
            long j10 = this.f24818j;
            if (j10 != com.google.android.exoplayer2.i.f23649b && j4 >= j10) {
                this.f24817i = this.f24815g;
            }
            ((e0) z0.k(this.f24817i)).e(j4, i4, i10, i11, aVar);
        }

        @Override // com.google.android.exoplayer2.extractor.e0
        public void f(h0 h0Var, int i4, int i10) {
            ((e0) z0.k(this.f24817i)).c(h0Var, i4);
        }

        public void g(@Nullable g.b bVar, long j4) {
            if (bVar == null) {
                this.f24817i = this.f24815g;
                return;
            }
            this.f24818j = j4;
            e0 f10 = bVar.f(this.f24812d, this.f24813e);
            this.f24817i = f10;
            Format format = this.f24816h;
            if (format != null) {
                f10.d(format);
            }
        }
    }

    public e(com.google.android.exoplayer2.extractor.k kVar, int i4, Format format) {
        this.f24803a = kVar;
        this.f24804b = i4;
        this.f24805c = format;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g g(int i4, Format format, boolean z9, List list, e0 e0Var) {
        com.google.android.exoplayer2.extractor.k gVar;
        String str = format.containerMimeType;
        if (a0.r(str)) {
            if (!a0.f27472u0.equals(str)) {
                return null;
            }
            gVar = new com.google.android.exoplayer2.extractor.rawcc.a(format);
        } else if (a0.q(str)) {
            gVar = new com.google.android.exoplayer2.extractor.mkv.e(1);
        } else {
            gVar = new com.google.android.exoplayer2.extractor.mp4.g(z9 ? 4 : 0, null, null, list, e0Var);
        }
        return new e(gVar, i4, format);
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    public boolean a(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        int c10 = this.f24803a.c(lVar, f24802k);
        com.google.android.exoplayer2.util.a.i(c10 != 1);
        return c10 == 0;
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    public void b(@Nullable g.b bVar, long j4, long j10) {
        this.f24808f = bVar;
        this.f24809g = j10;
        if (!this.f24807e) {
            this.f24803a.d(this);
            if (j4 != com.google.android.exoplayer2.i.f23649b) {
                this.f24803a.a(0L, j4);
            }
            this.f24807e = true;
            return;
        }
        com.google.android.exoplayer2.extractor.k kVar = this.f24803a;
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            j4 = 0;
        }
        kVar.a(0L, j4);
        for (int i4 = 0; i4 < this.f24806d.size(); i4++) {
            this.f24806d.valueAt(i4).g(bVar, j10);
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    @Nullable
    public com.google.android.exoplayer2.extractor.e c() {
        b0 b0Var = this.f24810h;
        if (b0Var instanceof com.google.android.exoplayer2.extractor.e) {
            return (com.google.android.exoplayer2.extractor.e) b0Var;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    @Nullable
    public Format[] d() {
        return this.f24811i;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public e0 f(int i4, int i10) {
        a aVar = this.f24806d.get(i4);
        if (aVar == null) {
            com.google.android.exoplayer2.util.a.i(this.f24811i == null);
            aVar = new a(i4, i10, i10 == this.f24804b ? this.f24805c : null);
            aVar.g(this.f24808f, this.f24809g);
            this.f24806d.put(i4, aVar);
        }
        return aVar;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void q(b0 b0Var) {
        this.f24810h = b0Var;
    }

    @Override // com.google.android.exoplayer2.source.chunk.g
    public void release() {
        this.f24803a.release();
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void t() {
        Format[] formatArr = new Format[this.f24806d.size()];
        for (int i4 = 0; i4 < this.f24806d.size(); i4++) {
            formatArr[i4] = (Format) com.google.android.exoplayer2.util.a.k(this.f24806d.valueAt(i4).f24816h);
        }
        this.f24811i = formatArr;
    }
}
