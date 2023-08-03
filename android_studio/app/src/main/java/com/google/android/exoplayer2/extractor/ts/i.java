package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: AdtsReader.java */
/* loaded from: classes2.dex */
public final class i implements m {
    private static final int A = 4;
    private static final int B = 5;
    private static final int C = 2;
    private static final int D = 8;
    private static final int E = 256;
    private static final int F = 512;
    private static final int G = 768;
    private static final int H = 1024;
    private static final int I = 10;
    private static final int J = 6;
    private static final byte[] K = {73, 68, 51};
    private static final int L = -1;

    /* renamed from: v  reason: collision with root package name */
    private static final String f23136v = "AdtsReader";

    /* renamed from: w  reason: collision with root package name */
    private static final int f23137w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static final int f23138x = 1;

    /* renamed from: y  reason: collision with root package name */
    private static final int f23139y = 2;

    /* renamed from: z  reason: collision with root package name */
    private static final int f23140z = 3;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f23141a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g0 f23142b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23143c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f23144d;

    /* renamed from: e  reason: collision with root package name */
    private String f23145e;

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23146f;

    /* renamed from: g  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23147g;

    /* renamed from: h  reason: collision with root package name */
    private int f23148h;

    /* renamed from: i  reason: collision with root package name */
    private int f23149i;

    /* renamed from: j  reason: collision with root package name */
    private int f23150j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f23151k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f23152l;

    /* renamed from: m  reason: collision with root package name */
    private int f23153m;

    /* renamed from: n  reason: collision with root package name */
    private int f23154n;

    /* renamed from: o  reason: collision with root package name */
    private int f23155o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f23156p;

    /* renamed from: q  reason: collision with root package name */
    private long f23157q;

    /* renamed from: r  reason: collision with root package name */
    private int f23158r;

    /* renamed from: s  reason: collision with root package name */
    private long f23159s;

    /* renamed from: t  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23160t;

    /* renamed from: u  reason: collision with root package name */
    private long f23161u;

    public i(boolean z9) {
        this(z9, null);
    }

    @EnsuresNonNull({"output", "currentOutput", "id3Output"})
    private void a() {
        com.google.android.exoplayer2.util.a.g(this.f23146f);
        z0.k(this.f23160t);
        z0.k(this.f23147g);
    }

    private void g(com.google.android.exoplayer2.util.h0 h0Var) {
        if (h0Var.a() == 0) {
            return;
        }
        this.f23142b.f27547a[0] = h0Var.d()[h0Var.e()];
        this.f23142b.q(2);
        int h4 = this.f23142b.h(4);
        int i4 = this.f23154n;
        if (i4 != -1 && h4 != i4) {
            q();
            return;
        }
        if (!this.f23152l) {
            this.f23152l = true;
            this.f23153m = this.f23155o;
            this.f23154n = h4;
        }
        t();
    }

    private boolean h(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        h0Var.S(i4 + 1);
        if (w(h0Var, this.f23142b.f27547a, 1)) {
            this.f23142b.q(4);
            int h4 = this.f23142b.h(1);
            int i10 = this.f23153m;
            if (i10 == -1 || h4 == i10) {
                if (this.f23154n != -1) {
                    if (!w(h0Var, this.f23142b.f27547a, 1)) {
                        return true;
                    }
                    this.f23142b.q(2);
                    if (this.f23142b.h(4) != this.f23154n) {
                        return false;
                    }
                    h0Var.S(i4 + 2);
                }
                if (w(h0Var, this.f23142b.f27547a, 4)) {
                    this.f23142b.q(14);
                    int h10 = this.f23142b.h(13);
                    if (h10 < 7) {
                        return false;
                    }
                    byte[] d4 = h0Var.d();
                    int f10 = h0Var.f();
                    int i11 = i4 + h10;
                    if (i11 >= f10) {
                        return true;
                    }
                    if (d4[i11] == -1) {
                        int i12 = i11 + 1;
                        if (i12 == f10) {
                            return true;
                        }
                        return l((byte) -1, d4[i12]) && ((d4[i12] & 8) >> 3) == h4;
                    } else if (d4[i11] != 73) {
                        return false;
                    } else {
                        int i13 = i11 + 1;
                        if (i13 == f10) {
                            return true;
                        }
                        if (d4[i13] != 68) {
                            return false;
                        }
                        int i14 = i11 + 2;
                        return i14 == f10 || d4[i14] == 51;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    private boolean i(com.google.android.exoplayer2.util.h0 h0Var, byte[] bArr, int i4) {
        int min = Math.min(h0Var.a(), i4 - this.f23149i);
        h0Var.k(bArr, this.f23149i, min);
        int i10 = this.f23149i + min;
        this.f23149i = i10;
        return i10 == i4;
    }

    private void j(com.google.android.exoplayer2.util.h0 h0Var) {
        byte[] d4 = h0Var.d();
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        while (e4 < f10) {
            int i4 = e4 + 1;
            int i10 = d4[e4] & 255;
            if (this.f23150j == 512 && l((byte) -1, (byte) i10) && (this.f23152l || h(h0Var, i4 - 2))) {
                this.f23155o = (i10 & 8) >> 3;
                this.f23151k = (i10 & 1) == 0;
                if (!this.f23152l) {
                    r();
                } else {
                    t();
                }
                h0Var.S(i4);
                return;
            }
            int i11 = this.f23150j;
            int i12 = i10 | i11;
            if (i12 == 329) {
                this.f23150j = G;
            } else if (i12 == 511) {
                this.f23150j = 512;
            } else if (i12 == 836) {
                this.f23150j = 1024;
            } else if (i12 == 1075) {
                u();
                h0Var.S(i4);
                return;
            } else if (i11 != 256) {
                this.f23150j = 256;
                i4--;
            }
            e4 = i4;
        }
        h0Var.S(e4);
    }

    private boolean l(byte b10, byte b11) {
        return m(((b10 & 255) << 8) | (b11 & 255));
    }

    public static boolean m(int i4) {
        return (i4 & 65526) == 65520;
    }

    @RequiresNonNull({"output"})
    private void n() throws ParserException {
        this.f23142b.q(0);
        if (!this.f23156p) {
            int h4 = this.f23142b.h(2) + 1;
            if (h4 != 2) {
                StringBuilder sb = new StringBuilder(61);
                sb.append("Detected audio object type: ");
                sb.append(h4);
                sb.append(", but assuming AAC LC.");
                com.google.android.exoplayer2.util.w.n(f23136v, sb.toString());
                h4 = 2;
            }
            this.f23142b.s(5);
            byte[] b10 = com.google.android.exoplayer2.audio.a.b(h4, this.f23154n, this.f23142b.h(3));
            a.c g4 = com.google.android.exoplayer2.audio.a.g(b10);
            Format E2 = new Format.b().S(this.f23145e).e0("audio/mp4a-latm").I(g4.f21115c).H(g4.f21114b).f0(g4.f21113a).T(Collections.singletonList(b10)).V(this.f23144d).E();
            this.f23157q = 1024000000 / E2.sampleRate;
            this.f23146f.d(E2);
            this.f23156p = true;
        } else {
            this.f23142b.s(10);
        }
        this.f23142b.s(4);
        int h10 = (this.f23142b.h(13) - 2) - 5;
        if (this.f23151k) {
            h10 -= 2;
        }
        v(this.f23146f, this.f23157q, 0, h10);
    }

    @RequiresNonNull({"id3Output"})
    private void o() {
        this.f23147g.c(this.f23143c, 10);
        this.f23143c.S(6);
        v(this.f23147g, 0L, 10, this.f23143c.F() + 10);
    }

    @RequiresNonNull({"currentOutput"})
    private void p(com.google.android.exoplayer2.util.h0 h0Var) {
        int min = Math.min(h0Var.a(), this.f23158r - this.f23149i);
        this.f23160t.c(h0Var, min);
        int i4 = this.f23149i + min;
        this.f23149i = i4;
        int i10 = this.f23158r;
        if (i4 == i10) {
            this.f23160t.e(this.f23159s, 1, i10, 0, null);
            this.f23159s += this.f23161u;
            s();
        }
    }

    private void q() {
        this.f23152l = false;
        s();
    }

    private void r() {
        this.f23148h = 1;
        this.f23149i = 0;
    }

    private void s() {
        this.f23148h = 0;
        this.f23149i = 0;
        this.f23150j = 256;
    }

    private void t() {
        this.f23148h = 3;
        this.f23149i = 0;
    }

    private void u() {
        this.f23148h = 2;
        this.f23149i = K.length;
        this.f23158r = 0;
        this.f23143c.S(0);
    }

    private void v(com.google.android.exoplayer2.extractor.e0 e0Var, long j4, int i4, int i10) {
        this.f23148h = 4;
        this.f23149i = i4;
        this.f23160t = e0Var;
        this.f23161u = j4;
        this.f23158r = i10;
    }

    private boolean w(com.google.android.exoplayer2.util.h0 h0Var, byte[] bArr, int i4) {
        if (h0Var.a() < i4) {
            return false;
        }
        h0Var.k(bArr, 0, i4);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) throws ParserException {
        a();
        while (h0Var.a() > 0) {
            int i4 = this.f23148h;
            if (i4 == 0) {
                j(h0Var);
            } else if (i4 == 1) {
                g(h0Var);
            } else if (i4 != 2) {
                if (i4 == 3) {
                    if (i(h0Var, this.f23142b.f27547a, this.f23151k ? 7 : 5)) {
                        n();
                    }
                } else if (i4 == 4) {
                    p(h0Var);
                } else {
                    throw new IllegalStateException();
                }
            } else if (i(h0Var, this.f23143c.d(), 10)) {
                o();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        q();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23145e = eVar.b();
        com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 1);
        this.f23146f = f10;
        this.f23160t = f10;
        if (this.f23141a) {
            eVar.a();
            com.google.android.exoplayer2.extractor.e0 f11 = mVar.f(eVar.c(), 5);
            this.f23147g = f11;
            f11.d(new Format.b().S(eVar.b()).e0(com.google.android.exoplayer2.util.a0.f27456m0).E());
            return;
        }
        this.f23147g = new com.google.android.exoplayer2.extractor.j();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23159s = j4;
    }

    public long k() {
        return this.f23157q;
    }

    public i(boolean z9, @Nullable String str) {
        this.f23142b = new com.google.android.exoplayer2.util.g0(new byte[7]);
        this.f23143c = new com.google.android.exoplayer2.util.h0(Arrays.copyOf(K, 10));
        s();
        this.f23153m = -1;
        this.f23154n = -1;
        this.f23157q = com.google.android.exoplayer2.i.f23649b;
        this.f23141a = z9;
        this.f23144d = str;
    }
}
