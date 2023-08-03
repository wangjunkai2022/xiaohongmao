package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.j2;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.source.z;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SilenceMediaSource.java */
/* loaded from: classes2.dex */
public final class a1 extends com.google.android.exoplayer2.source.a {

    /* renamed from: i  reason: collision with root package name */
    public static final String f24648i = "SilenceMediaSource";

    /* renamed from: j  reason: collision with root package name */
    private static final int f24649j = 44100;

    /* renamed from: k  reason: collision with root package name */
    private static final int f24650k = 2;

    /* renamed from: l  reason: collision with root package name */
    private static final int f24651l = 2;

    /* renamed from: m  reason: collision with root package name */
    private static final Format f24652m;

    /* renamed from: n  reason: collision with root package name */
    private static final com.google.android.exoplayer2.b1 f24653n;

    /* renamed from: o  reason: collision with root package name */
    private static final byte[] f24654o;

    /* renamed from: g  reason: collision with root package name */
    private final long f24655g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.exoplayer2.b1 f24656h;

    /* compiled from: SilenceMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private long f24657a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f24658b;

        public a1 a() {
            com.google.android.exoplayer2.util.a.i(this.f24657a > 0);
            return new a1(this.f24657a, a1.f24653n.b().E(this.f24658b).a());
        }

        public b b(long j4) {
            this.f24657a = j4;
            return this;
        }

        public b c(@Nullable Object obj) {
            this.f24658b = obj;
            return this;
        }
    }

    /* compiled from: SilenceMediaSource.java */
    /* loaded from: classes2.dex */
    private static final class c implements w {

        /* renamed from: c  reason: collision with root package name */
        private static final TrackGroupArray f24659c = new TrackGroupArray(new TrackGroup(a1.f24652m));

        /* renamed from: a  reason: collision with root package name */
        private final long f24660a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<x0> f24661b = new ArrayList<>();

        public c(long j4) {
            this.f24660a = j4;
        }

        private long a(long j4) {
            return com.google.android.exoplayer2.util.z0.u(j4, 0L, this.f24660a);
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public boolean b() {
            return false;
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public long c() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.android.exoplayer2.source.w
        public long d(long j4, j2 j2Var) {
            return a(j4);
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public boolean e(long j4) {
            return false;
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public long g() {
            return Long.MIN_VALUE;
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
            long a10 = a(j4);
            for (int i4 = 0; i4 < this.f24661b.size(); i4++) {
                ((d) this.f24661b.get(i4)).b(a10);
            }
            return a10;
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
            long a10 = a(j4);
            for (int i4 = 0; i4 < gVarArr.length; i4++) {
                if (x0VarArr[i4] != null && (gVarArr[i4] == null || !zArr[i4])) {
                    this.f24661b.remove(x0VarArr[i4]);
                    x0VarArr[i4] = null;
                }
                if (x0VarArr[i4] == null && gVarArr[i4] != null) {
                    d dVar = new d(this.f24660a);
                    dVar.b(a10);
                    this.f24661b.add(dVar);
                    x0VarArr[i4] = dVar;
                    zArr2[i4] = true;
                }
            }
            return a10;
        }

        @Override // com.google.android.exoplayer2.source.w
        public void s() {
        }

        @Override // com.google.android.exoplayer2.source.w
        public TrackGroupArray u() {
            return f24659c;
        }

        @Override // com.google.android.exoplayer2.source.w
        public void v(long j4, boolean z9) {
        }
    }

    /* compiled from: SilenceMediaSource.java */
    /* loaded from: classes2.dex */
    private static final class d implements x0 {

        /* renamed from: a  reason: collision with root package name */
        private final long f24662a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f24663b;

        /* renamed from: c  reason: collision with root package name */
        private long f24664c;

        public d(long j4) {
            this.f24662a = a1.G(j4);
            b(0L);
        }

        @Override // com.google.android.exoplayer2.source.x0
        public void a() {
        }

        public void b(long j4) {
            this.f24664c = com.google.android.exoplayer2.util.z0.u(a1.G(j4), 0L, this.f24662a);
        }

        @Override // com.google.android.exoplayer2.source.x0
        public boolean f() {
            return true;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int q(com.google.android.exoplayer2.v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4) {
            if (this.f24663b && (i4 & 2) == 0) {
                long j4 = this.f24662a;
                long j10 = this.f24664c;
                long j11 = j4 - j10;
                if (j11 == 0) {
                    decoderInputBuffer.e(4);
                    return -4;
                }
                decoderInputBuffer.f21574e = a1.H(j10);
                decoderInputBuffer.e(1);
                int min = (int) Math.min(a1.f24654o.length, j11);
                if ((i4 & 4) == 0) {
                    decoderInputBuffer.p(min);
                    decoderInputBuffer.f21572c.put(a1.f24654o, 0, min);
                }
                if ((i4 & 1) == 0) {
                    this.f24664c += min;
                }
                return -4;
            }
            v0Var.f27763b = a1.f24652m;
            this.f24663b = true;
            return -5;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int t(long j4) {
            long j10 = this.f24664c;
            b(j4);
            return (int) ((this.f24664c - j10) / a1.f24654o.length);
        }
    }

    static {
        Format E = new Format.b().e0(com.google.android.exoplayer2.util.a0.I).H(2).f0(44100).Y(2).E();
        f24652m = E;
        f24653n = new b1.c().z(f24648i).F(Uri.EMPTY).B(E.sampleMimeType).a();
        f24654o = new byte[com.google.android.exoplayer2.util.z0.k0(2, 2) * 1024];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long G(long j4) {
        return com.google.android.exoplayer2.util.z0.k0(2, 2) * ((j4 * 44100) / 1000000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long H(long j4) {
        return ((j4 / com.google.android.exoplayer2.util.z0.k0(2, 2)) * 1000000) / 44100;
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void A() {
    }

    @Override // com.google.android.exoplayer2.source.z
    public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        return new c(this.f24655g);
    }

    @Override // com.google.android.exoplayer2.source.z
    public com.google.android.exoplayer2.b1 e() {
        return this.f24656h;
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    @Deprecated
    public Object f() {
        return ((b1.g) com.google.android.exoplayer2.util.a.g(this.f24656h.f21439b)).f21509h;
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
    }

    @Override // com.google.android.exoplayer2.source.z
    public void n() {
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        z(new b1(this.f24655g, true, false, false, (Object) null, this.f24656h));
    }

    public a1(long j4) {
        this(j4, f24653n);
    }

    private a1(long j4, com.google.android.exoplayer2.b1 b1Var) {
        com.google.android.exoplayer2.util.a.a(j4 >= 0);
        this.f24655g = j4;
        this.f24656h = b1Var;
    }
}
