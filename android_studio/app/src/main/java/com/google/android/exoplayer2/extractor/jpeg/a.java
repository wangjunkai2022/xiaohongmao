package com.google.android.exoplayer2.extractor.jpeg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;

/* compiled from: JpegExtractor.java */
/* loaded from: classes2.dex */
public final class a implements k {
    private static final int A = 1024;

    /* renamed from: n  reason: collision with root package name */
    private static final int f22293n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f22294o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f22295p = 2;

    /* renamed from: q  reason: collision with root package name */
    private static final int f22296q = 4;

    /* renamed from: r  reason: collision with root package name */
    private static final int f22297r = 5;

    /* renamed from: s  reason: collision with root package name */
    private static final int f22298s = 6;

    /* renamed from: t  reason: collision with root package name */
    private static final int f22299t = 6;

    /* renamed from: u  reason: collision with root package name */
    private static final long f22300u = 1165519206;

    /* renamed from: v  reason: collision with root package name */
    private static final int f22301v = 65496;

    /* renamed from: w  reason: collision with root package name */
    private static final int f22302w = 65498;

    /* renamed from: x  reason: collision with root package name */
    private static final int f22303x = 65504;

    /* renamed from: y  reason: collision with root package name */
    private static final int f22304y = 65505;

    /* renamed from: z  reason: collision with root package name */
    private static final String f22305z = "http://ns.adobe.com/xap/1.0/";

    /* renamed from: e  reason: collision with root package name */
    private m f22307e;

    /* renamed from: f  reason: collision with root package name */
    private int f22308f;

    /* renamed from: g  reason: collision with root package name */
    private int f22309g;

    /* renamed from: h  reason: collision with root package name */
    private int f22310h;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private MotionPhotoMetadata f22312j;

    /* renamed from: k  reason: collision with root package name */
    private l f22313k;

    /* renamed from: l  reason: collision with root package name */
    private c f22314l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.mp4.k f22315m;

    /* renamed from: d  reason: collision with root package name */
    private final h0 f22306d = new h0(6);

    /* renamed from: i  reason: collision with root package name */
    private long f22311i = -1;

    private void e(l lVar) throws IOException {
        this.f22306d.O(2);
        lVar.s(this.f22306d.d(), 0, 2);
        lVar.k(this.f22306d.M() - 2);
    }

    private void f() {
        h(new Metadata.Entry[0]);
        ((m) com.google.android.exoplayer2.util.a.g(this.f22307e)).t();
        this.f22307e.q(new b0.b(i.f23649b));
        this.f22308f = 6;
    }

    @Nullable
    private static MotionPhotoMetadata g(String str, long j4) throws IOException {
        b a10;
        if (j4 == -1 || (a10 = e.a(str)) == null) {
            return null;
        }
        return a10.a(j4);
    }

    private void h(Metadata.Entry... entryArr) {
        ((m) com.google.android.exoplayer2.util.a.g(this.f22307e)).f(1024, 4).d(new Format.b().X(new Metadata(entryArr)).E());
    }

    private int i(l lVar) throws IOException {
        this.f22306d.O(2);
        lVar.s(this.f22306d.d(), 0, 2);
        return this.f22306d.M();
    }

    private void j(l lVar) throws IOException {
        this.f22306d.O(2);
        lVar.readFully(this.f22306d.d(), 0, 2);
        int M = this.f22306d.M();
        this.f22309g = M;
        if (M == f22302w) {
            if (this.f22311i != -1) {
                this.f22308f = 4;
            } else {
                f();
            }
        } else if ((M < 65488 || M > 65497) && M != 65281) {
            this.f22308f = 1;
        }
    }

    private void k(l lVar) throws IOException {
        String A2;
        if (this.f22309g == f22304y) {
            h0 h0Var = new h0(this.f22310h);
            lVar.readFully(h0Var.d(), 0, this.f22310h);
            if (this.f22312j == null && f22305z.equals(h0Var.A()) && (A2 = h0Var.A()) != null) {
                MotionPhotoMetadata g4 = g(A2, lVar.getLength());
                this.f22312j = g4;
                if (g4 != null) {
                    this.f22311i = g4.videoStartPosition;
                }
            }
        } else {
            lVar.o(this.f22310h);
        }
        this.f22308f = 0;
    }

    private void l(l lVar) throws IOException {
        this.f22306d.O(2);
        lVar.readFully(this.f22306d.d(), 0, 2);
        this.f22310h = this.f22306d.M() - 2;
        this.f22308f = 2;
    }

    private void m(l lVar) throws IOException {
        if (!lVar.g(this.f22306d.d(), 0, 1, true)) {
            f();
            return;
        }
        lVar.h();
        if (this.f22315m == null) {
            this.f22315m = new com.google.android.exoplayer2.extractor.mp4.k();
        }
        c cVar = new c(lVar, this.f22311i);
        this.f22314l = cVar;
        if (this.f22315m.b(cVar)) {
            this.f22315m.d(new d(this.f22311i, (m) com.google.android.exoplayer2.util.a.g(this.f22307e)));
            n();
            return;
        }
        f();
    }

    private void n() {
        h((Metadata.Entry) com.google.android.exoplayer2.util.a.g(this.f22312j));
        this.f22308f = 5;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        if (j4 == 0) {
            this.f22308f = 0;
            this.f22315m = null;
        } else if (this.f22308f == 5) {
            ((com.google.android.exoplayer2.extractor.mp4.k) com.google.android.exoplayer2.util.a.g(this.f22315m)).a(j4, j10);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(l lVar) throws IOException {
        if (i(lVar) != f22301v) {
            return false;
        }
        int i4 = i(lVar);
        this.f22309g = i4;
        if (i4 == f22303x) {
            e(lVar);
            this.f22309g = i(lVar);
        }
        if (this.f22309g != f22304y) {
            return false;
        }
        lVar.k(2);
        this.f22306d.O(6);
        lVar.s(this.f22306d.d(), 0, 6);
        return this.f22306d.I() == f22300u && this.f22306d.M() == 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(l lVar, z zVar) throws IOException {
        int i4 = this.f22308f;
        if (i4 == 0) {
            j(lVar);
            return 0;
        } else if (i4 == 1) {
            l(lVar);
            return 0;
        } else if (i4 == 2) {
            k(lVar);
            return 0;
        } else if (i4 == 4) {
            long position = lVar.getPosition();
            long j4 = this.f22311i;
            if (position != j4) {
                zVar.f23544a = j4;
                return 1;
            }
            m(lVar);
            return 0;
        } else if (i4 != 5) {
            if (i4 == 6) {
                return -1;
            }
            throw new IllegalStateException();
        } else {
            if (this.f22314l == null || lVar != this.f22313k) {
                this.f22313k = lVar;
                this.f22314l = new c(lVar, this.f22311i);
            }
            int c10 = ((com.google.android.exoplayer2.extractor.mp4.k) com.google.android.exoplayer2.util.a.g(this.f22315m)).c(this.f22314l, zVar);
            if (c10 == 1) {
                zVar.f23544a += this.f22311i;
            }
            return c10;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(m mVar) {
        this.f22307e = mVar;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
        com.google.android.exoplayer2.extractor.mp4.k kVar = this.f22315m;
        if (kVar != null) {
            kVar.release();
        }
    }
}
