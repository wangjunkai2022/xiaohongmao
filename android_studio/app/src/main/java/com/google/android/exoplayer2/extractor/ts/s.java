package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.extractor.ts.i0;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: LatmReader.java */
/* loaded from: classes2.dex */
public final class s implements m {
    private static final int A = 86;
    private static final int B = 224;

    /* renamed from: v  reason: collision with root package name */
    private static final int f23385v = 0;

    /* renamed from: w  reason: collision with root package name */
    private static final int f23386w = 1;

    /* renamed from: x  reason: collision with root package name */
    private static final int f23387x = 2;

    /* renamed from: y  reason: collision with root package name */
    private static final int f23388y = 3;

    /* renamed from: z  reason: collision with root package name */
    private static final int f23389z = 1024;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f23390a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23391b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g0 f23392c;

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23393d;

    /* renamed from: e  reason: collision with root package name */
    private String f23394e;

    /* renamed from: f  reason: collision with root package name */
    private Format f23395f;

    /* renamed from: g  reason: collision with root package name */
    private int f23396g;

    /* renamed from: h  reason: collision with root package name */
    private int f23397h;

    /* renamed from: i  reason: collision with root package name */
    private int f23398i;

    /* renamed from: j  reason: collision with root package name */
    private int f23399j;

    /* renamed from: k  reason: collision with root package name */
    private long f23400k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f23401l;

    /* renamed from: m  reason: collision with root package name */
    private int f23402m;

    /* renamed from: n  reason: collision with root package name */
    private int f23403n;

    /* renamed from: o  reason: collision with root package name */
    private int f23404o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f23405p;

    /* renamed from: q  reason: collision with root package name */
    private long f23406q;

    /* renamed from: r  reason: collision with root package name */
    private int f23407r;

    /* renamed from: s  reason: collision with root package name */
    private long f23408s;

    /* renamed from: t  reason: collision with root package name */
    private int f23409t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f23410u;

    public s(@Nullable String str) {
        this.f23390a = str;
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(1024);
        this.f23391b = h0Var;
        this.f23392c = new com.google.android.exoplayer2.util.g0(h0Var.d());
    }

    private static long a(com.google.android.exoplayer2.util.g0 g0Var) {
        return g0Var.h((g0Var.h(2) + 1) * 8);
    }

    @RequiresNonNull({"output"})
    private void g(com.google.android.exoplayer2.util.g0 g0Var) throws ParserException {
        if (!g0Var.g()) {
            this.f23401l = true;
            l(g0Var);
        } else if (!this.f23401l) {
            return;
        }
        if (this.f23402m == 0) {
            if (this.f23403n == 0) {
                k(g0Var, j(g0Var));
                if (this.f23405p) {
                    g0Var.s((int) this.f23406q);
                    return;
                }
                return;
            }
            throw new ParserException();
        }
        throw new ParserException();
    }

    private int h(com.google.android.exoplayer2.util.g0 g0Var) throws ParserException {
        int b10 = g0Var.b();
        a.c f10 = com.google.android.exoplayer2.audio.a.f(g0Var, true);
        this.f23410u = f10.f21115c;
        this.f23407r = f10.f21113a;
        this.f23409t = f10.f21114b;
        return b10 - g0Var.b();
    }

    private void i(com.google.android.exoplayer2.util.g0 g0Var) {
        int h4 = g0Var.h(3);
        this.f23404o = h4;
        if (h4 == 0) {
            g0Var.s(8);
        } else if (h4 == 1) {
            g0Var.s(9);
        } else if (h4 == 3 || h4 == 4 || h4 == 5) {
            g0Var.s(6);
        } else if (h4 != 6 && h4 != 7) {
            throw new IllegalStateException();
        } else {
            g0Var.s(1);
        }
    }

    private int j(com.google.android.exoplayer2.util.g0 g0Var) throws ParserException {
        int h4;
        if (this.f23404o == 0) {
            int i4 = 0;
            do {
                h4 = g0Var.h(8);
                i4 += h4;
            } while (h4 == 255);
            return i4;
        }
        throw new ParserException();
    }

    @RequiresNonNull({"output"})
    private void k(com.google.android.exoplayer2.util.g0 g0Var, int i4) {
        int e4 = g0Var.e();
        if ((e4 & 7) == 0) {
            this.f23391b.S(e4 >> 3);
        } else {
            g0Var.i(this.f23391b.d(), 0, i4 * 8);
            this.f23391b.S(0);
        }
        this.f23393d.c(this.f23391b, i4);
        this.f23393d.e(this.f23400k, 1, i4, 0, null);
        this.f23400k += this.f23408s;
    }

    @RequiresNonNull({"output"})
    private void l(com.google.android.exoplayer2.util.g0 g0Var) throws ParserException {
        boolean g4;
        int h4 = g0Var.h(1);
        int h10 = h4 == 1 ? g0Var.h(1) : 0;
        this.f23402m = h10;
        if (h10 == 0) {
            if (h4 == 1) {
                a(g0Var);
            }
            if (g0Var.g()) {
                this.f23403n = g0Var.h(6);
                int h11 = g0Var.h(4);
                int h12 = g0Var.h(3);
                if (h11 == 0 && h12 == 0) {
                    if (h4 == 0) {
                        int e4 = g0Var.e();
                        int h13 = h(g0Var);
                        g0Var.q(e4);
                        byte[] bArr = new byte[(h13 + 7) / 8];
                        g0Var.i(bArr, 0, h13);
                        Format E = new Format.b().S(this.f23394e).e0("audio/mp4a-latm").I(this.f23410u).H(this.f23409t).f0(this.f23407r).T(Collections.singletonList(bArr)).V(this.f23390a).E();
                        if (!E.equals(this.f23395f)) {
                            this.f23395f = E;
                            this.f23408s = 1024000000 / E.sampleRate;
                            this.f23393d.d(E);
                        }
                    } else {
                        g0Var.s(((int) a(g0Var)) - h(g0Var));
                    }
                    i(g0Var);
                    boolean g10 = g0Var.g();
                    this.f23405p = g10;
                    this.f23406q = 0L;
                    if (g10) {
                        if (h4 == 1) {
                            this.f23406q = a(g0Var);
                        } else {
                            do {
                                g4 = g0Var.g();
                                this.f23406q = (this.f23406q << 8) + g0Var.h(8);
                            } while (g4);
                        }
                    }
                    if (g0Var.g()) {
                        g0Var.s(8);
                        return;
                    }
                    return;
                }
                throw new ParserException();
            }
            throw new ParserException();
        }
        throw new ParserException();
    }

    private void m(int i4) {
        this.f23391b.O(i4);
        this.f23392c.o(this.f23391b.d());
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.k(this.f23393d);
        while (h0Var.a() > 0) {
            int i4 = this.f23396g;
            if (i4 != 0) {
                if (i4 == 1) {
                    int G = h0Var.G();
                    if ((G & 224) == 224) {
                        this.f23399j = G;
                        this.f23396g = 2;
                    } else if (G != 86) {
                        this.f23396g = 0;
                    }
                } else if (i4 == 2) {
                    int G2 = ((this.f23399j & (-225)) << 8) | h0Var.G();
                    this.f23398i = G2;
                    if (G2 > this.f23391b.d().length) {
                        m(this.f23398i);
                    }
                    this.f23397h = 0;
                    this.f23396g = 3;
                } else if (i4 == 3) {
                    int min = Math.min(h0Var.a(), this.f23398i - this.f23397h);
                    h0Var.k(this.f23392c.f27547a, this.f23397h, min);
                    int i10 = this.f23397h + min;
                    this.f23397h = i10;
                    if (i10 == this.f23398i) {
                        this.f23392c.q(0);
                        g(this.f23392c);
                        this.f23396g = 0;
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else if (h0Var.G() == 86) {
                this.f23396g = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23396g = 0;
        this.f23401l = false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23393d = mVar.f(eVar.c(), 1);
        this.f23394e = eVar.b();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23400k = j4;
    }
}
