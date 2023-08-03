package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.j2;
import com.google.android.exoplayer2.source.h0;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.f0;
import com.google.android.exoplayer2.upstream.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingleSampleMediaPeriod.java */
/* loaded from: classes2.dex */
public final class c1 implements w, Loader.b<c> {

    /* renamed from: o  reason: collision with root package name */
    private static final String f24764o = "SingleSampleMediaPeriod";

    /* renamed from: p  reason: collision with root package name */
    private static final int f24765p = 1024;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.o f24766a;

    /* renamed from: b  reason: collision with root package name */
    private final m.a f24767b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.p0 f24768c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.f0 f24769d;

    /* renamed from: e  reason: collision with root package name */
    private final h0.a f24770e;

    /* renamed from: f  reason: collision with root package name */
    private final TrackGroupArray f24771f;

    /* renamed from: h  reason: collision with root package name */
    private final long f24773h;

    /* renamed from: j  reason: collision with root package name */
    final Format f24775j;

    /* renamed from: k  reason: collision with root package name */
    final boolean f24776k;

    /* renamed from: l  reason: collision with root package name */
    boolean f24777l;

    /* renamed from: m  reason: collision with root package name */
    byte[] f24778m;

    /* renamed from: n  reason: collision with root package name */
    int f24779n;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<b> f24772g = new ArrayList<>();

    /* renamed from: i  reason: collision with root package name */
    final Loader f24774i = new Loader(f24764o);

    /* compiled from: SingleSampleMediaPeriod.java */
    /* loaded from: classes2.dex */
    private final class b implements x0 {

        /* renamed from: d  reason: collision with root package name */
        private static final int f24780d = 0;

        /* renamed from: e  reason: collision with root package name */
        private static final int f24781e = 1;

        /* renamed from: f  reason: collision with root package name */
        private static final int f24782f = 2;

        /* renamed from: a  reason: collision with root package name */
        private int f24783a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f24784b;

        private b() {
        }

        private void b() {
            if (this.f24784b) {
                return;
            }
            c1.this.f24770e.i(com.google.android.exoplayer2.util.a0.l(c1.this.f24775j.sampleMimeType), c1.this.f24775j, 0, null, 0L);
            this.f24784b = true;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public void a() throws IOException {
            c1 c1Var = c1.this;
            if (c1Var.f24776k) {
                return;
            }
            c1Var.f24774i.a();
        }

        public void c() {
            if (this.f24783a == 2) {
                this.f24783a = 1;
            }
        }

        @Override // com.google.android.exoplayer2.source.x0
        public boolean f() {
            return c1.this.f24777l;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int q(com.google.android.exoplayer2.v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4) {
            b();
            int i10 = this.f24783a;
            if (i10 == 2) {
                decoderInputBuffer.e(4);
                return -4;
            } else if ((i4 & 2) == 0 && i10 != 0) {
                c1 c1Var = c1.this;
                if (c1Var.f24777l) {
                    if (c1Var.f24778m == null) {
                        decoderInputBuffer.e(4);
                        this.f24783a = 2;
                        return -4;
                    }
                    decoderInputBuffer.e(1);
                    decoderInputBuffer.f21574e = 0L;
                    if ((i4 & 4) == 0) {
                        decoderInputBuffer.p(c1.this.f24779n);
                        ByteBuffer byteBuffer = decoderInputBuffer.f21572c;
                        c1 c1Var2 = c1.this;
                        byteBuffer.put(c1Var2.f24778m, 0, c1Var2.f24779n);
                    }
                    if ((i4 & 1) == 0) {
                        this.f24783a = 2;
                    }
                    return -4;
                }
                return -3;
            } else {
                v0Var.f27763b = c1.this.f24775j;
                this.f24783a = 1;
                return -5;
            }
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int t(long j4) {
            b();
            if (j4 <= 0 || this.f24783a == 2) {
                return 0;
            }
            this.f24783a = 2;
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleSampleMediaPeriod.java */
    /* loaded from: classes2.dex */
    public static final class c implements Loader.e {

        /* renamed from: a  reason: collision with root package name */
        public final long f24786a = o.a();

        /* renamed from: b  reason: collision with root package name */
        public final com.google.android.exoplayer2.upstream.o f24787b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.upstream.m0 f24788c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private byte[] f24789d;

        public c(com.google.android.exoplayer2.upstream.o oVar, com.google.android.exoplayer2.upstream.m mVar) {
            this.f24787b = oVar;
            this.f24788c = new com.google.android.exoplayer2.upstream.m0(mVar);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void a() throws IOException {
            this.f24788c.w();
            try {
                this.f24788c.a(this.f24787b);
                int i4 = 0;
                while (i4 != -1) {
                    int t9 = (int) this.f24788c.t();
                    byte[] bArr = this.f24789d;
                    if (bArr == null) {
                        this.f24789d = new byte[1024];
                    } else if (t9 == bArr.length) {
                        this.f24789d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    com.google.android.exoplayer2.upstream.m0 m0Var = this.f24788c;
                    byte[] bArr2 = this.f24789d;
                    i4 = m0Var.read(bArr2, t9, bArr2.length - t9);
                }
            } finally {
                com.google.android.exoplayer2.util.z0.p(this.f24788c);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void c() {
        }
    }

    public c1(com.google.android.exoplayer2.upstream.o oVar, m.a aVar, @Nullable com.google.android.exoplayer2.upstream.p0 p0Var, Format format, long j4, com.google.android.exoplayer2.upstream.f0 f0Var, h0.a aVar2, boolean z9) {
        this.f24766a = oVar;
        this.f24767b = aVar;
        this.f24768c = p0Var;
        this.f24775j = format;
        this.f24773h = j4;
        this.f24769d = f0Var;
        this.f24770e = aVar2;
        this.f24776k = z9;
        this.f24771f = new TrackGroupArray(new TrackGroup(format));
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean b() {
        return this.f24774i.k();
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long c() {
        return (this.f24777l || this.f24774i.k()) ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.w
    public long d(long j4, j2 j2Var) {
        return j4;
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean e(long j4) {
        if (this.f24777l || this.f24774i.k() || this.f24774i.j()) {
            return false;
        }
        com.google.android.exoplayer2.upstream.m a10 = this.f24767b.a();
        com.google.android.exoplayer2.upstream.p0 p0Var = this.f24768c;
        if (p0Var != null) {
            a10.e(p0Var);
        }
        c cVar = new c(this.f24766a, a10);
        this.f24770e.A(new o(cVar.f24786a, this.f24766a, this.f24774i.n(cVar, this, this.f24769d.d(1))), 1, -1, this.f24775j, 0, null, 0L, this.f24773h);
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: f */
    public void i(c cVar, long j4, long j10, boolean z9) {
        com.google.android.exoplayer2.upstream.m0 m0Var = cVar.f24788c;
        o oVar = new o(cVar.f24786a, cVar.f24787b, m0Var.u(), m0Var.v(), j4, j10, m0Var.t());
        this.f24769d.f(cVar.f24786a);
        this.f24770e.r(oVar, 1, -1, null, 0, null, 0L, this.f24773h);
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long g() {
        return this.f24777l ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public void h(long j4) {
    }

    @Override // com.google.android.exoplayer2.source.w
    public /* synthetic */ List j(List list) {
        return v.a(this, list);
    }

    @Override // com.google.android.exoplayer2.source.w
    public long l(long j4) {
        for (int i4 = 0; i4 < this.f24772g.size(); i4++) {
            this.f24772g.get(i4).c();
        }
        return j4;
    }

    @Override // com.google.android.exoplayer2.source.w
    public long m() {
        return com.google.android.exoplayer2.i.f23649b;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void n(w.a aVar, long j4) {
        aVar.i(this);
    }

    @Override // com.google.android.exoplayer2.source.w
    public long o(com.google.android.exoplayer2.trackselection.g[] gVarArr, boolean[] zArr, x0[] x0VarArr, boolean[] zArr2, long j4) {
        for (int i4 = 0; i4 < gVarArr.length; i4++) {
            if (x0VarArr[i4] != null && (gVarArr[i4] == null || !zArr[i4])) {
                this.f24772g.remove(x0VarArr[i4]);
                x0VarArr[i4] = null;
            }
            if (x0VarArr[i4] == null && gVarArr[i4] != null) {
                b bVar = new b();
                this.f24772g.add(bVar);
                x0VarArr[i4] = bVar;
                zArr2[i4] = true;
            }
        }
        return j4;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: q */
    public void k(c cVar, long j4, long j10) {
        this.f24779n = (int) cVar.f24788c.t();
        this.f24778m = (byte[]) com.google.android.exoplayer2.util.a.g(cVar.f24789d);
        this.f24777l = true;
        com.google.android.exoplayer2.upstream.m0 m0Var = cVar.f24788c;
        o oVar = new o(cVar.f24786a, cVar.f24787b, m0Var.u(), m0Var.v(), j4, j10, this.f24779n);
        this.f24769d.f(cVar.f24786a);
        this.f24770e.u(oVar, 1, -1, this.f24775j, 0, null, 0L, this.f24773h);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: r */
    public Loader.c p(c cVar, long j4, long j10, IOException iOException, int i4) {
        Loader.c cVar2;
        com.google.android.exoplayer2.upstream.m0 m0Var = cVar.f24788c;
        o oVar = new o(cVar.f24786a, cVar.f24787b, m0Var.u(), m0Var.v(), j4, j10, m0Var.t());
        long a10 = this.f24769d.a(new f0.a(oVar, new s(1, -1, this.f24775j, 0, null, 0L, com.google.android.exoplayer2.i.d(this.f24773h)), iOException, i4));
        int i10 = (a10 > com.google.android.exoplayer2.i.f23649b ? 1 : (a10 == com.google.android.exoplayer2.i.f23649b ? 0 : -1));
        boolean z9 = i10 == 0 || i4 >= this.f24769d.d(1);
        if (this.f24776k && z9) {
            com.google.android.exoplayer2.util.w.o(f24764o, "Loading failed, treating as end-of-stream.", iOException);
            this.f24777l = true;
            cVar2 = Loader.f26978k;
        } else if (i10 != 0) {
            cVar2 = Loader.i(false, a10);
        } else {
            cVar2 = Loader.f26979l;
        }
        Loader.c cVar3 = cVar2;
        boolean z10 = !cVar3.c();
        this.f24770e.w(oVar, 1, -1, this.f24775j, 0, null, 0L, this.f24773h, iOException, z10);
        if (z10) {
            this.f24769d.f(cVar.f24786a);
        }
        return cVar3;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void s() {
    }

    public void t() {
        this.f24774i.l();
    }

    @Override // com.google.android.exoplayer2.source.w
    public TrackGroupArray u() {
        return this.f24771f;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void v(long j4, boolean z9) {
    }
}
