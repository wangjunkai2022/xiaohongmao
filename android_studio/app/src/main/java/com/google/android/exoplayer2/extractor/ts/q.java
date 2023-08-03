package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.z0;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: H265Reader.java */
/* loaded from: classes2.dex */
public final class q implements m {

    /* renamed from: o  reason: collision with root package name */
    private static final String f23340o = "H265Reader";

    /* renamed from: p  reason: collision with root package name */
    private static final int f23341p = 9;

    /* renamed from: q  reason: collision with root package name */
    private static final int f23342q = 16;

    /* renamed from: r  reason: collision with root package name */
    private static final int f23343r = 21;

    /* renamed from: s  reason: collision with root package name */
    private static final int f23344s = 32;

    /* renamed from: t  reason: collision with root package name */
    private static final int f23345t = 33;

    /* renamed from: u  reason: collision with root package name */
    private static final int f23346u = 34;

    /* renamed from: v  reason: collision with root package name */
    private static final int f23347v = 35;

    /* renamed from: w  reason: collision with root package name */
    private static final int f23348w = 39;

    /* renamed from: x  reason: collision with root package name */
    private static final int f23349x = 40;

    /* renamed from: a  reason: collision with root package name */
    private final d0 f23350a;

    /* renamed from: b  reason: collision with root package name */
    private String f23351b;

    /* renamed from: c  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23352c;

    /* renamed from: d  reason: collision with root package name */
    private a f23353d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23354e;

    /* renamed from: l  reason: collision with root package name */
    private long f23361l;

    /* renamed from: m  reason: collision with root package name */
    private long f23362m;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f23355f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    private final u f23356g = new u(32, 128);

    /* renamed from: h  reason: collision with root package name */
    private final u f23357h = new u(33, 128);

    /* renamed from: i  reason: collision with root package name */
    private final u f23358i = new u(34, 128);

    /* renamed from: j  reason: collision with root package name */
    private final u f23359j = new u(39, 128);

    /* renamed from: k  reason: collision with root package name */
    private final u f23360k = new u(40, 128);

    /* renamed from: n  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23363n = new com.google.android.exoplayer2.util.h0();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H265Reader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: n  reason: collision with root package name */
        private static final int f23364n = 2;

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.e0 f23365a;

        /* renamed from: b  reason: collision with root package name */
        private long f23366b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f23367c;

        /* renamed from: d  reason: collision with root package name */
        private int f23368d;

        /* renamed from: e  reason: collision with root package name */
        private long f23369e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f23370f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f23371g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f23372h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f23373i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f23374j;

        /* renamed from: k  reason: collision with root package name */
        private long f23375k;

        /* renamed from: l  reason: collision with root package name */
        private long f23376l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f23377m;

        public a(com.google.android.exoplayer2.extractor.e0 e0Var) {
            this.f23365a = e0Var;
        }

        private static boolean b(int i4) {
            return (32 <= i4 && i4 <= 35) || i4 == 39;
        }

        private static boolean c(int i4) {
            return i4 < 32 || i4 == 40;
        }

        private void d(int i4) {
            boolean z9 = this.f23377m;
            this.f23365a.e(this.f23376l, z9 ? 1 : 0, (int) (this.f23366b - this.f23375k), i4, null);
        }

        public void a(long j4, int i4, boolean z9) {
            if (this.f23374j && this.f23371g) {
                this.f23377m = this.f23367c;
                this.f23374j = false;
            } else if (this.f23372h || this.f23371g) {
                if (z9 && this.f23373i) {
                    d(i4 + ((int) (j4 - this.f23366b)));
                }
                this.f23375k = this.f23366b;
                this.f23376l = this.f23369e;
                this.f23377m = this.f23367c;
                this.f23373i = true;
            }
        }

        public void e(byte[] bArr, int i4, int i10) {
            if (this.f23370f) {
                int i11 = this.f23368d;
                int i12 = (i4 + 2) - i11;
                if (i12 < i10) {
                    this.f23371g = (bArr[i12] & 128) != 0;
                    this.f23370f = false;
                    return;
                }
                this.f23368d = i11 + (i10 - i4);
            }
        }

        public void f() {
            this.f23370f = false;
            this.f23371g = false;
            this.f23372h = false;
            this.f23373i = false;
            this.f23374j = false;
        }

        public void g(long j4, int i4, int i10, long j10, boolean z9) {
            boolean z10 = false;
            this.f23371g = false;
            this.f23372h = false;
            this.f23369e = j10;
            this.f23368d = 0;
            this.f23366b = j4;
            if (!c(i10)) {
                if (this.f23373i && !this.f23374j) {
                    if (z9) {
                        d(i4);
                    }
                    this.f23373i = false;
                }
                if (b(i10)) {
                    this.f23372h = !this.f23374j;
                    this.f23374j = true;
                }
            }
            boolean z11 = i10 >= 16 && i10 <= 21;
            this.f23367c = z11;
            this.f23370f = (z11 || i10 <= 9) ? true : true;
        }
    }

    public q(d0 d0Var) {
        this.f23350a = d0Var;
    }

    @EnsuresNonNull({"output", "sampleReader"})
    private void a() {
        com.google.android.exoplayer2.util.a.k(this.f23352c);
        z0.k(this.f23353d);
    }

    @RequiresNonNull({"output", "sampleReader"})
    private void g(long j4, int i4, int i10, long j10) {
        this.f23353d.a(j4, i4, this.f23354e);
        if (!this.f23354e) {
            this.f23356g.b(i10);
            this.f23357h.b(i10);
            this.f23358i.b(i10);
            if (this.f23356g.c() && this.f23357h.c() && this.f23358i.c()) {
                this.f23352c.d(i(this.f23351b, this.f23356g, this.f23357h, this.f23358i));
                this.f23354e = true;
            }
        }
        if (this.f23359j.b(i10)) {
            u uVar = this.f23359j;
            this.f23363n.Q(this.f23359j.f23430d, com.google.android.exoplayer2.util.b0.k(uVar.f23430d, uVar.f23431e));
            this.f23363n.T(5);
            this.f23350a.a(j10, this.f23363n);
        }
        if (this.f23360k.b(i10)) {
            u uVar2 = this.f23360k;
            this.f23363n.Q(this.f23360k.f23430d, com.google.android.exoplayer2.util.b0.k(uVar2.f23430d, uVar2.f23431e));
            this.f23363n.T(5);
            this.f23350a.a(j10, this.f23363n);
        }
    }

    @RequiresNonNull({"sampleReader"})
    private void h(byte[] bArr, int i4, int i10) {
        this.f23353d.e(bArr, i4, i10);
        if (!this.f23354e) {
            this.f23356g.a(bArr, i4, i10);
            this.f23357h.a(bArr, i4, i10);
            this.f23358i.a(bArr, i4, i10);
        }
        this.f23359j.a(bArr, i4, i10);
        this.f23360k.a(bArr, i4, i10);
    }

    private static Format i(@Nullable String str, u uVar, u uVar2, u uVar3) {
        int i4 = uVar.f23431e;
        byte[] bArr = new byte[uVar2.f23431e + i4 + uVar3.f23431e];
        System.arraycopy(uVar.f23430d, 0, bArr, 0, i4);
        System.arraycopy(uVar2.f23430d, 0, bArr, uVar.f23431e, uVar2.f23431e);
        System.arraycopy(uVar3.f23430d, 0, bArr, uVar.f23431e + uVar2.f23431e, uVar3.f23431e);
        com.google.android.exoplayer2.util.i0 i0Var = new com.google.android.exoplayer2.util.i0(uVar2.f23430d, 0, uVar2.f23431e);
        i0Var.l(44);
        int e4 = i0Var.e(3);
        i0Var.k();
        i0Var.l(88);
        i0Var.l(8);
        int i10 = 0;
        for (int i11 = 0; i11 < e4; i11++) {
            if (i0Var.d()) {
                i10 += 89;
            }
            if (i0Var.d()) {
                i10 += 8;
            }
        }
        i0Var.l(i10);
        if (e4 > 0) {
            i0Var.l((8 - e4) * 2);
        }
        i0Var.h();
        int h4 = i0Var.h();
        if (h4 == 3) {
            i0Var.k();
        }
        int h10 = i0Var.h();
        int h11 = i0Var.h();
        if (i0Var.d()) {
            int h12 = i0Var.h();
            int h13 = i0Var.h();
            int h14 = i0Var.h();
            int h15 = i0Var.h();
            h10 -= ((h4 == 1 || h4 == 2) ? 2 : 1) * (h12 + h13);
            h11 -= (h4 == 1 ? 2 : 1) * (h14 + h15);
        }
        i0Var.h();
        i0Var.h();
        int h16 = i0Var.h();
        for (int i12 = i0Var.d() ? 0 : e4; i12 <= e4; i12++) {
            i0Var.h();
            i0Var.h();
            i0Var.h();
        }
        i0Var.h();
        i0Var.h();
        i0Var.h();
        i0Var.h();
        i0Var.h();
        i0Var.h();
        if (i0Var.d() && i0Var.d()) {
            j(i0Var);
        }
        i0Var.l(2);
        if (i0Var.d()) {
            i0Var.l(8);
            i0Var.h();
            i0Var.h();
            i0Var.k();
        }
        k(i0Var);
        if (i0Var.d()) {
            for (int i13 = 0; i13 < i0Var.h(); i13++) {
                i0Var.l(h16 + 4 + 1);
            }
        }
        i0Var.l(2);
        float f10 = 1.0f;
        if (i0Var.d()) {
            if (i0Var.d()) {
                int e10 = i0Var.e(8);
                if (e10 == 255) {
                    int e11 = i0Var.e(16);
                    int e12 = i0Var.e(16);
                    if (e11 != 0 && e12 != 0) {
                        f10 = e11 / e12;
                    }
                } else {
                    float[] fArr = com.google.android.exoplayer2.util.b0.f27496d;
                    if (e10 < fArr.length) {
                        f10 = fArr[e10];
                    } else {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append("Unexpected aspect_ratio_idc value: ");
                        sb.append(e10);
                        com.google.android.exoplayer2.util.w.n(f23340o, sb.toString());
                    }
                }
            }
            if (i0Var.d()) {
                i0Var.k();
            }
            if (i0Var.d()) {
                i0Var.l(4);
                if (i0Var.d()) {
                    i0Var.l(24);
                }
            }
            if (i0Var.d()) {
                i0Var.h();
                i0Var.h();
            }
            i0Var.k();
            if (i0Var.d()) {
                h11 *= 2;
            }
        }
        i0Var.i(uVar2.f23430d, 0, uVar2.f23431e);
        i0Var.l(24);
        return new Format.b().S(str).e0(com.google.android.exoplayer2.util.a0.f27451k).I(com.google.android.exoplayer2.util.e.c(i0Var)).j0(h10).Q(h11).a0(f10).T(Collections.singletonList(bArr)).E();
    }

    private static void j(com.google.android.exoplayer2.util.i0 i0Var) {
        for (int i4 = 0; i4 < 4; i4++) {
            int i10 = 0;
            while (i10 < 6) {
                int i11 = 1;
                if (!i0Var.d()) {
                    i0Var.h();
                } else {
                    int min = Math.min(64, 1 << ((i4 << 1) + 4));
                    if (i4 > 1) {
                        i0Var.g();
                    }
                    for (int i12 = 0; i12 < min; i12++) {
                        i0Var.g();
                    }
                }
                if (i4 == 3) {
                    i11 = 3;
                }
                i10 += i11;
            }
        }
    }

    private static void k(com.google.android.exoplayer2.util.i0 i0Var) {
        int h4 = i0Var.h();
        boolean z9 = false;
        int i4 = 0;
        for (int i10 = 0; i10 < h4; i10++) {
            if (i10 != 0) {
                z9 = i0Var.d();
            }
            if (z9) {
                i0Var.k();
                i0Var.h();
                for (int i11 = 0; i11 <= i4; i11++) {
                    if (i0Var.d()) {
                        i0Var.k();
                    }
                }
            } else {
                int h10 = i0Var.h();
                int h11 = i0Var.h();
                int i12 = h10 + h11;
                for (int i13 = 0; i13 < h10; i13++) {
                    i0Var.h();
                    i0Var.k();
                }
                for (int i14 = 0; i14 < h11; i14++) {
                    i0Var.h();
                    i0Var.k();
                }
                i4 = i12;
            }
        }
    }

    @RequiresNonNull({"sampleReader"})
    private void l(long j4, int i4, int i10, long j10) {
        this.f23353d.g(j4, i4, i10, j10, this.f23354e);
        if (!this.f23354e) {
            this.f23356g.e(i10);
            this.f23357h.e(i10);
            this.f23358i.e(i10);
        }
        this.f23359j.e(i10);
        this.f23360k.e(i10);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        a();
        while (h0Var.a() > 0) {
            int e4 = h0Var.e();
            int f10 = h0Var.f();
            byte[] d4 = h0Var.d();
            this.f23361l += h0Var.a();
            this.f23352c.c(h0Var, h0Var.a());
            while (e4 < f10) {
                int c10 = com.google.android.exoplayer2.util.b0.c(d4, e4, f10, this.f23355f);
                if (c10 == f10) {
                    h(d4, e4, f10);
                    return;
                }
                int e10 = com.google.android.exoplayer2.util.b0.e(d4, c10);
                int i4 = c10 - e4;
                if (i4 > 0) {
                    h(d4, e4, c10);
                }
                int i10 = f10 - c10;
                long j4 = this.f23361l - i10;
                g(j4, i10, i4 < 0 ? -i4 : 0, this.f23362m);
                l(j4, i10, e10, this.f23362m);
                e4 = c10 + 3;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23361l = 0L;
        com.google.android.exoplayer2.util.b0.a(this.f23355f);
        this.f23356g.d();
        this.f23357h.d();
        this.f23358i.d();
        this.f23359j.d();
        this.f23360k.d();
        a aVar = this.f23353d;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23351b = eVar.b();
        com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 2);
        this.f23352c = f10;
        this.f23353d = new a(f10);
        this.f23350a.b(mVar, eVar);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23362m = j4;
    }
}
