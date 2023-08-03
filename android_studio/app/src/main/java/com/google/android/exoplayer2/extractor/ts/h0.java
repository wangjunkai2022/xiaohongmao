package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: TsExtractor.java */
/* loaded from: classes2.dex */
public final class h0 implements com.google.android.exoplayer2.extractor.k {
    public static final int A = 188;
    public static final int B = 112800;
    public static final int C = 3;
    public static final int D = 4;
    public static final int E = 15;
    public static final int F = 17;
    public static final int G = 129;
    public static final int H = 138;
    public static final int I = 130;
    public static final int J = 135;
    public static final int K = 172;
    public static final int L = 2;
    public static final int M = 16;
    public static final int N = 27;
    public static final int O = 36;
    public static final int P = 21;
    public static final int Q = 134;
    public static final int R = 89;
    public static final int S = 257;
    public static final int T = 71;
    private static final int U = 0;
    private static final int V = 8192;
    private static final long W = 1094921523;
    private static final long X = 1161904947;
    private static final long Y = 1094921524;
    private static final long Z = 1212503619;

    /* renamed from: a0  reason: collision with root package name */
    private static final int f23095a0 = 9400;

    /* renamed from: b0  reason: collision with root package name */
    private static final int f23096b0 = 5;

    /* renamed from: w  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.q f23097w = g0.f23077b;

    /* renamed from: x  reason: collision with root package name */
    public static final int f23098x = 0;

    /* renamed from: y  reason: collision with root package name */
    public static final int f23099y = 1;

    /* renamed from: z  reason: collision with root package name */
    public static final int f23100z = 2;

    /* renamed from: d  reason: collision with root package name */
    private final int f23101d;

    /* renamed from: e  reason: collision with root package name */
    private final int f23102e;

    /* renamed from: f  reason: collision with root package name */
    private final List<u0> f23103f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23104g;

    /* renamed from: h  reason: collision with root package name */
    private final SparseIntArray f23105h;

    /* renamed from: i  reason: collision with root package name */
    private final i0.c f23106i;

    /* renamed from: j  reason: collision with root package name */
    private final SparseArray<i0> f23107j;

    /* renamed from: k  reason: collision with root package name */
    private final SparseBooleanArray f23108k;

    /* renamed from: l  reason: collision with root package name */
    private final SparseBooleanArray f23109l;

    /* renamed from: m  reason: collision with root package name */
    private final f0 f23110m;

    /* renamed from: n  reason: collision with root package name */
    private e0 f23111n;

    /* renamed from: o  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.m f23112o;

    /* renamed from: p  reason: collision with root package name */
    private int f23113p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f23114q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f23115r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f23116s;

    /* renamed from: t  reason: collision with root package name */
    private i0 f23117t;

    /* renamed from: u  reason: collision with root package name */
    private int f23118u;

    /* renamed from: v  reason: collision with root package name */
    private int f23119v;

    /* compiled from: TsExtractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TsExtractor.java */
    /* loaded from: classes2.dex */
    public class b implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.g0 f23120a = new com.google.android.exoplayer2.util.g0(new byte[4]);

        public b() {
        }

        @Override // com.google.android.exoplayer2.extractor.ts.b0
        public void a(u0 u0Var, com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        }

        @Override // com.google.android.exoplayer2.extractor.ts.b0
        public void b(com.google.android.exoplayer2.util.h0 h0Var) {
            if (h0Var.G() == 0 && (h0Var.G() & 128) != 0) {
                h0Var.T(6);
                int a10 = h0Var.a() / 4;
                for (int i4 = 0; i4 < a10; i4++) {
                    h0Var.i(this.f23120a, 4);
                    int h4 = this.f23120a.h(16);
                    this.f23120a.s(3);
                    if (h4 == 0) {
                        this.f23120a.s(13);
                    } else {
                        int h10 = this.f23120a.h(13);
                        if (h0.this.f23107j.get(h10) == null) {
                            h0.this.f23107j.put(h10, new c0(new c(h10)));
                            h0.k(h0.this);
                        }
                    }
                }
                if (h0.this.f23101d != 2) {
                    h0.this.f23107j.remove(0);
                }
            }
        }
    }

    /* compiled from: TsExtractor.java */
    /* loaded from: classes2.dex */
    private class c implements b0 {

        /* renamed from: f  reason: collision with root package name */
        private static final int f23122f = 5;

        /* renamed from: g  reason: collision with root package name */
        private static final int f23123g = 10;

        /* renamed from: h  reason: collision with root package name */
        private static final int f23124h = 106;

        /* renamed from: i  reason: collision with root package name */
        private static final int f23125i = 111;

        /* renamed from: j  reason: collision with root package name */
        private static final int f23126j = 122;

        /* renamed from: k  reason: collision with root package name */
        private static final int f23127k = 123;

        /* renamed from: l  reason: collision with root package name */
        private static final int f23128l = 127;

        /* renamed from: m  reason: collision with root package name */
        private static final int f23129m = 89;

        /* renamed from: n  reason: collision with root package name */
        private static final int f23130n = 21;

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.g0 f23131a = new com.google.android.exoplayer2.util.g0(new byte[5]);

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<i0> f23132b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        private final SparseIntArray f23133c = new SparseIntArray();

        /* renamed from: d  reason: collision with root package name */
        private final int f23134d;

        public c(int i4) {
            this.f23134d = i4;
        }

        private i0.b c(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
            int e4 = h0Var.e();
            int i10 = i4 + e4;
            String str = null;
            ArrayList arrayList = null;
            int i11 = -1;
            while (h0Var.e() < i10) {
                int G = h0Var.G();
                int e10 = h0Var.e() + h0Var.G();
                if (e10 > i10) {
                    break;
                }
                if (G == 5) {
                    long I = h0Var.I();
                    if (I != h0.W) {
                        if (I != h0.X) {
                            if (I != h0.Y) {
                                if (I == h0.Z) {
                                    i11 = 36;
                                }
                            }
                            i11 = h0.K;
                        }
                        i11 = h0.J;
                    }
                    i11 = h0.G;
                } else {
                    if (G != 106) {
                        if (G != 122) {
                            if (G == 127) {
                                if (h0Var.G() != 21) {
                                }
                                i11 = h0.K;
                            } else if (G == 123) {
                                i11 = h0.H;
                            } else if (G == 10) {
                                str = h0Var.D(3).trim();
                            } else if (G == 89) {
                                arrayList = new ArrayList();
                                while (h0Var.e() < e10) {
                                    String trim = h0Var.D(3).trim();
                                    int G2 = h0Var.G();
                                    byte[] bArr = new byte[4];
                                    h0Var.k(bArr, 0, 4);
                                    arrayList.add(new i0.a(trim, G2, bArr));
                                }
                                i11 = 89;
                            } else if (G == 111) {
                                i11 = 257;
                            }
                        }
                        i11 = h0.J;
                    }
                    i11 = h0.G;
                }
                h0Var.T(e10 - h0Var.e());
            }
            h0Var.S(i10);
            return new i0.b(i11, str, arrayList, Arrays.copyOfRange(h0Var.d(), e4, i10));
        }

        @Override // com.google.android.exoplayer2.extractor.ts.b0
        public void a(u0 u0Var, com.google.android.exoplayer2.extractor.m mVar, i0.e eVar) {
        }

        @Override // com.google.android.exoplayer2.extractor.ts.b0
        public void b(com.google.android.exoplayer2.util.h0 h0Var) {
            u0 u0Var;
            i0 b10;
            if (h0Var.G() != 2) {
                return;
            }
            if (h0.this.f23101d != 1 && h0.this.f23101d != 2 && h0.this.f23113p != 1) {
                u0Var = new u0(((u0) h0.this.f23103f.get(0)).c());
                h0.this.f23103f.add(u0Var);
            } else {
                u0Var = (u0) h0.this.f23103f.get(0);
            }
            if ((h0Var.G() & 128) == 0) {
                return;
            }
            h0Var.T(1);
            int M = h0Var.M();
            int i4 = 3;
            h0Var.T(3);
            h0Var.i(this.f23131a, 2);
            this.f23131a.s(3);
            int i10 = 13;
            h0.this.f23119v = this.f23131a.h(13);
            h0Var.i(this.f23131a, 2);
            int i11 = 4;
            this.f23131a.s(4);
            h0Var.T(this.f23131a.h(12));
            if (h0.this.f23101d == 2 && h0.this.f23117t == null) {
                i0.b bVar = new i0.b(21, null, null, z0.f27748f);
                h0 h0Var2 = h0.this;
                h0Var2.f23117t = h0Var2.f23106i.b(21, bVar);
                h0.this.f23117t.a(u0Var, h0.this.f23112o, new i0.e(M, 21, 8192));
            }
            this.f23132b.clear();
            this.f23133c.clear();
            int a10 = h0Var.a();
            while (a10 > 0) {
                h0Var.i(this.f23131a, 5);
                int h4 = this.f23131a.h(8);
                this.f23131a.s(i4);
                int h10 = this.f23131a.h(i10);
                this.f23131a.s(i11);
                int h11 = this.f23131a.h(12);
                i0.b c10 = c(h0Var, h11);
                if (h4 == 6 || h4 == 5) {
                    h4 = c10.f23168a;
                }
                a10 -= h11 + 5;
                int i12 = h0.this.f23101d == 2 ? h4 : h10;
                if (!h0.this.f23108k.get(i12)) {
                    if (h0.this.f23101d == 2 && h4 == 21) {
                        b10 = h0.this.f23117t;
                    } else {
                        b10 = h0.this.f23106i.b(h4, c10);
                    }
                    if (h0.this.f23101d != 2 || h10 < this.f23133c.get(i12, 8192)) {
                        this.f23133c.put(i12, h10);
                        this.f23132b.put(i12, b10);
                    }
                }
                i4 = 3;
                i11 = 4;
                i10 = 13;
            }
            int size = this.f23133c.size();
            for (int i13 = 0; i13 < size; i13++) {
                int keyAt = this.f23133c.keyAt(i13);
                int valueAt = this.f23133c.valueAt(i13);
                h0.this.f23108k.put(keyAt, true);
                h0.this.f23109l.put(valueAt, true);
                i0 valueAt2 = this.f23132b.valueAt(i13);
                if (valueAt2 != null) {
                    if (valueAt2 != h0.this.f23117t) {
                        valueAt2.a(u0Var, h0.this.f23112o, new i0.e(M, keyAt, 8192));
                    }
                    h0.this.f23107j.put(valueAt, valueAt2);
                }
            }
            if (h0.this.f23101d == 2) {
                if (h0.this.f23114q) {
                    return;
                }
                h0.this.f23112o.t();
                h0.this.f23113p = 0;
                h0.this.f23114q = true;
                return;
            }
            h0.this.f23107j.remove(this.f23134d);
            h0 h0Var3 = h0.this;
            h0Var3.f23113p = h0Var3.f23101d == 1 ? 0 : h0.this.f23113p - 1;
            if (h0.this.f23113p == 0) {
                h0.this.f23112o.t();
                h0.this.f23114q = true;
            }
        }
    }

    public h0() {
        this(0);
    }

    static /* synthetic */ int k(h0 h0Var) {
        int i4 = h0Var.f23113p;
        h0Var.f23113p = i4 + 1;
        return i4;
    }

    private boolean u(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        byte[] d4 = this.f23104g.d();
        if (9400 - this.f23104g.e() < 188) {
            int a10 = this.f23104g.a();
            if (a10 > 0) {
                System.arraycopy(d4, this.f23104g.e(), d4, 0, a10);
            }
            this.f23104g.Q(d4, a10);
        }
        while (this.f23104g.a() < 188) {
            int f10 = this.f23104g.f();
            int read = lVar.read(d4, f10, 9400 - f10);
            if (read == -1) {
                return false;
            }
            this.f23104g.R(f10 + read);
        }
        return true;
    }

    private int v() throws ParserException {
        int e4 = this.f23104g.e();
        int f10 = this.f23104g.f();
        int a10 = j0.a(this.f23104g.d(), e4, f10);
        this.f23104g.S(a10);
        int i4 = a10 + 188;
        if (i4 > f10) {
            int i10 = this.f23118u + (a10 - e4);
            this.f23118u = i10;
            if (this.f23101d == 2 && i10 > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.f23118u = 0;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.k[] w() {
        return new com.google.android.exoplayer2.extractor.k[]{new h0()};
    }

    private void x(long j4) {
        if (this.f23115r) {
            return;
        }
        this.f23115r = true;
        if (this.f23110m.b() != com.google.android.exoplayer2.i.f23649b) {
            e0 e0Var = new e0(this.f23110m.c(), this.f23110m.b(), j4, this.f23119v, this.f23102e);
            this.f23111n = e0Var;
            this.f23112o.q(e0Var.b());
            return;
        }
        this.f23112o.q(new b0.b(this.f23110m.b()));
    }

    private void y() {
        this.f23108k.clear();
        this.f23107j.clear();
        SparseArray<i0> a10 = this.f23106i.a();
        int size = a10.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.f23107j.put(a10.keyAt(i4), a10.valueAt(i4));
        }
        this.f23107j.put(0, new c0(new b()));
        this.f23117t = null;
    }

    private boolean z(int i4) {
        return this.f23101d == 2 || this.f23114q || !this.f23109l.get(i4, false);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        e0 e0Var;
        com.google.android.exoplayer2.util.a.i(this.f23101d != 2);
        int size = this.f23103f.size();
        for (int i4 = 0; i4 < size; i4++) {
            u0 u0Var = this.f23103f.get(i4);
            if ((u0Var.e() == com.google.android.exoplayer2.i.f23649b) || (u0Var.e() != 0 && u0Var.c() != j10)) {
                u0Var.g(j10);
            }
        }
        if (j10 != 0 && (e0Var = this.f23111n) != null) {
            e0Var.h(j10);
        }
        this.f23104g.O(0);
        this.f23105h.clear();
        for (int i10 = 0; i10 < this.f23107j.size(); i10++) {
            this.f23107j.valueAt(i10).c();
        }
        this.f23118u = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        boolean z9;
        byte[] d4 = this.f23104g.d();
        lVar.s(d4, 0, 940);
        for (int i4 = 0; i4 < 188; i4++) {
            int i10 = 0;
            while (true) {
                if (i10 >= 5) {
                    z9 = true;
                    break;
                } else if (d4[(i10 * 188) + i4] != 71) {
                    z9 = false;
                    break;
                } else {
                    i10++;
                }
            }
            if (z9) {
                lVar.o(i4);
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        long length = lVar.getLength();
        if (this.f23114q) {
            if (((length == -1 || this.f23101d == 2) ? false : true) && !this.f23110m.d()) {
                return this.f23110m.e(lVar, zVar, this.f23119v);
            }
            x(length);
            if (this.f23116s) {
                this.f23116s = false;
                a(0L, 0L);
                if (lVar.getPosition() != 0) {
                    zVar.f23544a = 0L;
                    return 1;
                }
            }
            e0 e0Var = this.f23111n;
            if (e0Var != null && e0Var.d()) {
                return this.f23111n.c(lVar, zVar);
            }
        }
        if (u(lVar)) {
            int v9 = v();
            int f10 = this.f23104g.f();
            if (v9 > f10) {
                return 0;
            }
            int o9 = this.f23104g.o();
            if ((8388608 & o9) != 0) {
                this.f23104g.S(v9);
                return 0;
            }
            int i4 = ((4194304 & o9) != 0 ? 1 : 0) | 0;
            int i10 = (2096896 & o9) >> 8;
            boolean z9 = (o9 & 32) != 0;
            i0 i0Var = (o9 & 16) != 0 ? this.f23107j.get(i10) : null;
            if (i0Var == null) {
                this.f23104g.S(v9);
                return 0;
            }
            if (this.f23101d != 2) {
                int i11 = o9 & 15;
                int i12 = this.f23105h.get(i10, i11 - 1);
                this.f23105h.put(i10, i11);
                if (i12 == i11) {
                    this.f23104g.S(v9);
                    return 0;
                } else if (i11 != ((i12 + 1) & 15)) {
                    i0Var.c();
                }
            }
            if (z9) {
                int G2 = this.f23104g.G();
                i4 |= (this.f23104g.G() & 64) != 0 ? 2 : 0;
                this.f23104g.T(G2 - 1);
            }
            boolean z10 = this.f23114q;
            if (z(i10)) {
                this.f23104g.R(v9);
                i0Var.b(this.f23104g, i4);
                this.f23104g.R(f10);
            }
            if (this.f23101d != 2 && !z10 && this.f23114q && length != -1) {
                this.f23116s = true;
            }
            this.f23104g.S(v9);
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(com.google.android.exoplayer2.extractor.m mVar) {
        this.f23112o = mVar;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }

    public h0(int i4) {
        this(1, i4, (int) B);
    }

    public h0(int i4, int i10, int i11) {
        this(i4, new u0(0L), new j(i10), i11);
    }

    public h0(int i4, u0 u0Var, i0.c cVar) {
        this(i4, u0Var, cVar, B);
    }

    public h0(int i4, u0 u0Var, i0.c cVar, int i10) {
        this.f23106i = (i0.c) com.google.android.exoplayer2.util.a.g(cVar);
        this.f23102e = i10;
        this.f23101d = i4;
        if (i4 != 1 && i4 != 2) {
            ArrayList arrayList = new ArrayList();
            this.f23103f = arrayList;
            arrayList.add(u0Var);
        } else {
            this.f23103f = Collections.singletonList(u0Var);
        }
        this.f23104g = new com.google.android.exoplayer2.util.h0(new byte[f23095a0], 0);
        this.f23108k = new SparseBooleanArray();
        this.f23109l = new SparseBooleanArray();
        this.f23107j = new SparseArray<>();
        this.f23105h = new SparseIntArray();
        this.f23110m = new f0(i10);
        this.f23119v = -1;
        y();
    }
}
