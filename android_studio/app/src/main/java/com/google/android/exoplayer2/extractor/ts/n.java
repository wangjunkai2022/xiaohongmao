package com.google.android.exoplayer2.extractor.ts;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;

/* compiled from: H262Reader.java */
/* loaded from: classes2.dex */
public final class n implements m {

    /* renamed from: q  reason: collision with root package name */
    private static final int f23212q = 0;

    /* renamed from: r  reason: collision with root package name */
    private static final int f23213r = 179;

    /* renamed from: s  reason: collision with root package name */
    private static final int f23214s = 181;

    /* renamed from: t  reason: collision with root package name */
    private static final int f23215t = 184;

    /* renamed from: u  reason: collision with root package name */
    private static final int f23216u = 178;

    /* renamed from: v  reason: collision with root package name */
    private static final double[] f23217v = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f23218a;

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23219b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final k0 f23220c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23221d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final u f23222e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f23223f;

    /* renamed from: g  reason: collision with root package name */
    private final a f23224g;

    /* renamed from: h  reason: collision with root package name */
    private long f23225h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f23226i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23227j;

    /* renamed from: k  reason: collision with root package name */
    private long f23228k;

    /* renamed from: l  reason: collision with root package name */
    private long f23229l;

    /* renamed from: m  reason: collision with root package name */
    private long f23230m;

    /* renamed from: n  reason: collision with root package name */
    private long f23231n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f23232o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f23233p;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H262Reader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        private static final byte[] f23234e = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f23235a;

        /* renamed from: b  reason: collision with root package name */
        public int f23236b;

        /* renamed from: c  reason: collision with root package name */
        public int f23237c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f23238d;

        public a(int i4) {
            this.f23238d = new byte[i4];
        }

        public void a(byte[] bArr, int i4, int i10) {
            if (this.f23235a) {
                int i11 = i10 - i4;
                byte[] bArr2 = this.f23238d;
                int length = bArr2.length;
                int i12 = this.f23236b;
                if (length < i12 + i11) {
                    this.f23238d = Arrays.copyOf(bArr2, (i12 + i11) * 2);
                }
                System.arraycopy(bArr, i4, this.f23238d, this.f23236b, i11);
                this.f23236b += i11;
            }
        }

        public boolean b(int i4, int i10) {
            if (this.f23235a) {
                int i11 = this.f23236b - i10;
                this.f23236b = i11;
                if (this.f23237c == 0 && i4 == n.f23214s) {
                    this.f23237c = i11;
                } else {
                    this.f23235a = false;
                    return true;
                }
            } else if (i4 == n.f23213r) {
                this.f23235a = true;
            }
            byte[] bArr = f23234e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f23235a = false;
            this.f23236b = 0;
            this.f23237c = 0;
        }
    }

    public n() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.util.Pair<com.google.android.exoplayer2.Format, java.lang.Long> a(com.google.android.exoplayer2.extractor.ts.n.a r8, java.lang.String r9) {
        /*
            byte[] r0 = r8.f23238d
            int r1 = r8.f23236b
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r1 = 4
            r2 = r0[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 5
            r4 = r0[r3]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = 6
            r5 = r0[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r1
            int r6 = r4 >> 4
            r2 = r2 | r6
            r4 = r4 & 15
            int r4 = r4 << 8
            r4 = r4 | r5
            r5 = 7
            r6 = r0[r5]
            r6 = r6 & 240(0xf0, float:3.36E-43)
            int r6 = r6 >> r1
            r7 = 2
            if (r6 == r7) goto L3d
            r7 = 3
            if (r6 == r7) goto L37
            if (r6 == r1) goto L31
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L44
        L31:
            int r1 = r4 * 121
            float r1 = (float) r1
            int r6 = r2 * 100
            goto L42
        L37:
            int r1 = r4 * 16
            float r1 = (float) r1
            int r6 = r2 * 9
            goto L42
        L3d:
            int r1 = r4 * 4
            float r1 = (float) r1
            int r6 = r2 * 3
        L42:
            float r6 = (float) r6
            float r1 = r1 / r6
        L44:
            com.google.android.exoplayer2.Format$b r6 = new com.google.android.exoplayer2.Format$b
            r6.<init>()
            com.google.android.exoplayer2.Format$b r9 = r6.S(r9)
            java.lang.String r6 = "video/mpeg2"
            com.google.android.exoplayer2.Format$b r9 = r9.e0(r6)
            com.google.android.exoplayer2.Format$b r9 = r9.j0(r2)
            com.google.android.exoplayer2.Format$b r9 = r9.Q(r4)
            com.google.android.exoplayer2.Format$b r9 = r9.a0(r1)
            java.util.List r1 = java.util.Collections.singletonList(r0)
            com.google.android.exoplayer2.Format$b r9 = r9.T(r1)
            com.google.android.exoplayer2.Format r9 = r9.E()
            r1 = 0
            r4 = r0[r5]
            r4 = r4 & 15
            int r4 = r4 + (-1)
            if (r4 < 0) goto L9d
            double[] r5 = com.google.android.exoplayer2.extractor.ts.n.f23217v
            int r6 = r5.length
            if (r4 >= r6) goto L9d
            r1 = r5[r4]
            int r8 = r8.f23237c
            int r8 = r8 + 9
            r4 = r0[r8]
            r4 = r4 & 96
            int r3 = r4 >> 5
            r8 = r0[r8]
            r8 = r8 & 31
            if (r3 == r8) goto L96
            double r3 = (double) r3
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 + r5
            int r8 = r8 + 1
            double r5 = (double) r8
            double r3 = r3 / r5
            double r1 = r1 * r3
        L96:
            r3 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r3 = r3 / r1
            long r1 = (long) r3
        L9d:
            java.lang.Long r8 = java.lang.Long.valueOf(r1)
            android.util.Pair r8 = android.util.Pair.create(r9, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.n.a(com.google.android.exoplayer2.extractor.ts.n$a, java.lang.String):android.util.Pair");
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        int i4;
        com.google.android.exoplayer2.util.a.k(this.f23219b);
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        byte[] d4 = h0Var.d();
        this.f23225h += h0Var.a();
        this.f23219b.c(h0Var, h0Var.a());
        while (true) {
            int c10 = com.google.android.exoplayer2.util.b0.c(d4, e4, f10, this.f23223f);
            if (c10 == f10) {
                break;
            }
            int i10 = c10 + 3;
            int i11 = h0Var.d()[i10] & 255;
            int i12 = c10 - e4;
            if (!this.f23227j) {
                if (i12 > 0) {
                    this.f23224g.a(d4, e4, c10);
                }
                if (this.f23224g.b(i11, i12 < 0 ? -i12 : 0)) {
                    Pair<Format, Long> a10 = a(this.f23224g, (String) com.google.android.exoplayer2.util.a.g(this.f23218a));
                    this.f23219b.d((Format) a10.first);
                    this.f23228k = ((Long) a10.second).longValue();
                    this.f23227j = true;
                }
            }
            u uVar = this.f23222e;
            if (uVar != null) {
                if (i12 > 0) {
                    uVar.a(d4, e4, c10);
                    i4 = 0;
                } else {
                    i4 = -i12;
                }
                if (this.f23222e.b(i4)) {
                    u uVar2 = this.f23222e;
                    ((com.google.android.exoplayer2.util.h0) z0.k(this.f23221d)).Q(this.f23222e.f23430d, com.google.android.exoplayer2.util.b0.k(uVar2.f23430d, uVar2.f23431e));
                    ((k0) z0.k(this.f23220c)).a(this.f23231n, this.f23221d);
                }
                if (i11 == f23216u && h0Var.d()[c10 + 2] == 1) {
                    this.f23222e.e(i11);
                }
            }
            if (i11 == 0 || i11 == f23213r) {
                int i13 = f10 - c10;
                if (this.f23226i && this.f23233p && this.f23227j) {
                    this.f23219b.e(this.f23231n, this.f23232o ? 1 : 0, ((int) (this.f23225h - this.f23230m)) - i13, i13, null);
                }
                boolean z9 = this.f23226i;
                if (!z9 || this.f23233p) {
                    this.f23230m = this.f23225h - i13;
                    long j4 = this.f23229l;
                    if (j4 == com.google.android.exoplayer2.i.f23649b) {
                        j4 = z9 ? this.f23231n + this.f23228k : 0L;
                    }
                    this.f23231n = j4;
                    this.f23232o = false;
                    this.f23229l = com.google.android.exoplayer2.i.f23649b;
                    this.f23226i = true;
                }
                this.f23233p = i11 == 0;
            } else if (i11 == f23215t) {
                this.f23232o = true;
            }
            e4 = i10;
        }
        if (!this.f23227j) {
            this.f23224g.a(d4, e4, f10);
        }
        u uVar3 = this.f23222e;
        if (uVar3 != null) {
            uVar3.a(d4, e4, f10);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        com.google.android.exoplayer2.util.b0.a(this.f23223f);
        this.f23224g.c();
        u uVar = this.f23222e;
        if (uVar != null) {
            uVar.d();
        }
        this.f23225h = 0L;
        this.f23226i = false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23218a = eVar.b();
        this.f23219b = mVar.f(eVar.c(), 2);
        k0 k0Var = this.f23220c;
        if (k0Var != null) {
            k0Var.b(mVar, eVar);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23229l = j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(@Nullable k0 k0Var) {
        this.f23220c = k0Var;
        this.f23223f = new boolean[4];
        this.f23224g = new a(128);
        if (k0Var != null) {
            this.f23222e = new u(f23216u, 128);
            this.f23221d = new com.google.android.exoplayer2.util.h0();
            return;
        }
        this.f23222e = null;
        this.f23221d = null;
    }
}
