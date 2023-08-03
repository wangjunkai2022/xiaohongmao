package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: H264Reader.java */
/* loaded from: classes2.dex */
public final class p implements m {

    /* renamed from: p  reason: collision with root package name */
    private static final int f23281p = 6;

    /* renamed from: q  reason: collision with root package name */
    private static final int f23282q = 7;

    /* renamed from: r  reason: collision with root package name */
    private static final int f23283r = 8;

    /* renamed from: a  reason: collision with root package name */
    private final d0 f23284a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f23285b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f23286c;

    /* renamed from: g  reason: collision with root package name */
    private long f23290g;

    /* renamed from: i  reason: collision with root package name */
    private String f23292i;

    /* renamed from: j  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.e0 f23293j;

    /* renamed from: k  reason: collision with root package name */
    private b f23294k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f23295l;

    /* renamed from: m  reason: collision with root package name */
    private long f23296m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f23297n;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f23291h = new boolean[3];

    /* renamed from: d  reason: collision with root package name */
    private final u f23287d = new u(7, 128);

    /* renamed from: e  reason: collision with root package name */
    private final u f23288e = new u(8, 128);

    /* renamed from: f  reason: collision with root package name */
    private final u f23289f = new u(6, 128);

    /* renamed from: o  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23298o = new com.google.android.exoplayer2.util.h0();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H264Reader.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: s  reason: collision with root package name */
        private static final int f23299s = 128;

        /* renamed from: t  reason: collision with root package name */
        private static final int f23300t = 1;

        /* renamed from: u  reason: collision with root package name */
        private static final int f23301u = 2;

        /* renamed from: v  reason: collision with root package name */
        private static final int f23302v = 5;

        /* renamed from: w  reason: collision with root package name */
        private static final int f23303w = 9;

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.e0 f23304a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f23305b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f23306c;

        /* renamed from: f  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.i0 f23309f;

        /* renamed from: g  reason: collision with root package name */
        private byte[] f23310g;

        /* renamed from: h  reason: collision with root package name */
        private int f23311h;

        /* renamed from: i  reason: collision with root package name */
        private int f23312i;

        /* renamed from: j  reason: collision with root package name */
        private long f23313j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f23314k;

        /* renamed from: l  reason: collision with root package name */
        private long f23315l;

        /* renamed from: o  reason: collision with root package name */
        private boolean f23318o;

        /* renamed from: p  reason: collision with root package name */
        private long f23319p;

        /* renamed from: q  reason: collision with root package name */
        private long f23320q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f23321r;

        /* renamed from: d  reason: collision with root package name */
        private final SparseArray<b0.b> f23307d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        private final SparseArray<b0.a> f23308e = new SparseArray<>();

        /* renamed from: m  reason: collision with root package name */
        private a f23316m = new a();

        /* renamed from: n  reason: collision with root package name */
        private a f23317n = new a();

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: H264Reader.java */
        /* loaded from: classes2.dex */
        public static final class a {

            /* renamed from: q  reason: collision with root package name */
            private static final int f23322q = 2;

            /* renamed from: r  reason: collision with root package name */
            private static final int f23323r = 7;

            /* renamed from: a  reason: collision with root package name */
            private boolean f23324a;

            /* renamed from: b  reason: collision with root package name */
            private boolean f23325b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private b0.b f23326c;

            /* renamed from: d  reason: collision with root package name */
            private int f23327d;

            /* renamed from: e  reason: collision with root package name */
            private int f23328e;

            /* renamed from: f  reason: collision with root package name */
            private int f23329f;

            /* renamed from: g  reason: collision with root package name */
            private int f23330g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f23331h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f23332i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f23333j;

            /* renamed from: k  reason: collision with root package name */
            private boolean f23334k;

            /* renamed from: l  reason: collision with root package name */
            private int f23335l;

            /* renamed from: m  reason: collision with root package name */
            private int f23336m;

            /* renamed from: n  reason: collision with root package name */
            private int f23337n;

            /* renamed from: o  reason: collision with root package name */
            private int f23338o;

            /* renamed from: p  reason: collision with root package name */
            private int f23339p;

            private a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(a aVar) {
                int i4;
                int i10;
                int i11;
                boolean z9;
                if (this.f23324a) {
                    if (aVar.f23324a) {
                        b0.b bVar = (b0.b) com.google.android.exoplayer2.util.a.k(this.f23326c);
                        b0.b bVar2 = (b0.b) com.google.android.exoplayer2.util.a.k(aVar.f23326c);
                        return (this.f23329f == aVar.f23329f && this.f23330g == aVar.f23330g && this.f23331h == aVar.f23331h && (!this.f23332i || !aVar.f23332i || this.f23333j == aVar.f23333j) && (((i4 = this.f23327d) == (i10 = aVar.f23327d) || (i4 != 0 && i10 != 0)) && (((i11 = bVar.f27515k) != 0 || bVar2.f27515k != 0 || (this.f23336m == aVar.f23336m && this.f23337n == aVar.f23337n)) && ((i11 != 1 || bVar2.f27515k != 1 || (this.f23338o == aVar.f23338o && this.f23339p == aVar.f23339p)) && (z9 = this.f23334k) == aVar.f23334k && (!z9 || this.f23335l == aVar.f23335l))))) ? false : true;
                    }
                    return true;
                }
                return false;
            }

            public void b() {
                this.f23325b = false;
                this.f23324a = false;
            }

            public boolean d() {
                int i4;
                return this.f23325b && ((i4 = this.f23328e) == 7 || i4 == 2);
            }

            public void e(b0.b bVar, int i4, int i10, int i11, int i12, boolean z9, boolean z10, boolean z11, boolean z12, int i13, int i14, int i15, int i16, int i17) {
                this.f23326c = bVar;
                this.f23327d = i4;
                this.f23328e = i10;
                this.f23329f = i11;
                this.f23330g = i12;
                this.f23331h = z9;
                this.f23332i = z10;
                this.f23333j = z11;
                this.f23334k = z12;
                this.f23335l = i13;
                this.f23336m = i14;
                this.f23337n = i15;
                this.f23338o = i16;
                this.f23339p = i17;
                this.f23324a = true;
                this.f23325b = true;
            }

            public void f(int i4) {
                this.f23328e = i4;
                this.f23325b = true;
            }
        }

        public b(com.google.android.exoplayer2.extractor.e0 e0Var, boolean z9, boolean z10) {
            this.f23304a = e0Var;
            this.f23305b = z9;
            this.f23306c = z10;
            byte[] bArr = new byte[128];
            this.f23310g = bArr;
            this.f23309f = new com.google.android.exoplayer2.util.i0(bArr, 0, 0);
            g();
        }

        private void d(int i4) {
            boolean z9 = this.f23321r;
            this.f23304a.e(this.f23320q, z9 ? 1 : 0, (int) (this.f23313j - this.f23319p), i4, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x014e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(byte[] r24, int r25, int r26) {
            /*
                Method dump skipped, instructions count: 408
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.p.b.a(byte[], int, int):void");
        }

        public boolean b(long j4, int i4, boolean z9, boolean z10) {
            boolean z11 = false;
            if (this.f23312i == 9 || (this.f23306c && this.f23317n.c(this.f23316m))) {
                if (z9 && this.f23318o) {
                    d(i4 + ((int) (j4 - this.f23313j)));
                }
                this.f23319p = this.f23313j;
                this.f23320q = this.f23315l;
                this.f23321r = false;
                this.f23318o = true;
            }
            if (this.f23305b) {
                z10 = this.f23317n.d();
            }
            boolean z12 = this.f23321r;
            int i10 = this.f23312i;
            if (i10 == 5 || (z10 && i10 == 1)) {
                z11 = true;
            }
            boolean z13 = z12 | z11;
            this.f23321r = z13;
            return z13;
        }

        public boolean c() {
            return this.f23306c;
        }

        public void e(b0.a aVar) {
            this.f23308e.append(aVar.f27502a, aVar);
        }

        public void f(b0.b bVar) {
            this.f23307d.append(bVar.f27508d, bVar);
        }

        public void g() {
            this.f23314k = false;
            this.f23318o = false;
            this.f23317n.b();
        }

        public void h(long j4, int i4, long j10) {
            this.f23312i = i4;
            this.f23315l = j10;
            this.f23313j = j4;
            if (!this.f23305b || i4 != 1) {
                if (!this.f23306c) {
                    return;
                }
                if (i4 != 5 && i4 != 1 && i4 != 2) {
                    return;
                }
            }
            a aVar = this.f23316m;
            this.f23316m = this.f23317n;
            this.f23317n = aVar;
            aVar.b();
            this.f23311h = 0;
            this.f23314k = true;
        }
    }

    public p(d0 d0Var, boolean z9, boolean z10) {
        this.f23284a = d0Var;
        this.f23285b = z9;
        this.f23286c = z10;
    }

    @EnsuresNonNull({"output", "sampleReader"})
    private void a() {
        com.google.android.exoplayer2.util.a.k(this.f23293j);
        z0.k(this.f23294k);
    }

    @RequiresNonNull({"output", "sampleReader"})
    private void g(long j4, int i4, int i10, long j10) {
        if (!this.f23295l || this.f23294k.c()) {
            this.f23287d.b(i10);
            this.f23288e.b(i10);
            if (!this.f23295l) {
                if (this.f23287d.c() && this.f23288e.c()) {
                    ArrayList arrayList = new ArrayList();
                    u uVar = this.f23287d;
                    arrayList.add(Arrays.copyOf(uVar.f23430d, uVar.f23431e));
                    u uVar2 = this.f23288e;
                    arrayList.add(Arrays.copyOf(uVar2.f23430d, uVar2.f23431e));
                    u uVar3 = this.f23287d;
                    b0.b i11 = com.google.android.exoplayer2.util.b0.i(uVar3.f23430d, 3, uVar3.f23431e);
                    u uVar4 = this.f23288e;
                    b0.a h4 = com.google.android.exoplayer2.util.b0.h(uVar4.f23430d, 3, uVar4.f23431e);
                    this.f23293j.d(new Format.b().S(this.f23292i).e0("video/avc").I(com.google.android.exoplayer2.util.e.a(i11.f27505a, i11.f27506b, i11.f27507c)).j0(i11.f27509e).Q(i11.f27510f).a0(i11.f27511g).T(arrayList).E());
                    this.f23295l = true;
                    this.f23294k.f(i11);
                    this.f23294k.e(h4);
                    this.f23287d.d();
                    this.f23288e.d();
                }
            } else if (this.f23287d.c()) {
                u uVar5 = this.f23287d;
                this.f23294k.f(com.google.android.exoplayer2.util.b0.i(uVar5.f23430d, 3, uVar5.f23431e));
                this.f23287d.d();
            } else if (this.f23288e.c()) {
                u uVar6 = this.f23288e;
                this.f23294k.e(com.google.android.exoplayer2.util.b0.h(uVar6.f23430d, 3, uVar6.f23431e));
                this.f23288e.d();
            }
        }
        if (this.f23289f.b(i10)) {
            u uVar7 = this.f23289f;
            this.f23298o.Q(this.f23289f.f23430d, com.google.android.exoplayer2.util.b0.k(uVar7.f23430d, uVar7.f23431e));
            this.f23298o.S(4);
            this.f23284a.a(j10, this.f23298o);
        }
        if (this.f23294k.b(j4, i4, this.f23295l, this.f23297n)) {
            this.f23297n = false;
        }
    }

    @RequiresNonNull({"sampleReader"})
    private void h(byte[] bArr, int i4, int i10) {
        if (!this.f23295l || this.f23294k.c()) {
            this.f23287d.a(bArr, i4, i10);
            this.f23288e.a(bArr, i4, i10);
        }
        this.f23289f.a(bArr, i4, i10);
        this.f23294k.a(bArr, i4, i10);
    }

    @RequiresNonNull({"sampleReader"})
    private void i(long j4, int i4, long j10) {
        if (!this.f23295l || this.f23294k.c()) {
            this.f23287d.e(i4);
            this.f23288e.e(i4);
        }
        this.f23289f.e(i4);
        this.f23294k.h(j4, i4, j10);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(com.google.android.exoplayer2.util.h0 h0Var) {
        a();
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        byte[] d4 = h0Var.d();
        this.f23290g += h0Var.a();
        this.f23293j.c(h0Var, h0Var.a());
        while (true) {
            int c10 = com.google.android.exoplayer2.util.b0.c(d4, e4, f10, this.f23291h);
            if (c10 == f10) {
                h(d4, e4, f10);
                return;
            }
            int f11 = com.google.android.exoplayer2.util.b0.f(d4, c10);
            int i4 = c10 - e4;
            if (i4 > 0) {
                h(d4, e4, c10);
            }
            int i10 = f10 - c10;
            long j4 = this.f23290g - i10;
            g(j4, i10, i4 < 0 ? -i4 : 0, this.f23296m);
            i(j4, f11, this.f23296m);
            e4 = c10 + 3;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c() {
        this.f23290g = 0L;
        this.f23297n = false;
        com.google.android.exoplayer2.util.b0.a(this.f23291h);
        this.f23287d.d();
        this.f23288e.d();
        this.f23289f.d();
        b bVar = this.f23294k;
        if (bVar != null) {
            bVar.g();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        eVar.a();
        this.f23292i = eVar.b();
        com.google.android.exoplayer2.extractor.e0 f10 = mVar.f(eVar.c(), 2);
        this.f23293j = f10;
        this.f23294k = new b(f10, this.f23285b, this.f23286c);
        this.f23284a.b(mVar, eVar);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void e() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void f(long j4, int i4) {
        this.f23296m = j4;
        this.f23297n |= (i4 & 2) != 0;
    }
}
