package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.u0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: PesReader.java */
/* loaded from: classes2.dex */
public final class w implements i0 {

    /* renamed from: p  reason: collision with root package name */
    private static final String f23435p = "PesReader";

    /* renamed from: q  reason: collision with root package name */
    private static final int f23436q = 0;

    /* renamed from: r  reason: collision with root package name */
    private static final int f23437r = 1;

    /* renamed from: s  reason: collision with root package name */
    private static final int f23438s = 2;

    /* renamed from: t  reason: collision with root package name */
    private static final int f23439t = 3;

    /* renamed from: u  reason: collision with root package name */
    private static final int f23440u = 9;

    /* renamed from: v  reason: collision with root package name */
    private static final int f23441v = 10;

    /* renamed from: w  reason: collision with root package name */
    private static final int f23442w = 10;

    /* renamed from: d  reason: collision with root package name */
    private final m f23443d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g0 f23444e = new com.google.android.exoplayer2.util.g0(new byte[10]);

    /* renamed from: f  reason: collision with root package name */
    private int f23445f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f23446g;

    /* renamed from: h  reason: collision with root package name */
    private u0 f23447h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f23448i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23449j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f23450k;

    /* renamed from: l  reason: collision with root package name */
    private int f23451l;

    /* renamed from: m  reason: collision with root package name */
    private int f23452m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f23453n;

    /* renamed from: o  reason: collision with root package name */
    private long f23454o;

    public w(m mVar) {
        this.f23443d = mVar;
    }

    private boolean d(com.google.android.exoplayer2.util.h0 h0Var, @Nullable byte[] bArr, int i4) {
        int min = Math.min(h0Var.a(), i4 - this.f23446g);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            h0Var.T(min);
        } else {
            h0Var.k(bArr, this.f23446g, min);
        }
        int i10 = this.f23446g + min;
        this.f23446g = i10;
        return i10 == i4;
    }

    private boolean e() {
        this.f23444e.q(0);
        int h4 = this.f23444e.h(24);
        if (h4 != 1) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Unexpected start code prefix: ");
            sb.append(h4);
            com.google.android.exoplayer2.util.w.n(f23435p, sb.toString());
            this.f23452m = -1;
            return false;
        }
        this.f23444e.s(8);
        int h10 = this.f23444e.h(16);
        this.f23444e.s(5);
        this.f23453n = this.f23444e.g();
        this.f23444e.s(2);
        this.f23448i = this.f23444e.g();
        this.f23449j = this.f23444e.g();
        this.f23444e.s(6);
        int h11 = this.f23444e.h(8);
        this.f23451l = h11;
        if (h10 == 0) {
            this.f23452m = -1;
        } else {
            int i4 = ((h10 + 6) - 9) - h11;
            this.f23452m = i4;
            if (i4 < 0) {
                StringBuilder sb2 = new StringBuilder(47);
                sb2.append("Found negative packet payload size: ");
                sb2.append(i4);
                com.google.android.exoplayer2.util.w.n(f23435p, sb2.toString());
                this.f23452m = -1;
            }
        }
        return true;
    }

    @RequiresNonNull({"timestampAdjuster"})
    private void f() {
        this.f23444e.q(0);
        this.f23454o = com.google.android.exoplayer2.i.f23649b;
        if (this.f23448i) {
            this.f23444e.s(4);
            this.f23444e.s(1);
            this.f23444e.s(1);
            long h4 = (this.f23444e.h(3) << 30) | (this.f23444e.h(15) << 15) | this.f23444e.h(15);
            this.f23444e.s(1);
            if (!this.f23450k && this.f23449j) {
                this.f23444e.s(4);
                this.f23444e.s(1);
                this.f23444e.s(1);
                this.f23444e.s(1);
                this.f23447h.b((this.f23444e.h(3) << 30) | (this.f23444e.h(15) << 15) | this.f23444e.h(15));
                this.f23450k = true;
            }
            this.f23454o = this.f23447h.b(h4);
        }
    }

    private void g(int i4) {
        this.f23445f = i4;
        this.f23446g = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public void a(u0 u0Var, com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        this.f23447h = u0Var;
        this.f23443d.d(mVar, eVar);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public final void b(com.google.android.exoplayer2.util.h0 h0Var, int i4) throws ParserException {
        com.google.android.exoplayer2.util.a.k(this.f23447h);
        if ((i4 & 1) != 0) {
            int i10 = this.f23445f;
            if (i10 != 0 && i10 != 1) {
                if (i10 == 2) {
                    com.google.android.exoplayer2.util.w.n(f23435p, "Unexpected start indicator reading extended header");
                } else if (i10 == 3) {
                    int i11 = this.f23452m;
                    if (i11 != -1) {
                        StringBuilder sb = new StringBuilder(59);
                        sb.append("Unexpected start indicator: expected ");
                        sb.append(i11);
                        sb.append(" more bytes");
                        com.google.android.exoplayer2.util.w.n(f23435p, sb.toString());
                    }
                    this.f23443d.e();
                } else {
                    throw new IllegalStateException();
                }
            }
            g(1);
        }
        while (h0Var.a() > 0) {
            int i12 = this.f23445f;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        if (d(h0Var, this.f23444e.f27547a, Math.min(10, this.f23451l)) && d(h0Var, null, this.f23451l)) {
                            f();
                            i4 |= this.f23453n ? 4 : 0;
                            this.f23443d.f(this.f23454o, i4);
                            g(3);
                        }
                    } else if (i12 == 3) {
                        int a10 = h0Var.a();
                        int i13 = this.f23452m;
                        int i14 = i13 != -1 ? a10 - i13 : 0;
                        if (i14 > 0) {
                            a10 -= i14;
                            h0Var.R(h0Var.e() + a10);
                        }
                        this.f23443d.b(h0Var);
                        int i15 = this.f23452m;
                        if (i15 != -1) {
                            int i16 = i15 - a10;
                            this.f23452m = i16;
                            if (i16 == 0) {
                                this.f23443d.e();
                                g(1);
                            }
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (d(h0Var, this.f23444e.f27547a, 9)) {
                    g(e() ? 2 : 0);
                }
            } else {
                h0Var.T(h0Var.a());
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public final void c() {
        this.f23445f = 0;
        this.f23446g = 0;
        this.f23450k = false;
        this.f23443d.c();
    }
}
