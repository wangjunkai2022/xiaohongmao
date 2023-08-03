package com.google.android.exoplayer2.extractor.flac;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.s;
import com.google.android.exoplayer2.extractor.t;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: FlacExtractor.java */
/* loaded from: classes2.dex */
public final class d implements k {
    private static final int A = -1;

    /* renamed from: r  reason: collision with root package name */
    public static final q f22161r = c.f22160b;

    /* renamed from: s  reason: collision with root package name */
    public static final int f22162s = 1;

    /* renamed from: t  reason: collision with root package name */
    private static final int f22163t = 0;

    /* renamed from: u  reason: collision with root package name */
    private static final int f22164u = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final int f22165v = 2;

    /* renamed from: w  reason: collision with root package name */
    private static final int f22166w = 3;

    /* renamed from: x  reason: collision with root package name */
    private static final int f22167x = 4;

    /* renamed from: y  reason: collision with root package name */
    private static final int f22168y = 5;

    /* renamed from: z  reason: collision with root package name */
    private static final int f22169z = 32768;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f22170d;

    /* renamed from: e  reason: collision with root package name */
    private final h0 f22171e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f22172f;

    /* renamed from: g  reason: collision with root package name */
    private final r.a f22173g;

    /* renamed from: h  reason: collision with root package name */
    private m f22174h;

    /* renamed from: i  reason: collision with root package name */
    private e0 f22175i;

    /* renamed from: j  reason: collision with root package name */
    private int f22176j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Metadata f22177k;

    /* renamed from: l  reason: collision with root package name */
    private u f22178l;

    /* renamed from: m  reason: collision with root package name */
    private int f22179m;

    /* renamed from: n  reason: collision with root package name */
    private int f22180n;

    /* renamed from: o  reason: collision with root package name */
    private b f22181o;

    /* renamed from: p  reason: collision with root package name */
    private int f22182p;

    /* renamed from: q  reason: collision with root package name */
    private long f22183q;

    /* compiled from: FlacExtractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public d() {
        this(0);
    }

    private long f(h0 h0Var, boolean z9) {
        boolean z10;
        com.google.android.exoplayer2.util.a.g(this.f22178l);
        int e4 = h0Var.e();
        while (e4 <= h0Var.f() - 16) {
            h0Var.S(e4);
            if (r.d(h0Var, this.f22178l, this.f22180n, this.f22173g)) {
                h0Var.S(e4);
                return this.f22173g.f22947a;
            }
            e4++;
        }
        if (z9) {
            while (e4 <= h0Var.f() - this.f22179m) {
                h0Var.S(e4);
                try {
                    z10 = r.d(h0Var, this.f22178l, this.f22180n, this.f22173g);
                } catch (IndexOutOfBoundsException unused) {
                    z10 = false;
                }
                if (h0Var.e() <= h0Var.f() ? z10 : false) {
                    h0Var.S(e4);
                    return this.f22173g.f22947a;
                }
                e4++;
            }
            h0Var.S(h0Var.f());
            return -1L;
        }
        h0Var.S(e4);
        return -1L;
    }

    private void g(l lVar) throws IOException {
        this.f22180n = s.b(lVar);
        ((m) z0.k(this.f22174h)).q(h(lVar.getPosition(), lVar.getLength()));
        this.f22176j = 5;
    }

    private b0 h(long j4, long j10) {
        com.google.android.exoplayer2.util.a.g(this.f22178l);
        u uVar = this.f22178l;
        if (uVar.f23483k != null) {
            return new t(uVar, j4);
        }
        if (j10 != -1 && uVar.f23482j > 0) {
            b bVar = new b(uVar, this.f22180n, j4, j10);
            this.f22181o = bVar;
            return bVar.b();
        }
        return new b0.b(uVar.h());
    }

    private void i(l lVar) throws IOException {
        byte[] bArr = this.f22170d;
        lVar.s(bArr, 0, bArr.length);
        lVar.h();
        this.f22176j = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] j() {
        return new k[]{new d()};
    }

    private void k() {
        ((e0) z0.k(this.f22175i)).e((this.f22183q * 1000000) / ((u) z0.k(this.f22178l)).f23477e, 1, this.f22182p, 0, null);
    }

    private int l(l lVar, z zVar) throws IOException {
        boolean z9;
        com.google.android.exoplayer2.util.a.g(this.f22175i);
        com.google.android.exoplayer2.util.a.g(this.f22178l);
        b bVar = this.f22181o;
        if (bVar != null && bVar.d()) {
            return this.f22181o.c(lVar, zVar);
        }
        if (this.f22183q == -1) {
            this.f22183q = r.i(lVar, this.f22178l);
            return 0;
        }
        int f10 = this.f22171e.f();
        if (f10 < 32768) {
            int read = lVar.read(this.f22171e.d(), f10, 32768 - f10);
            z9 = read == -1;
            if (!z9) {
                this.f22171e.R(f10 + read);
            } else if (this.f22171e.a() == 0) {
                k();
                return -1;
            }
        } else {
            z9 = false;
        }
        int e4 = this.f22171e.e();
        int i4 = this.f22182p;
        int i10 = this.f22179m;
        if (i4 < i10) {
            h0 h0Var = this.f22171e;
            h0Var.T(Math.min(i10 - i4, h0Var.a()));
        }
        long f11 = f(this.f22171e, z9);
        int e10 = this.f22171e.e() - e4;
        this.f22171e.S(e4);
        this.f22175i.c(this.f22171e, e10);
        this.f22182p += e10;
        if (f11 != -1) {
            k();
            this.f22182p = 0;
            this.f22183q = f11;
        }
        if (this.f22171e.a() < 16) {
            int a10 = this.f22171e.a();
            System.arraycopy(this.f22171e.d(), this.f22171e.e(), this.f22171e.d(), 0, a10);
            this.f22171e.S(0);
            this.f22171e.R(a10);
        }
        return 0;
    }

    private void m(l lVar) throws IOException {
        this.f22177k = s.d(lVar, !this.f22172f);
        this.f22176j = 1;
    }

    private void n(l lVar) throws IOException {
        s.a aVar = new s.a(this.f22178l);
        boolean z9 = false;
        while (!z9) {
            z9 = s.e(lVar, aVar);
            this.f22178l = (u) z0.k(aVar.f22967a);
        }
        com.google.android.exoplayer2.util.a.g(this.f22178l);
        this.f22179m = Math.max(this.f22178l.f23475c, 6);
        ((e0) z0.k(this.f22175i)).d(this.f22178l.i(this.f22170d, this.f22177k));
        this.f22176j = 4;
    }

    private void o(l lVar) throws IOException {
        s.j(lVar);
        this.f22176j = 3;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        if (j4 == 0) {
            this.f22176j = 0;
        } else {
            b bVar = this.f22181o;
            if (bVar != null) {
                bVar.h(j10);
            }
        }
        this.f22183q = j10 != 0 ? -1L : 0L;
        this.f22182p = 0;
        this.f22171e.O(0);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(l lVar) throws IOException {
        s.c(lVar, false);
        return s.a(lVar);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(l lVar, z zVar) throws IOException {
        int i4 = this.f22176j;
        if (i4 == 0) {
            m(lVar);
            return 0;
        } else if (i4 == 1) {
            i(lVar);
            return 0;
        } else if (i4 == 2) {
            o(lVar);
            return 0;
        } else if (i4 == 3) {
            n(lVar);
            return 0;
        } else if (i4 == 4) {
            g(lVar);
            return 0;
        } else if (i4 == 5) {
            return l(lVar, zVar);
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(m mVar) {
        this.f22174h = mVar;
        this.f22175i = mVar.f(0, 1);
        mVar.t();
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }

    public d(int i4) {
        this.f22170d = new byte[42];
        this.f22171e = new h0(new byte[32768], 0);
        this.f22172f = (i4 & 1) != 0;
        this.f22173g = new r.a();
        this.f22176j = 0;
    }
}
