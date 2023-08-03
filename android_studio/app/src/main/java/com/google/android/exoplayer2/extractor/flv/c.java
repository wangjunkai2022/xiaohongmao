package com.google.android.exoplayer2.extractor.flv;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: FlvExtractor.java */
/* loaded from: classes2.dex */
public final class c implements k {
    private static final int A = 8;
    private static final int B = 9;
    private static final int C = 18;
    private static final int D = 4607062;

    /* renamed from: t  reason: collision with root package name */
    public static final q f22196t = b.f22195b;

    /* renamed from: u  reason: collision with root package name */
    private static final int f22197u = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final int f22198v = 2;

    /* renamed from: w  reason: collision with root package name */
    private static final int f22199w = 3;

    /* renamed from: x  reason: collision with root package name */
    private static final int f22200x = 4;

    /* renamed from: y  reason: collision with root package name */
    private static final int f22201y = 9;

    /* renamed from: z  reason: collision with root package name */
    private static final int f22202z = 11;

    /* renamed from: i  reason: collision with root package name */
    private m f22208i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f22210k;

    /* renamed from: l  reason: collision with root package name */
    private long f22211l;

    /* renamed from: m  reason: collision with root package name */
    private int f22212m;

    /* renamed from: n  reason: collision with root package name */
    private int f22213n;

    /* renamed from: o  reason: collision with root package name */
    private int f22214o;

    /* renamed from: p  reason: collision with root package name */
    private long f22215p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f22216q;

    /* renamed from: r  reason: collision with root package name */
    private a f22217r;

    /* renamed from: s  reason: collision with root package name */
    private e f22218s;

    /* renamed from: d  reason: collision with root package name */
    private final h0 f22203d = new h0(4);

    /* renamed from: e  reason: collision with root package name */
    private final h0 f22204e = new h0(9);

    /* renamed from: f  reason: collision with root package name */
    private final h0 f22205f = new h0(11);

    /* renamed from: g  reason: collision with root package name */
    private final h0 f22206g = new h0();

    /* renamed from: h  reason: collision with root package name */
    private final d f22207h = new d();

    /* renamed from: j  reason: collision with root package name */
    private int f22209j = 1;

    @RequiresNonNull({"extractorOutput"})
    private void f() {
        if (this.f22216q) {
            return;
        }
        this.f22208i.q(new b0.b(i.f23649b));
        this.f22216q = true;
    }

    private long g() {
        if (this.f22210k) {
            return this.f22211l + this.f22215p;
        }
        if (this.f22207h.e() == i.f23649b) {
            return 0L;
        }
        return this.f22215p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] h() {
        return new k[]{new c()};
    }

    private h0 i(l lVar) throws IOException {
        if (this.f22214o > this.f22206g.b()) {
            h0 h0Var = this.f22206g;
            h0Var.Q(new byte[Math.max(h0Var.b() * 2, this.f22214o)], 0);
        } else {
            this.f22206g.S(0);
        }
        this.f22206g.R(this.f22214o);
        lVar.readFully(this.f22206g.d(), 0, this.f22214o);
        return this.f22206g;
    }

    @RequiresNonNull({"extractorOutput"})
    private boolean j(l lVar) throws IOException {
        if (lVar.i(this.f22204e.d(), 0, 9, true)) {
            this.f22204e.S(0);
            this.f22204e.T(4);
            int G = this.f22204e.G();
            boolean z9 = (G & 4) != 0;
            boolean z10 = (G & 1) != 0;
            if (z9 && this.f22217r == null) {
                this.f22217r = new a(this.f22208i.f(8, 1));
            }
            if (z10 && this.f22218s == null) {
                this.f22218s = new e(this.f22208i.f(9, 2));
            }
            this.f22208i.t();
            this.f22212m = (this.f22204e.o() - 9) + 4;
            this.f22209j = 2;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean k(com.google.android.exoplayer2.extractor.l r10) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.g()
            int r2 = r9.f22213n
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = 0
            r6 = 1
            r7 = 8
            if (r2 != r7) goto L24
            com.google.android.exoplayer2.extractor.flv.a r7 = r9.f22217r
            if (r7 == 0) goto L24
            r9.f()
            com.google.android.exoplayer2.extractor.flv.a r2 = r9.f22217r
            com.google.android.exoplayer2.util.h0 r10 = r9.i(r10)
            boolean r5 = r2.a(r10, r0)
        L22:
            r10 = 1
            goto L75
        L24:
            r7 = 9
            if (r2 != r7) goto L3a
            com.google.android.exoplayer2.extractor.flv.e r7 = r9.f22218s
            if (r7 == 0) goto L3a
            r9.f()
            com.google.android.exoplayer2.extractor.flv.e r2 = r9.f22218s
            com.google.android.exoplayer2.util.h0 r10 = r9.i(r10)
            boolean r5 = r2.a(r10, r0)
            goto L22
        L3a:
            r7 = 18
            if (r2 != r7) goto L6f
            boolean r2 = r9.f22216q
            if (r2 != 0) goto L6f
            com.google.android.exoplayer2.extractor.flv.d r2 = r9.f22207h
            com.google.android.exoplayer2.util.h0 r10 = r9.i(r10)
            boolean r5 = r2.a(r10, r0)
            com.google.android.exoplayer2.extractor.flv.d r10 = r9.f22207h
            long r0 = r10.e()
            int r10 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r10 == 0) goto L22
            com.google.android.exoplayer2.extractor.m r10 = r9.f22208i
            com.google.android.exoplayer2.extractor.y r2 = new com.google.android.exoplayer2.extractor.y
            com.google.android.exoplayer2.extractor.flv.d r7 = r9.f22207h
            long[] r7 = r7.f()
            com.google.android.exoplayer2.extractor.flv.d r8 = r9.f22207h
            long[] r8 = r8.g()
            r2.<init>(r7, r8, r0)
            r10.q(r2)
            r9.f22216q = r6
            goto L22
        L6f:
            int r0 = r9.f22214o
            r10.o(r0)
            r10 = 0
        L75:
            boolean r0 = r9.f22210k
            if (r0 != 0) goto L8f
            if (r5 == 0) goto L8f
            r9.f22210k = r6
            com.google.android.exoplayer2.extractor.flv.d r0 = r9.f22207h
            long r0 = r0.e()
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 != 0) goto L8b
            long r0 = r9.f22215p
            long r0 = -r0
            goto L8d
        L8b:
            r0 = 0
        L8d:
            r9.f22211l = r0
        L8f:
            r0 = 4
            r9.f22212m = r0
            r0 = 2
            r9.f22209j = r0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.flv.c.k(com.google.android.exoplayer2.extractor.l):boolean");
    }

    private boolean l(l lVar) throws IOException {
        if (lVar.i(this.f22205f.d(), 0, 11, true)) {
            this.f22205f.S(0);
            this.f22213n = this.f22205f.G();
            this.f22214o = this.f22205f.J();
            this.f22215p = this.f22205f.J();
            this.f22215p = ((this.f22205f.G() << 24) | this.f22215p) * 1000;
            this.f22205f.T(3);
            this.f22209j = 4;
            return true;
        }
        return false;
    }

    private void m(l lVar) throws IOException {
        lVar.o(this.f22212m);
        this.f22212m = 0;
        this.f22209j = 3;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        if (j4 == 0) {
            this.f22209j = 1;
            this.f22210k = false;
        } else {
            this.f22209j = 3;
        }
        this.f22212m = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(l lVar) throws IOException {
        lVar.s(this.f22203d.d(), 0, 3);
        this.f22203d.S(0);
        if (this.f22203d.J() != D) {
            return false;
        }
        lVar.s(this.f22203d.d(), 0, 2);
        this.f22203d.S(0);
        if ((this.f22203d.M() & ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) != 0) {
            return false;
        }
        lVar.s(this.f22203d.d(), 0, 4);
        this.f22203d.S(0);
        int o9 = this.f22203d.o();
        lVar.h();
        lVar.k(o9);
        lVar.s(this.f22203d.d(), 0, 4);
        this.f22203d.S(0);
        return this.f22203d.o() == 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(l lVar, z zVar) throws IOException {
        com.google.android.exoplayer2.util.a.k(this.f22208i);
        while (true) {
            int i4 = this.f22209j;
            if (i4 != 1) {
                if (i4 == 2) {
                    m(lVar);
                } else if (i4 != 3) {
                    if (i4 == 4) {
                        if (k(lVar)) {
                            return 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (!l(lVar)) {
                    return -1;
                }
            } else if (!j(lVar)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(m mVar) {
        this.f22208i = mVar;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }
}
