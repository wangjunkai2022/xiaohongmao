package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.j2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.h0;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.source.w0;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.f0;
import com.google.android.exoplayer2.upstream.o;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProgressiveMediaPeriod.java */
/* loaded from: classes2.dex */
public final class p0 implements w, com.google.android.exoplayer2.extractor.m, Loader.b<a>, Loader.f, w0.d {
    private static final long M = 10000;
    private static final Map<String, String> N = L();
    private static final Format O = new Format.b().S("icy").e0(com.google.android.exoplayer2.util.a0.C0).E();
    private boolean A;
    private boolean C;
    private boolean D;
    private int E;
    private long G;
    private boolean I;
    private int J;
    private boolean K;
    private boolean L;

    /* renamed from: a  reason: collision with root package name */
    private final Uri f25071a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.m f25072b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f25073c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.f0 f25074d;

    /* renamed from: e  reason: collision with root package name */
    private final h0.a f25075e;

    /* renamed from: f  reason: collision with root package name */
    private final s.a f25076f;

    /* renamed from: g  reason: collision with root package name */
    private final b f25077g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f25078h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f25079i;

    /* renamed from: j  reason: collision with root package name */
    private final long f25080j;

    /* renamed from: l  reason: collision with root package name */
    private final l0 f25082l;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private w.a f25087q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private IcyHeaders f25088r;

    /* renamed from: u  reason: collision with root package name */
    private boolean f25091u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f25092v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f25093w;

    /* renamed from: x  reason: collision with root package name */
    private e f25094x;

    /* renamed from: y  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.b0 f25095y;

    /* renamed from: k  reason: collision with root package name */
    private final Loader f25081k = new Loader("ProgressiveMediaPeriod");

    /* renamed from: m  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g f25083m = new com.google.android.exoplayer2.util.g();

    /* renamed from: n  reason: collision with root package name */
    private final Runnable f25084n = new Runnable() { // from class: com.google.android.exoplayer2.source.m0
        @Override // java.lang.Runnable
        public final void run() {
            p0.this.T();
        }
    };

    /* renamed from: o  reason: collision with root package name */
    private final Runnable f25085o = new Runnable() { // from class: com.google.android.exoplayer2.source.n0
        @Override // java.lang.Runnable
        public final void run() {
            p0.this.R();
        }
    };

    /* renamed from: p  reason: collision with root package name */
    private final Handler f25086p = com.google.android.exoplayer2.util.z0.z();

    /* renamed from: t  reason: collision with root package name */
    private d[] f25090t = new d[0];

    /* renamed from: s  reason: collision with root package name */
    private w0[] f25089s = new w0[0];
    private long H = com.google.android.exoplayer2.i.f23649b;
    private long F = -1;

    /* renamed from: z  reason: collision with root package name */
    private long f25096z = com.google.android.exoplayer2.i.f23649b;
    private int B = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes2.dex */
    public final class a implements Loader.e, n.a {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f25098b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.upstream.m0 f25099c;

        /* renamed from: d  reason: collision with root package name */
        private final l0 f25100d;

        /* renamed from: e  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.m f25101e;

        /* renamed from: f  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.g f25102f;

        /* renamed from: h  reason: collision with root package name */
        private volatile boolean f25104h;

        /* renamed from: j  reason: collision with root package name */
        private long f25106j;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private com.google.android.exoplayer2.extractor.e0 f25109m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f25110n;

        /* renamed from: g  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.z f25103g = new com.google.android.exoplayer2.extractor.z();

        /* renamed from: i  reason: collision with root package name */
        private boolean f25105i = true;

        /* renamed from: l  reason: collision with root package name */
        private long f25108l = -1;

        /* renamed from: a  reason: collision with root package name */
        private final long f25097a = o.a();

        /* renamed from: k  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.o f25107k = j(0);

        public a(Uri uri, com.google.android.exoplayer2.upstream.m mVar, l0 l0Var, com.google.android.exoplayer2.extractor.m mVar2, com.google.android.exoplayer2.util.g gVar) {
            this.f25098b = uri;
            this.f25099c = new com.google.android.exoplayer2.upstream.m0(mVar);
            this.f25100d = l0Var;
            this.f25101e = mVar2;
            this.f25102f = gVar;
        }

        private com.google.android.exoplayer2.upstream.o j(long j4) {
            return new o.b().j(this.f25098b).i(j4).g(p0.this.f25079i).c(6).f(p0.N).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(long j4, long j10) {
            this.f25103g.f23544a = j4;
            this.f25106j = j10;
            this.f25105i = true;
            this.f25110n = false;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void a() throws IOException {
            int i4 = 0;
            while (i4 == 0 && !this.f25104h) {
                try {
                    long j4 = this.f25103g.f23544a;
                    com.google.android.exoplayer2.upstream.o j10 = j(j4);
                    this.f25107k = j10;
                    long a10 = this.f25099c.a(j10);
                    this.f25108l = a10;
                    if (a10 != -1) {
                        this.f25108l = a10 + j4;
                    }
                    p0.this.f25088r = IcyHeaders.parse(this.f25099c.b());
                    com.google.android.exoplayer2.upstream.i iVar = this.f25099c;
                    if (p0.this.f25088r != null && p0.this.f25088r.metadataInterval != -1) {
                        iVar = new n(this.f25099c, p0.this.f25088r.metadataInterval, this);
                        com.google.android.exoplayer2.extractor.e0 O = p0.this.O();
                        this.f25109m = O;
                        O.d(p0.O);
                    }
                    long j11 = j4;
                    this.f25100d.d(iVar, this.f25098b, this.f25099c.b(), j4, this.f25108l, this.f25101e);
                    if (p0.this.f25088r != null) {
                        this.f25100d.c();
                    }
                    if (this.f25105i) {
                        this.f25100d.a(j11, this.f25106j);
                        this.f25105i = false;
                    }
                    while (true) {
                        long j12 = j11;
                        while (i4 == 0 && !this.f25104h) {
                            try {
                                this.f25102f.a();
                                i4 = this.f25100d.b(this.f25103g);
                                j11 = this.f25100d.e();
                                if (j11 > p0.this.f25080j + j12) {
                                    break;
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                        this.f25102f.d();
                        p0.this.f25086p.post(p0.this.f25085o);
                    }
                    if (i4 == 1) {
                        i4 = 0;
                    } else if (this.f25100d.e() != -1) {
                        this.f25103g.f23544a = this.f25100d.e();
                    }
                    com.google.android.exoplayer2.util.z0.p(this.f25099c);
                } catch (Throwable th) {
                    if (i4 != 1 && this.f25100d.e() != -1) {
                        this.f25103g.f23544a = this.f25100d.e();
                    }
                    com.google.android.exoplayer2.util.z0.p(this.f25099c);
                    throw th;
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.n.a
        public void b(com.google.android.exoplayer2.util.h0 h0Var) {
            long max = !this.f25110n ? this.f25106j : Math.max(p0.this.N(), this.f25106j);
            int a10 = h0Var.a();
            com.google.android.exoplayer2.extractor.e0 e0Var = (com.google.android.exoplayer2.extractor.e0) com.google.android.exoplayer2.util.a.g(this.f25109m);
            e0Var.c(h0Var, a10);
            e0Var.e(max, 1, a10, 0, null);
            this.f25110n = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void c() {
            this.f25104h = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes2.dex */
    public interface b {
        void k(long j4, boolean z9, boolean z10);
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes2.dex */
    private final class c implements x0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f25112a;

        public c(int i4) {
            this.f25112a = i4;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public void a() throws IOException {
            p0.this.X(this.f25112a);
        }

        @Override // com.google.android.exoplayer2.source.x0
        public boolean f() {
            return p0.this.Q(this.f25112a);
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int q(com.google.android.exoplayer2.v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4) {
            return p0.this.c0(this.f25112a, v0Var, decoderInputBuffer, i4);
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int t(long j4) {
            return p0.this.g0(this.f25112a, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f25114a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f25115b;

        public d(int i4, boolean z9) {
            this.f25114a = i4;
            this.f25115b = z9;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f25114a == dVar.f25114a && this.f25115b == dVar.f25115b;
        }

        public int hashCode() {
            return (this.f25114a * 31) + (this.f25115b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final TrackGroupArray f25116a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f25117b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f25118c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f25119d;

        public e(TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f25116a = trackGroupArray;
            this.f25117b = zArr;
            int i4 = trackGroupArray.length;
            this.f25118c = new boolean[i4];
            this.f25119d = new boolean[i4];
        }
    }

    public p0(Uri uri, com.google.android.exoplayer2.upstream.m mVar, l0 l0Var, com.google.android.exoplayer2.drm.u uVar, s.a aVar, com.google.android.exoplayer2.upstream.f0 f0Var, h0.a aVar2, b bVar, com.google.android.exoplayer2.upstream.b bVar2, @Nullable String str, int i4) {
        this.f25071a = uri;
        this.f25072b = mVar;
        this.f25073c = uVar;
        this.f25076f = aVar;
        this.f25074d = f0Var;
        this.f25075e = aVar2;
        this.f25077g = bVar;
        this.f25078h = bVar2;
        this.f25079i = str;
        this.f25080j = i4;
        this.f25082l = l0Var;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private void I() {
        com.google.android.exoplayer2.util.a.i(this.f25092v);
        com.google.android.exoplayer2.util.a.g(this.f25094x);
        com.google.android.exoplayer2.util.a.g(this.f25095y);
    }

    private boolean J(a aVar, int i4) {
        com.google.android.exoplayer2.extractor.b0 b0Var;
        if (this.F == -1 && ((b0Var = this.f25095y) == null || b0Var.i() == com.google.android.exoplayer2.i.f23649b)) {
            if (this.f25092v && !i0()) {
                this.I = true;
                return false;
            }
            this.D = this.f25092v;
            this.G = 0L;
            this.J = 0;
            for (w0 w0Var : this.f25089s) {
                w0Var.W();
            }
            aVar.k(0L, 0L);
            return true;
        }
        this.J = i4;
        return true;
    }

    private void K(a aVar) {
        if (this.F == -1) {
            this.F = aVar.f25108l;
        }
    }

    private static Map<String, String> L() {
        HashMap hashMap = new HashMap();
        hashMap.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(hashMap);
    }

    private int M() {
        int i4 = 0;
        for (w0 w0Var : this.f25089s) {
            i4 += w0Var.H();
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long N() {
        long j4 = Long.MIN_VALUE;
        for (w0 w0Var : this.f25089s) {
            j4 = Math.max(j4, w0Var.A());
        }
        return j4;
    }

    private boolean P() {
        return this.H != com.google.android.exoplayer2.i.f23649b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        if (this.L) {
            return;
        }
        ((w.a) com.google.android.exoplayer2.util.a.g(this.f25087q)).f(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        Metadata copyWithAppendedEntries;
        if (this.L || this.f25092v || !this.f25091u || this.f25095y == null) {
            return;
        }
        for (w0 w0Var : this.f25089s) {
            if (w0Var.G() == null) {
                return;
            }
        }
        this.f25083m.d();
        int length = this.f25089s.length;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        boolean[] zArr = new boolean[length];
        for (int i4 = 0; i4 < length; i4++) {
            Format format = (Format) com.google.android.exoplayer2.util.a.g(this.f25089s[i4].G());
            String str = format.sampleMimeType;
            boolean p9 = com.google.android.exoplayer2.util.a0.p(str);
            boolean z9 = p9 || com.google.android.exoplayer2.util.a0.s(str);
            zArr[i4] = z9;
            this.f25093w = z9 | this.f25093w;
            IcyHeaders icyHeaders = this.f25088r;
            if (icyHeaders != null) {
                if (p9 || this.f25090t[i4].f25115b) {
                    Metadata metadata = format.metadata;
                    if (metadata == null) {
                        copyWithAppendedEntries = new Metadata(icyHeaders);
                    } else {
                        copyWithAppendedEntries = metadata.copyWithAppendedEntries(icyHeaders);
                    }
                    format = format.buildUpon().X(copyWithAppendedEntries).E();
                }
                if (p9 && format.averageBitrate == -1 && format.peakBitrate == -1 && icyHeaders.bitrate != -1) {
                    format = format.buildUpon().G(icyHeaders.bitrate).E();
                }
            }
            trackGroupArr[i4] = new TrackGroup(format.copyWithExoMediaCryptoType(this.f25073c.d(format)));
        }
        this.f25094x = new e(new TrackGroupArray(trackGroupArr), zArr);
        this.f25092v = true;
        ((w.a) com.google.android.exoplayer2.util.a.g(this.f25087q)).i(this);
    }

    private void U(int i4) {
        I();
        e eVar = this.f25094x;
        boolean[] zArr = eVar.f25119d;
        if (zArr[i4]) {
            return;
        }
        Format format = eVar.f25116a.get(i4).getFormat(0);
        this.f25075e.i(com.google.android.exoplayer2.util.a0.l(format.sampleMimeType), format, 0, null, this.G);
        zArr[i4] = true;
    }

    private void V(int i4) {
        I();
        boolean[] zArr = this.f25094x.f25117b;
        if (this.I && zArr[i4]) {
            if (this.f25089s[i4].L(false)) {
                return;
            }
            this.H = 0L;
            this.I = false;
            this.D = true;
            this.G = 0L;
            this.J = 0;
            for (w0 w0Var : this.f25089s) {
                w0Var.W();
            }
            ((w.a) com.google.android.exoplayer2.util.a.g(this.f25087q)).f(this);
        }
    }

    private com.google.android.exoplayer2.extractor.e0 b0(d dVar) {
        int length = this.f25089s.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (dVar.equals(this.f25090t[i4])) {
                return this.f25089s[i4];
            }
        }
        w0 k10 = w0.k(this.f25078h, this.f25086p.getLooper(), this.f25073c, this.f25076f);
        k10.e0(this);
        int i10 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.f25090t, i10);
        dVarArr[length] = dVar;
        this.f25090t = (d[]) com.google.android.exoplayer2.util.z0.l(dVarArr);
        w0[] w0VarArr = (w0[]) Arrays.copyOf(this.f25089s, i10);
        w0VarArr[length] = k10;
        this.f25089s = (w0[]) com.google.android.exoplayer2.util.z0.l(w0VarArr);
        return k10;
    }

    private boolean e0(boolean[] zArr, long j4) {
        int length = this.f25089s.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (!this.f25089s[i4].a0(j4, false) && (zArr[i4] || !this.f25093w)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public void S(com.google.android.exoplayer2.extractor.b0 b0Var) {
        this.f25095y = this.f25088r == null ? b0Var : new b0.b(com.google.android.exoplayer2.i.f23649b);
        this.f25096z = b0Var.i();
        boolean z9 = this.F == -1 && b0Var.i() == com.google.android.exoplayer2.i.f23649b;
        this.A = z9;
        this.B = z9 ? 7 : 1;
        this.f25077g.k(this.f25096z, b0Var.g(), this.A);
        if (this.f25092v) {
            return;
        }
        T();
    }

    private void h0() {
        a aVar = new a(this.f25071a, this.f25072b, this.f25082l, this, this.f25083m);
        if (this.f25092v) {
            com.google.android.exoplayer2.util.a.i(P());
            long j4 = this.f25096z;
            if (j4 != com.google.android.exoplayer2.i.f23649b && this.H > j4) {
                this.K = true;
                this.H = com.google.android.exoplayer2.i.f23649b;
                return;
            }
            aVar.k(((com.google.android.exoplayer2.extractor.b0) com.google.android.exoplayer2.util.a.g(this.f25095y)).e(this.H).f22114a.f22125b, this.H);
            for (w0 w0Var : this.f25089s) {
                w0Var.c0(this.H);
            }
            this.H = com.google.android.exoplayer2.i.f23649b;
        }
        this.J = M();
        this.f25075e.A(new o(aVar.f25097a, aVar.f25107k, this.f25081k.n(aVar, this, this.f25074d.d(this.B))), 1, -1, null, 0, null, aVar.f25106j, this.f25096z);
    }

    private boolean i0() {
        return this.D || P();
    }

    com.google.android.exoplayer2.extractor.e0 O() {
        return b0(new d(0, true));
    }

    boolean Q(int i4) {
        return !i0() && this.f25089s[i4].L(this.K);
    }

    void W() throws IOException {
        this.f25081k.b(this.f25074d.d(this.B));
    }

    void X(int i4) throws IOException {
        this.f25089s[i4].O();
        W();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: Y */
    public void i(a aVar, long j4, long j10, boolean z9) {
        com.google.android.exoplayer2.upstream.m0 m0Var = aVar.f25099c;
        o oVar = new o(aVar.f25097a, aVar.f25107k, m0Var.u(), m0Var.v(), j4, j10, m0Var.t());
        this.f25074d.f(aVar.f25097a);
        this.f25075e.r(oVar, 1, -1, null, 0, null, aVar.f25106j, this.f25096z);
        if (z9) {
            return;
        }
        K(aVar);
        for (w0 w0Var : this.f25089s) {
            w0Var.W();
        }
        if (this.E > 0) {
            ((w.a) com.google.android.exoplayer2.util.a.g(this.f25087q)).f(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: Z */
    public void k(a aVar, long j4, long j10) {
        com.google.android.exoplayer2.extractor.b0 b0Var;
        if (this.f25096z == com.google.android.exoplayer2.i.f23649b && (b0Var = this.f25095y) != null) {
            boolean g4 = b0Var.g();
            long N2 = N();
            long j11 = N2 == Long.MIN_VALUE ? 0L : N2 + M;
            this.f25096z = j11;
            this.f25077g.k(j11, g4, this.A);
        }
        com.google.android.exoplayer2.upstream.m0 m0Var = aVar.f25099c;
        o oVar = new o(aVar.f25097a, aVar.f25107k, m0Var.u(), m0Var.v(), j4, j10, m0Var.t());
        this.f25074d.f(aVar.f25097a);
        this.f25075e.u(oVar, 1, -1, null, 0, null, aVar.f25106j, this.f25096z);
        K(aVar);
        this.K = true;
        ((w.a) com.google.android.exoplayer2.util.a.g(this.f25087q)).f(this);
    }

    @Override // com.google.android.exoplayer2.source.w0.d
    public void a(Format format) {
        this.f25086p.post(this.f25084n);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: a0 */
    public Loader.c p(a aVar, long j4, long j10, IOException iOException, int i4) {
        boolean z9;
        a aVar2;
        Loader.c cVar;
        K(aVar);
        com.google.android.exoplayer2.upstream.m0 m0Var = aVar.f25099c;
        o oVar = new o(aVar.f25097a, aVar.f25107k, m0Var.u(), m0Var.v(), j4, j10, m0Var.t());
        long a10 = this.f25074d.a(new f0.a(oVar, new s(1, -1, null, 0, null, com.google.android.exoplayer2.i.d(aVar.f25106j), com.google.android.exoplayer2.i.d(this.f25096z)), iOException, i4));
        if (a10 == com.google.android.exoplayer2.i.f23649b) {
            cVar = Loader.f26979l;
        } else {
            int M2 = M();
            if (M2 > this.J) {
                aVar2 = aVar;
                z9 = true;
            } else {
                z9 = false;
                aVar2 = aVar;
            }
            if (J(aVar2, M2)) {
                cVar = Loader.i(z9, a10);
            } else {
                cVar = Loader.f26978k;
            }
        }
        boolean z10 = !cVar.c();
        this.f25075e.w(oVar, 1, -1, null, 0, null, aVar.f25106j, this.f25096z, iOException, z10);
        if (z10) {
            this.f25074d.f(aVar.f25097a);
        }
        return cVar;
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean b() {
        return this.f25081k.k() && this.f25083m.e();
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long c() {
        if (this.E == 0) {
            return Long.MIN_VALUE;
        }
        return g();
    }

    int c0(int i4, com.google.android.exoplayer2.v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (i0()) {
            return -3;
        }
        U(i4);
        int T = this.f25089s[i4].T(v0Var, decoderInputBuffer, i10, this.K);
        if (T == -3) {
            V(i4);
        }
        return T;
    }

    @Override // com.google.android.exoplayer2.source.w
    public long d(long j4, j2 j2Var) {
        I();
        if (this.f25095y.g()) {
            b0.a e4 = this.f25095y.e(j4);
            return j2Var.a(j4, e4.f22114a.f22124a, e4.f22115b.f22124a);
        }
        return 0L;
    }

    public void d0() {
        if (this.f25092v) {
            for (w0 w0Var : this.f25089s) {
                w0Var.S();
            }
        }
        this.f25081k.m(this);
        this.f25086p.removeCallbacksAndMessages(null);
        this.f25087q = null;
        this.L = true;
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean e(long j4) {
        if (this.K || this.f25081k.j() || this.I) {
            return false;
        }
        if (this.f25092v && this.E == 0) {
            return false;
        }
        boolean f10 = this.f25083m.f();
        if (this.f25081k.k()) {
            return f10;
        }
        h0();
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public com.google.android.exoplayer2.extractor.e0 f(int i4, int i10) {
        return b0(new d(i4, false));
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long g() {
        long j4;
        I();
        boolean[] zArr = this.f25094x.f25117b;
        if (this.K) {
            return Long.MIN_VALUE;
        }
        if (P()) {
            return this.H;
        }
        if (this.f25093w) {
            int length = this.f25089s.length;
            j4 = Long.MAX_VALUE;
            for (int i4 = 0; i4 < length; i4++) {
                if (zArr[i4] && !this.f25089s[i4].K()) {
                    j4 = Math.min(j4, this.f25089s[i4].A());
                }
            }
        } else {
            j4 = Long.MAX_VALUE;
        }
        if (j4 == Long.MAX_VALUE) {
            j4 = N();
        }
        return j4 == Long.MIN_VALUE ? this.G : j4;
    }

    int g0(int i4, long j4) {
        if (i0()) {
            return 0;
        }
        U(i4);
        w0 w0Var = this.f25089s[i4];
        int F = w0Var.F(j4, this.K);
        w0Var.f0(F);
        if (F == 0) {
            V(i4);
        }
        return F;
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
        I();
        boolean[] zArr = this.f25094x.f25117b;
        if (!this.f25095y.g()) {
            j4 = 0;
        }
        int i4 = 0;
        this.D = false;
        this.G = j4;
        if (P()) {
            this.H = j4;
            return j4;
        } else if (this.B == 7 || !e0(zArr, j4)) {
            this.I = false;
            this.H = j4;
            this.K = false;
            if (this.f25081k.k()) {
                w0[] w0VarArr = this.f25089s;
                int length = w0VarArr.length;
                while (i4 < length) {
                    w0VarArr[i4].r();
                    i4++;
                }
                this.f25081k.g();
            } else {
                this.f25081k.h();
                w0[] w0VarArr2 = this.f25089s;
                int length2 = w0VarArr2.length;
                while (i4 < length2) {
                    w0VarArr2[i4].W();
                    i4++;
                }
            }
            return j4;
        } else {
            return j4;
        }
    }

    @Override // com.google.android.exoplayer2.source.w
    public long m() {
        if (this.D) {
            if (this.K || M() > this.J) {
                this.D = false;
                return this.G;
            }
            return com.google.android.exoplayer2.i.f23649b;
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void n(w.a aVar, long j4) {
        this.f25087q = aVar;
        this.f25083m.f();
        h0();
    }

    @Override // com.google.android.exoplayer2.source.w
    public long o(com.google.android.exoplayer2.trackselection.g[] gVarArr, boolean[] zArr, x0[] x0VarArr, boolean[] zArr2, long j4) {
        I();
        e eVar = this.f25094x;
        TrackGroupArray trackGroupArray = eVar.f25116a;
        boolean[] zArr3 = eVar.f25118c;
        int i4 = this.E;
        int i10 = 0;
        for (int i11 = 0; i11 < gVarArr.length; i11++) {
            if (x0VarArr[i11] != null && (gVarArr[i11] == null || !zArr[i11])) {
                int i12 = ((c) x0VarArr[i11]).f25112a;
                com.google.android.exoplayer2.util.a.i(zArr3[i12]);
                this.E--;
                zArr3[i12] = false;
                x0VarArr[i11] = null;
            }
        }
        boolean z9 = !this.C ? j4 == 0 : i4 != 0;
        for (int i13 = 0; i13 < gVarArr.length; i13++) {
            if (x0VarArr[i13] == null && gVarArr[i13] != null) {
                com.google.android.exoplayer2.trackselection.g gVar = gVarArr[i13];
                com.google.android.exoplayer2.util.a.i(gVar.length() == 1);
                com.google.android.exoplayer2.util.a.i(gVar.g(0) == 0);
                int indexOf = trackGroupArray.indexOf(gVar.l());
                com.google.android.exoplayer2.util.a.i(!zArr3[indexOf]);
                this.E++;
                zArr3[indexOf] = true;
                x0VarArr[i13] = new c(indexOf);
                zArr2[i13] = true;
                if (!z9) {
                    w0 w0Var = this.f25089s[indexOf];
                    z9 = (w0Var.a0(j4, true) || w0Var.D() == 0) ? false : true;
                }
            }
        }
        if (this.E == 0) {
            this.I = false;
            this.D = false;
            if (this.f25081k.k()) {
                w0[] w0VarArr = this.f25089s;
                int length = w0VarArr.length;
                while (i10 < length) {
                    w0VarArr[i10].r();
                    i10++;
                }
                this.f25081k.g();
            } else {
                w0[] w0VarArr2 = this.f25089s;
                int length2 = w0VarArr2.length;
                while (i10 < length2) {
                    w0VarArr2[i10].W();
                    i10++;
                }
            }
        } else if (z9) {
            j4 = l(j4);
            while (i10 < x0VarArr.length) {
                if (x0VarArr[i10] != null) {
                    zArr2[i10] = true;
                }
                i10++;
            }
        }
        this.C = true;
        return j4;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void q(final com.google.android.exoplayer2.extractor.b0 b0Var) {
        this.f25086p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.o0
            @Override // java.lang.Runnable
            public final void run() {
                p0.this.S(b0Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.f
    public void r() {
        for (w0 w0Var : this.f25089s) {
            w0Var.U();
        }
        this.f25082l.release();
    }

    @Override // com.google.android.exoplayer2.source.w
    public void s() throws IOException {
        W();
        if (this.K && !this.f25092v) {
            throw new ParserException("Loading finished before preparation is complete.");
        }
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void t() {
        this.f25091u = true;
        this.f25086p.post(this.f25084n);
    }

    @Override // com.google.android.exoplayer2.source.w
    public TrackGroupArray u() {
        I();
        return this.f25094x.f25116a;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void v(long j4, boolean z9) {
        I();
        if (P()) {
            return;
        }
        boolean[] zArr = this.f25094x.f25118c;
        int length = this.f25089s.length;
        for (int i4 = 0; i4 < length; i4++) {
            this.f25089s[i4].q(j4, z9, zArr[i4]);
        }
    }
}
