package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.u0;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: PsExtractor.java */
/* loaded from: classes2.dex */
public final class a0 implements com.google.android.exoplayer2.extractor.k {
    public static final int A = 240;

    /* renamed from: o  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.q f22971o = z.f23469b;

    /* renamed from: p  reason: collision with root package name */
    static final int f22972p = 442;

    /* renamed from: q  reason: collision with root package name */
    static final int f22973q = 443;

    /* renamed from: r  reason: collision with root package name */
    static final int f22974r = 1;

    /* renamed from: s  reason: collision with root package name */
    static final int f22975s = 441;

    /* renamed from: t  reason: collision with root package name */
    private static final int f22976t = 256;

    /* renamed from: u  reason: collision with root package name */
    private static final long f22977u = 1048576;

    /* renamed from: v  reason: collision with root package name */
    private static final long f22978v = 8192;

    /* renamed from: w  reason: collision with root package name */
    public static final int f22979w = 189;

    /* renamed from: x  reason: collision with root package name */
    public static final int f22980x = 192;

    /* renamed from: y  reason: collision with root package name */
    public static final int f22981y = 224;

    /* renamed from: z  reason: collision with root package name */
    public static final int f22982z = 224;

    /* renamed from: d  reason: collision with root package name */
    private final u0 f22983d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<a> f22984e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f22985f;

    /* renamed from: g  reason: collision with root package name */
    private final y f22986g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f22987h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22988i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22989j;

    /* renamed from: k  reason: collision with root package name */
    private long f22990k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private x f22991l;

    /* renamed from: m  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.m f22992m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f22993n;

    /* compiled from: PsExtractor.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: i  reason: collision with root package name */
        private static final int f22994i = 64;

        /* renamed from: a  reason: collision with root package name */
        private final m f22995a;

        /* renamed from: b  reason: collision with root package name */
        private final u0 f22996b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.g0 f22997c = new com.google.android.exoplayer2.util.g0(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        private boolean f22998d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f22999e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f23000f;

        /* renamed from: g  reason: collision with root package name */
        private int f23001g;

        /* renamed from: h  reason: collision with root package name */
        private long f23002h;

        public a(m mVar, u0 u0Var) {
            this.f22995a = mVar;
            this.f22996b = u0Var;
        }

        private void b() {
            this.f22997c.s(8);
            this.f22998d = this.f22997c.g();
            this.f22999e = this.f22997c.g();
            this.f22997c.s(6);
            this.f23001g = this.f22997c.h(8);
        }

        private void c() {
            this.f23002h = 0L;
            if (this.f22998d) {
                this.f22997c.s(4);
                this.f22997c.s(1);
                this.f22997c.s(1);
                long h4 = (this.f22997c.h(3) << 30) | (this.f22997c.h(15) << 15) | this.f22997c.h(15);
                this.f22997c.s(1);
                if (!this.f23000f && this.f22999e) {
                    this.f22997c.s(4);
                    this.f22997c.s(1);
                    this.f22997c.s(1);
                    this.f22997c.s(1);
                    this.f22996b.b((this.f22997c.h(3) << 30) | (this.f22997c.h(15) << 15) | this.f22997c.h(15));
                    this.f23000f = true;
                }
                this.f23002h = this.f22996b.b(h4);
            }
        }

        public void a(com.google.android.exoplayer2.util.h0 h0Var) throws ParserException {
            h0Var.k(this.f22997c.f27547a, 0, 3);
            this.f22997c.q(0);
            b();
            h0Var.k(this.f22997c.f27547a, 0, this.f23001g);
            this.f22997c.q(0);
            c();
            this.f22995a.f(this.f23002h, 4);
            this.f22995a.b(h0Var);
            this.f22995a.e();
        }

        public void d() {
            this.f23000f = false;
            this.f22995a.c();
        }
    }

    public a0() {
        this(new u0(0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.k[] f() {
        return new com.google.android.exoplayer2.extractor.k[]{new a0()};
    }

    @RequiresNonNull({"output"})
    private void g(long j4) {
        if (this.f22993n) {
            return;
        }
        this.f22993n = true;
        if (this.f22986g.c() != com.google.android.exoplayer2.i.f23649b) {
            x xVar = new x(this.f22986g.d(), this.f22986g.c(), j4);
            this.f22991l = xVar;
            this.f22992m.q(xVar.b());
            return;
        }
        this.f22992m.q(new b0.b(this.f22986g.c()));
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        if ((this.f22983d.e() == com.google.android.exoplayer2.i.f23649b) || (this.f22983d.c() != 0 && this.f22983d.c() != j10)) {
            this.f22983d.g(j10);
        }
        x xVar = this.f22991l;
        if (xVar != null) {
            xVar.h(j10);
        }
        for (int i4 = 0; i4 < this.f22984e.size(); i4++) {
            this.f22984e.valueAt(i4).d();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        byte[] bArr = new byte[14];
        lVar.s(bArr, 0, 14);
        if (f22972p == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            lVar.k(bArr[13] & 7);
            lVar.s(bArr, 0, 3);
            return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        com.google.android.exoplayer2.util.a.k(this.f22992m);
        long length = lVar.getLength();
        int i4 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if ((i4 != 0) && !this.f22986g.e()) {
            return this.f22986g.g(lVar, zVar);
        }
        g(length);
        x xVar = this.f22991l;
        if (xVar != null && xVar.d()) {
            return this.f22991l.c(lVar, zVar);
        }
        lVar.h();
        long j4 = i4 != 0 ? length - lVar.j() : -1L;
        if ((j4 == -1 || j4 >= 4) && lVar.g(this.f22985f.d(), 0, 4, true)) {
            this.f22985f.S(0);
            int o9 = this.f22985f.o();
            if (o9 == f22975s) {
                return -1;
            }
            if (o9 == f22972p) {
                lVar.s(this.f22985f.d(), 0, 10);
                this.f22985f.S(9);
                lVar.o((this.f22985f.G() & 7) + 14);
                return 0;
            } else if (o9 == f22973q) {
                lVar.s(this.f22985f.d(), 0, 2);
                this.f22985f.S(0);
                lVar.o(this.f22985f.M() + 6);
                return 0;
            } else if (((o9 & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
                lVar.o(1);
                return 0;
            } else {
                int i10 = o9 & 255;
                a aVar = this.f22984e.get(i10);
                if (!this.f22987h) {
                    if (aVar == null) {
                        m mVar = null;
                        if (i10 == 189) {
                            mVar = new c();
                            this.f22988i = true;
                            this.f22990k = lVar.getPosition();
                        } else if ((i10 & 224) == 192) {
                            mVar = new t();
                            this.f22988i = true;
                            this.f22990k = lVar.getPosition();
                        } else if ((i10 & A) == 224) {
                            mVar = new n();
                            this.f22989j = true;
                            this.f22990k = lVar.getPosition();
                        }
                        if (mVar != null) {
                            mVar.d(this.f22992m, new i0.e(i10, 256));
                            aVar = new a(mVar, this.f22983d);
                            this.f22984e.put(i10, aVar);
                        }
                    }
                    if (lVar.getPosition() > ((this.f22988i && this.f22989j) ? this.f22990k + 8192 : 1048576L)) {
                        this.f22987h = true;
                        this.f22992m.t();
                    }
                }
                lVar.s(this.f22985f.d(), 0, 2);
                this.f22985f.S(0);
                int M = this.f22985f.M() + 6;
                if (aVar == null) {
                    lVar.o(M);
                } else {
                    this.f22985f.O(M);
                    lVar.readFully(this.f22985f.d(), 0, M);
                    this.f22985f.S(6);
                    aVar.a(this.f22985f);
                    com.google.android.exoplayer2.util.h0 h0Var = this.f22985f;
                    h0Var.R(h0Var.b());
                }
                return 0;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(com.google.android.exoplayer2.extractor.m mVar) {
        this.f22992m = mVar;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }

    public a0(u0 u0Var) {
        this.f22983d = u0Var;
        this.f22985f = new com.google.android.exoplayer2.util.h0(4096);
        this.f22984e = new SparseArray<>();
        this.f22986g = new y();
    }
}
