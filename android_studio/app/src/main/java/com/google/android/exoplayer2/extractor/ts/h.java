package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.ts.i0;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: AdtsExtractor.java */
/* loaded from: classes2.dex */
public final class h implements com.google.android.exoplayer2.extractor.k {

    /* renamed from: p  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.q f23078p = g.f23076b;

    /* renamed from: q  reason: collision with root package name */
    public static final int f23079q = 1;

    /* renamed from: r  reason: collision with root package name */
    private static final int f23080r = 2048;

    /* renamed from: s  reason: collision with root package name */
    private static final int f23081s = 8192;

    /* renamed from: t  reason: collision with root package name */
    private static final int f23082t = 1000;

    /* renamed from: d  reason: collision with root package name */
    private final int f23083d;

    /* renamed from: e  reason: collision with root package name */
    private final i f23084e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23085f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23086g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g0 f23087h;

    /* renamed from: i  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.m f23088i;

    /* renamed from: j  reason: collision with root package name */
    private long f23089j;

    /* renamed from: k  reason: collision with root package name */
    private long f23090k;

    /* renamed from: l  reason: collision with root package name */
    private int f23091l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f23092m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f23093n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f23094o;

    /* compiled from: AdtsExtractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public h() {
        this(0);
    }

    private void f(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        int h4;
        if (this.f23092m) {
            return;
        }
        this.f23091l = -1;
        lVar.h();
        long j4 = 0;
        if (lVar.getPosition() == 0) {
            k(lVar);
        }
        int i4 = 0;
        int i10 = 0;
        do {
            try {
                if (!lVar.g(this.f23086g.d(), 0, 2, true)) {
                    break;
                }
                this.f23086g.S(0);
                if (!i.m(this.f23086g.M())) {
                    break;
                } else if (!lVar.g(this.f23086g.d(), 0, 4, true)) {
                    break;
                } else {
                    this.f23087h.q(14);
                    h4 = this.f23087h.h(13);
                    if (h4 <= 6) {
                        this.f23092m = true;
                        throw new ParserException("Malformed ADTS stream");
                    }
                    j4 += h4;
                    i10++;
                    if (i10 == 1000) {
                        break;
                    }
                }
            } catch (EOFException unused) {
            }
        } while (lVar.q(h4 - 6, true));
        i4 = i10;
        lVar.h();
        if (i4 > 0) {
            this.f23091l = (int) (j4 / i4);
        } else {
            this.f23091l = -1;
        }
        this.f23092m = true;
    }

    private static int g(int i4, long j4) {
        return (int) (((i4 * 8) * 1000000) / j4);
    }

    private com.google.android.exoplayer2.extractor.b0 h(long j4) {
        return new com.google.android.exoplayer2.extractor.f(j4, this.f23090k, g(this.f23091l, this.f23084e.k()), this.f23091l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.k[] i() {
        return new com.google.android.exoplayer2.extractor.k[]{new h()};
    }

    @RequiresNonNull({"extractorOutput"})
    private void j(long j4, boolean z9, boolean z10) {
        if (this.f23094o) {
            return;
        }
        boolean z11 = z9 && this.f23091l > 0;
        if (z11 && this.f23084e.k() == com.google.android.exoplayer2.i.f23649b && !z10) {
            return;
        }
        if (z11 && this.f23084e.k() != com.google.android.exoplayer2.i.f23649b) {
            this.f23088i.q(h(j4));
        } else {
            this.f23088i.q(new b0.b(com.google.android.exoplayer2.i.f23649b));
        }
        this.f23094o = true;
    }

    private int k(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        int i4 = 0;
        while (true) {
            lVar.s(this.f23086g.d(), 0, 10);
            this.f23086g.S(0);
            if (this.f23086g.J() != 4801587) {
                break;
            }
            this.f23086g.T(3);
            int F = this.f23086g.F();
            i4 += F + 10;
            lVar.k(F);
        }
        lVar.h();
        lVar.k(i4);
        if (this.f23090k == -1) {
            this.f23090k = i4;
        }
        return i4;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        this.f23093n = false;
        this.f23084e.c();
        this.f23089j = j10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
        r9.h();
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002c, code lost:
        if ((r3 - r0) < 8192) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002e, code lost:
        return false;
     */
    @Override // com.google.android.exoplayer2.extractor.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(com.google.android.exoplayer2.extractor.l r9) throws java.io.IOException {
        /*
            r8 = this;
            int r0 = r8.k(r9)
            r1 = 0
            r3 = r0
        L6:
            r2 = 0
            r4 = 0
        L8:
            com.google.android.exoplayer2.util.h0 r5 = r8.f23086g
            byte[] r5 = r5.d()
            r6 = 2
            r9.s(r5, r1, r6)
            com.google.android.exoplayer2.util.h0 r5 = r8.f23086g
            r5.S(r1)
            com.google.android.exoplayer2.util.h0 r5 = r8.f23086g
            int r5 = r5.M()
            boolean r5 = com.google.android.exoplayer2.extractor.ts.i.m(r5)
            if (r5 != 0) goto L33
            r9.h()
            int r3 = r3 + 1
            int r2 = r3 - r0
            r4 = 8192(0x2000, float:1.14794E-41)
            if (r2 < r4) goto L2f
            return r1
        L2f:
            r9.k(r3)
            goto L6
        L33:
            r5 = 1
            int r2 = r2 + r5
            r6 = 4
            if (r2 < r6) goto L3d
            r7 = 188(0xbc, float:2.63E-43)
            if (r4 <= r7) goto L3d
            return r5
        L3d:
            com.google.android.exoplayer2.util.h0 r5 = r8.f23086g
            byte[] r5 = r5.d()
            r9.s(r5, r1, r6)
            com.google.android.exoplayer2.util.g0 r5 = r8.f23087h
            r6 = 14
            r5.q(r6)
            com.google.android.exoplayer2.util.g0 r5 = r8.f23087h
            r6 = 13
            int r5 = r5.h(r6)
            r6 = 6
            if (r5 > r6) goto L59
            return r1
        L59:
            int r6 = r5 + (-6)
            r9.k(r6)
            int r4 = r4 + r5
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.h.b(com.google.android.exoplayer2.extractor.l):boolean");
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        com.google.android.exoplayer2.util.a.k(this.f23088i);
        long length = lVar.getLength();
        boolean z9 = ((this.f23083d & 1) == 0 || length == -1) ? false : true;
        if (z9) {
            f(lVar);
        }
        int read = lVar.read(this.f23085f.d(), 0, 2048);
        boolean z10 = read == -1;
        j(length, z9, z10);
        if (z10) {
            return -1;
        }
        this.f23085f.S(0);
        this.f23085f.R(read);
        if (!this.f23093n) {
            this.f23084e.f(this.f23089j, 4);
            this.f23093n = true;
        }
        this.f23084e.b(this.f23085f);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(com.google.android.exoplayer2.extractor.m mVar) {
        this.f23088i = mVar;
        this.f23084e.d(mVar, new i0.e(0, 1));
        mVar.t();
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }

    public h(int i4) {
        this.f23083d = i4;
        this.f23084e = new i(true);
        this.f23085f = new com.google.android.exoplayer2.util.h0(2048);
        this.f23091l = -1;
        this.f23090k = -1L;
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(10);
        this.f23086g = h0Var;
        this.f23087h = new com.google.android.exoplayer2.util.g0(h0Var.d());
    }
}
