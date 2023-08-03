package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.j2;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.source.z;
import java.io.IOException;
import java.util.List;

/* compiled from: MaskingMediaPeriod.java */
/* loaded from: classes2.dex */
public final class q implements w, w.a {

    /* renamed from: a  reason: collision with root package name */
    public final z.a f25120a;

    /* renamed from: b  reason: collision with root package name */
    private final long f25121b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f25122c;

    /* renamed from: d  reason: collision with root package name */
    private z f25123d;

    /* renamed from: e  reason: collision with root package name */
    private w f25124e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private w.a f25125f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private a f25126g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f25127h;

    /* renamed from: i  reason: collision with root package name */
    private long f25128i = com.google.android.exoplayer2.i.f23649b;

    /* compiled from: MaskingMediaPeriod.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(z.a aVar);

        void b(z.a aVar, IOException iOException);
    }

    public q(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        this.f25120a = aVar;
        this.f25122c = bVar;
        this.f25121b = j4;
    }

    private long q(long j4) {
        long j10 = this.f25128i;
        return j10 != com.google.android.exoplayer2.i.f23649b ? j10 : j4;
    }

    public void a(z.a aVar) {
        long q9 = q(this.f25121b);
        w a10 = ((z) com.google.android.exoplayer2.util.a.g(this.f25123d)).a(aVar, this.f25122c, q9);
        this.f25124e = a10;
        if (this.f25125f != null) {
            a10.n(this, q9);
        }
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean b() {
        w wVar = this.f25124e;
        return wVar != null && wVar.b();
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long c() {
        return ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).c();
    }

    @Override // com.google.android.exoplayer2.source.w
    public long d(long j4, j2 j2Var) {
        return ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).d(j4, j2Var);
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean e(long j4) {
        w wVar = this.f25124e;
        return wVar != null && wVar.e(j4);
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long g() {
        return ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).g();
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public void h(long j4) {
        ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).h(j4);
    }

    @Override // com.google.android.exoplayer2.source.w.a
    public void i(w wVar) {
        ((w.a) com.google.android.exoplayer2.util.z0.k(this.f25125f)).i(this);
        a aVar = this.f25126g;
        if (aVar != null) {
            aVar.a(this.f25120a);
        }
    }

    @Override // com.google.android.exoplayer2.source.w
    public /* synthetic */ List j(List list) {
        return v.a(this, list);
    }

    public long k() {
        return this.f25128i;
    }

    @Override // com.google.android.exoplayer2.source.w
    public long l(long j4) {
        return ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).l(j4);
    }

    @Override // com.google.android.exoplayer2.source.w
    public long m() {
        return ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).m();
    }

    @Override // com.google.android.exoplayer2.source.w
    public void n(w.a aVar, long j4) {
        this.f25125f = aVar;
        w wVar = this.f25124e;
        if (wVar != null) {
            wVar.n(this, q(this.f25121b));
        }
    }

    @Override // com.google.android.exoplayer2.source.w
    public long o(com.google.android.exoplayer2.trackselection.g[] gVarArr, boolean[] zArr, x0[] x0VarArr, boolean[] zArr2, long j4) {
        long j10;
        long j11 = this.f25128i;
        if (j11 == com.google.android.exoplayer2.i.f23649b || j4 != this.f25121b) {
            j10 = j4;
        } else {
            this.f25128i = com.google.android.exoplayer2.i.f23649b;
            j10 = j11;
        }
        return ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).o(gVarArr, zArr, x0VarArr, zArr2, j10);
    }

    public long p() {
        return this.f25121b;
    }

    @Override // com.google.android.exoplayer2.source.y0.a
    /* renamed from: r */
    public void f(w wVar) {
        ((w.a) com.google.android.exoplayer2.util.z0.k(this.f25125f)).f(this);
    }

    @Override // com.google.android.exoplayer2.source.w
    public void s() throws IOException {
        try {
            w wVar = this.f25124e;
            if (wVar != null) {
                wVar.s();
            } else {
                z zVar = this.f25123d;
                if (zVar != null) {
                    zVar.n();
                }
            }
        } catch (IOException e4) {
            a aVar = this.f25126g;
            if (aVar != null) {
                if (this.f25127h) {
                    return;
                }
                this.f25127h = true;
                aVar.b(this.f25120a, e4);
                return;
            }
            throw e4;
        }
    }

    public void t(long j4) {
        this.f25128i = j4;
    }

    @Override // com.google.android.exoplayer2.source.w
    public TrackGroupArray u() {
        return ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).u();
    }

    @Override // com.google.android.exoplayer2.source.w
    public void v(long j4, boolean z9) {
        ((w) com.google.android.exoplayer2.util.z0.k(this.f25124e)).v(j4, z9);
    }

    public void w() {
        if (this.f25124e != null) {
            ((z) com.google.android.exoplayer2.util.a.g(this.f25123d)).g(this.f25124e);
        }
    }

    public void x(z zVar) {
        com.google.android.exoplayer2.util.a.i(this.f25123d == null);
        this.f25123d = zVar;
    }

    public void y(a aVar) {
        this.f25126g = aVar;
    }
}
