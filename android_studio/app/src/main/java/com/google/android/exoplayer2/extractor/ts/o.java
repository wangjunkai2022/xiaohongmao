package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;
import java.util.Collections;

/* compiled from: H263Reader.java */
/* loaded from: classes2.dex */
public final class o implements m {

    /* renamed from: l  reason: collision with root package name */
    private static final String f23239l = "H263Reader";

    /* renamed from: m  reason: collision with root package name */
    private static final int f23240m = 176;

    /* renamed from: n  reason: collision with root package name */
    private static final int f23241n = 178;

    /* renamed from: o  reason: collision with root package name */
    private static final int f23242o = 179;

    /* renamed from: p  reason: collision with root package name */
    private static final int f23243p = 181;

    /* renamed from: q  reason: collision with root package name */
    private static final int f23244q = 182;

    /* renamed from: r  reason: collision with root package name */
    private static final int f23245r = 31;

    /* renamed from: s  reason: collision with root package name */
    private static final int f23246s = -1;

    /* renamed from: t  reason: collision with root package name */
    private static final float[] f23247t = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: u  reason: collision with root package name */
    private static final int f23248u = 0;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final k0 f23249a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23250b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean[] f23251c;

    /* renamed from: d  reason: collision with root package name */
    private final a f23252d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final u f23253e;

    /* renamed from: f  reason: collision with root package name */
    private b f23254f;

    /* renamed from: g  reason: collision with root package name */
    private long f23255g;

    /* renamed from: h  reason: collision with root package name */
    private String f23256h;

    /* renamed from: i  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23257i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23258j;

    /* renamed from: k  reason: collision with root package name */
    private long f23259k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H263Reader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: f  reason: collision with root package name */
        private static final byte[] f23260f = {0, 0, 1};

        /* renamed from: g  reason: collision with root package name */
        private static final int f23261g = 0;

        /* renamed from: h  reason: collision with root package name */
        private static final int f23262h = 1;

        /* renamed from: i  reason: collision with root package name */
        private static final int f23263i = 2;

        /* renamed from: j  reason: collision with root package name */
        private static final int f23264j = 3;

        /* renamed from: k  reason: collision with root package name */
        private static final int f23265k = 4;

        /* renamed from: a  reason: collision with root package name */
        private boolean f23266a;

        /* renamed from: b  reason: collision with root package name */
        private int f23267b;

        /* renamed from: c  reason: collision with root package name */
        public int f23268c;

        /* renamed from: d  reason: collision with root package name */
        public int f23269d;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f23270e;

        public a(int i4) {
            this.f23270e = new byte[i4];
        }

        public void a(byte[] bArr, int i4, int i10) {
            if (this.f23266a) {
                int i11 = i10 - i4;
                byte[] bArr2 = this.f23270e;
                int length = bArr2.length;
                int i12 = this.f23268c;
                if (length < i12 + i11) {
                    this.f23270e = Arrays.copyOf(bArr2, (i12 + i11) * 2);
                }
                System.arraycopy(bArr, i4, this.f23270e, this.f23268c, i11);
                this.f23268c += i11;
            }
        }

        public boolean b(int i4, int i10) {
            int i11 = this.f23267b;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i4 == o.f23242o || i4 == o.f23243p) {
                                this.f23268c -= i10;
                                this.f23266a = false;
                                return true;
                            }
                        } else if ((i4 & a0.A) != 32) {
                            com.google.android.exoplayer2.util.w.n(o.f23239l, "Unexpected start code value");
                            c();
                        } else {
                            this.f23269d = this.f23268c;
                            this.f23267b = 4;
                        }
                    } else if (i4 > 31) {
                        com.google.android.exoplayer2.util.w.n(o.f23239l, "Unexpected start code value");
                        c();
                    } else {
                        this.f23267b = 3;
                    }
                } else if (i4 != o.f23243p) {
                    com.google.android.exoplayer2.util.w.n(o.f23239l, "Unexpected start code value");
                    c();
                } else {
                    this.f23267b = 2;
                }
            } else if (i4 == o.f23240m) {
                this.f23267b = 1;
                this.f23266a = true;
            }
            byte[] bArr = f23260f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f23266a = false;
            this.f23268c = 0;
            this.f23267b = 0;
        }
    }

    /* compiled from: H263Reader.java */
    /* loaded from: classes2.dex */
    private static final class b {

        /* renamed from: i  reason: collision with root package name */
        private static final int f23271i = 1;

        /* renamed from: j  reason: collision with root package name */
        private static final int f23272j = 0;

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.e0 f23273a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f23274b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f23275c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f23276d;

        /* renamed from: e  reason: collision with root package name */
        private int f23277e;

        /* renamed from: f  reason: collision with root package name */
        private int f23278f;

        /* renamed from: g  reason: collision with root package name */
        private long f23279g;

        /* renamed from: h  reason: collision with root package name */
        private long f23280h;

        public b(com.google.android.exoplayer2.extractor.e0 e0Var) {
            this.f23273a = e0Var;
        }

        public void a(byte[] bArr, int i4, int i10) {
            if (this.f23275c) {
                int i11 = this.f23278f;
                int i12 = (i4 + 1) - i11;
                if (i12 < i10) {
                    this.f23276d = ((bArr[i12] & 192) >> 6) == 0;
                    this.f23275c = false;
                    return;
                }
                this.f23278f = i11 + (i10 - i4);
            }
        }

        public void b(long j4, int i4, boolean z9) {
            if (this.f23277e == o.f23244q && z9 && this.f23274b) {
                boolean z10 = this.f23276d;
                this.f23273a.e(this.f23280h, z10 ? 1 : 0, (int) (j4 - this.f23279g), i4, null);
            }
            if (this.f23277e != o.f23242o) {
                this.f23279g = j4;
            }
        }

        public void c(int i4, long j4) {
            this.f23277e = i4;
            this.f23276d = false;
            this.f23274b = i4 == o.f23244q || i4 == o.f23242o;
            this.f23275c = i4 == o.f23244q;
            this.f23278f = 0;
            this.f23280h = j4;
        }

        public void d() {
            this.f23274b = false;
            this.f23275c = false;
            this.f23276d = false;
            this.f23277e = -1;
        }
    }

    public o() {
        this(null);
    }

    private static Format a(a aVar, int i4, String str) {
        byte[] copyOf = Arrays.copyOf(aVar.f23270e, aVar.f23268c);
        com.google.android.exoplayer2.util.g0 g0Var = new com.google.android.exoplayer2.util.g0(copyOf);
        g0Var.t(i4);
        g0Var.t(4);
        g0Var.r();
        g0Var.s(8);
        if (g0Var.g()) {
            g0Var.s(4);
            g0Var.s(3);
        }
        int h4 = g0Var.h(4);
        float f10 = 1.0f;
        if (h4 == 15) {
            int h10 = g0Var.h(8);
            int h11 = g0Var.h(8);
            if (h11 == 0) {
                com.google.android.exoplayer2.util.w.n(f23239l, "Invalid aspect ratio");
            } else {
                f10 = h10 / h11;
            }
        } else {
            float[] fArr = f23247t;
            if (h4 < fArr.length) {
                f10 = fArr[h4];
            } else {
                com.google.android.exoplayer2.util.w.n(f23239l, "Invalid aspect ratio");
            }
        }
        if (g0Var.g()) {
            g0Var.s(2);
            g0Var.s(1);
            if (g0Var.g()) {
                g0Var.s(15);
                g0Var.r();
                g0Var.s(15);
                g0Var.r();
                g0Var.s(15);
                g0Var.r();
                g0Var.s(3);
                g0Var.s(11);
                g0Var.r();
                g0Var.s(15);
                g0Var.r();
            }
        }
        if (g0Var.h(2) != 0) {
            com.google.android.exoplayer2.util.w.n(f23239l, "Unhandled video object layer shape");
        }
        g0Var.r();
        int h12 = g0Var.h(16);
        g0Var.r();
        if (g0Var.g()) {
            if (h12 == 0) {
                com.google.android.exoplayer2.util.w.n(f23239l, "Invalid vop_increment_time_resolution");
            } else {
                int i10 = 0;
                for (int i11 = h12 - 1; i11 > 0; i11 >>= 1) {
                    i10++;
                }
                g0Var.s(i10);
            }
        }
        g0Var.r();
        int h13 = g0Var.h(13);
        g0Var.r();
        int h14 = g0Var.h(13);
        g0Var.r();
        g0Var.r();
        return new Format.b().S(str).e0(com.google.android.exoplayer2.util.a0.f27461p).j0(h13).Q(h14).a0(f10).T(Collections.singletonList(copyOf)).E();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        com.google.android.exoplayer2.util.a.k(this.f23254f);
        com.google.android.exoplayer2.util.a.k(this.f23257i);
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        byte[] d4 = h0Var.d();
        this.f23255g += h0Var.a();
        this.f23257i.c(h0Var, h0Var.a());
        while (true) {
            int c10 = com.google.android.exoplayer2.util.b0.c(d4, e4, f10, this.f23251c);
            if (c10 == f10) {
                break;
            }
            int i4 = c10 + 3;
            int i10 = h0Var.d()[i4] & 255;
            int i11 = c10 - e4;
            int i12 = 0;
            if (!this.f23258j) {
                if (i11 > 0) {
                    this.f23252d.a(d4, e4, c10);
                }
                if (this.f23252d.b(i10, i11 < 0 ? -i11 : 0)) {
                    com.google.android.exoplayer2.extractor.e0 e0Var = this.f23257i;
                    a aVar = this.f23252d;
                    e0Var.d(a(aVar, aVar.f23269d, (String) com.google.android.exoplayer2.util.a.g(this.f23256h)));
                    this.f23258j = true;
                }
            }
            this.f23254f.a(d4, e4, c10);
            u uVar = this.f23253e;
            if (uVar != null) {
                if (i11 > 0) {
                    uVar.a(d4, e4, c10);
                } else {
                    i12 = -i11;
                }
                if (this.f23253e.b(i12)) {
                    u uVar2 = this.f23253e;
                    ((com.google.android.exoplayer2.util.h0) z0.k(this.f23250b)).Q(this.f23253e.f23430d, com.google.android.exoplayer2.util.b0.k(uVar2.f23430d, uVar2.f23431e));
                    ((k0) z0.k(this.f23249a)).a(this.f23259k, this.f23250b);
                }
                if (i10 == f23241n && h0Var.d()[c10 + 2] == 1) {
                    this.f23253e.e(i10);
                }
            }
            int i13 = f10 - c10;
            this.f23254f.b(this.f23255g - i13, i13, this.f23258j);
            this.f23254f.c(i10, this.f23259k);
            e4 = i4;
        }
        if (!this.f23258j) {
            this.f23252d.a(d4, e4, f10);
        }
        this.f23254f.a(d4, e4, f10);
        u uVar3 = this.f23253e;
        if (uVar3 != null) {
            uVar3.a(d4, e4, f10);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        com.google.android.exoplayer2.util.b0.a(this.f23251c);
        this.f23252d.c();
        b bVar = this.f23254f;
        if (bVar != null) {
            bVar.d();
        }
        u uVar = this.f23253e;
        if (uVar != null) {
            uVar.d();
        }
        this.f23255g = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23256h = eVar.b();
        com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 2);
        this.f23257i = f10;
        this.f23254f = new b(f10);
        k0 k0Var = this.f23249a;
        if (k0Var != null) {
            k0Var.b(mVar, eVar);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23259k = j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(@Nullable k0 k0Var) {
        this.f23249a = k0Var;
        this.f23251c = new boolean[4];
        this.f23252d = new a(128);
        if (k0Var != null) {
            this.f23253e = new u(f23241n, 128);
            this.f23250b = new com.google.android.exoplayer2.util.h0();
            return;
        }
        this.f23253e = null;
        this.f23250b = null;
    }
}
