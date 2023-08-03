package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.mp4.a;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: FragmentedMp4Extractor.java */
/* loaded from: classes2.dex */
public class g implements com.google.android.exoplayer2.extractor.k {
    public static final int M = 1;
    public static final int N = 2;
    public static final int O = 4;
    public static final int P = 16;
    private static final String Q = "FragmentedMp4Extractor";
    private static final int R = 1936025959;
    private static final int U = 100;
    private static final int V = 0;
    private static final int W = 1;
    private static final int X = 2;
    private static final int Y = 3;
    private static final int Z = 4;
    private long A;
    private long B;
    @Nullable
    private c C;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private com.google.android.exoplayer2.extractor.m H;
    private e0[] I;
    private e0[] J;
    private boolean K;

    /* renamed from: d  reason: collision with root package name */
    private final int f22687d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final o f22688e;

    /* renamed from: f  reason: collision with root package name */
    private final List<Format> f22689f;

    /* renamed from: g  reason: collision with root package name */
    private final SparseArray<c> f22690g;

    /* renamed from: h  reason: collision with root package name */
    private final h0 f22691h;

    /* renamed from: i  reason: collision with root package name */
    private final h0 f22692i;

    /* renamed from: j  reason: collision with root package name */
    private final h0 f22693j;

    /* renamed from: k  reason: collision with root package name */
    private final byte[] f22694k;

    /* renamed from: l  reason: collision with root package name */
    private final h0 f22695l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final u0 f22696m;

    /* renamed from: n  reason: collision with root package name */
    private final com.google.android.exoplayer2.metadata.emsg.b f22697n;

    /* renamed from: o  reason: collision with root package name */
    private final h0 f22698o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayDeque<a.C0165a> f22699p;

    /* renamed from: q  reason: collision with root package name */
    private final ArrayDeque<b> f22700q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final e0 f22701r;

    /* renamed from: s  reason: collision with root package name */
    private int f22702s;

    /* renamed from: t  reason: collision with root package name */
    private int f22703t;

    /* renamed from: u  reason: collision with root package name */
    private long f22704u;

    /* renamed from: v  reason: collision with root package name */
    private int f22705v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private h0 f22706w;

    /* renamed from: x  reason: collision with root package name */
    private long f22707x;

    /* renamed from: y  reason: collision with root package name */
    private int f22708y;

    /* renamed from: z  reason: collision with root package name */
    private long f22709z;
    public static final com.google.android.exoplayer2.extractor.q L = e.f22685b;
    private static final byte[] S = {-94, 57, 79, 82, 90, -101, 79, com.google.common.base.c.f32117x, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final Format T = new Format.b().e0(a0.f27482z0).E();

    /* compiled from: FragmentedMp4Extractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f22710a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22711b;

        public b(long j4, int i4) {
            this.f22710a = j4;
            this.f22711b = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: m  reason: collision with root package name */
        private static final int f22712m = 8;

        /* renamed from: a  reason: collision with root package name */
        public final e0 f22713a;

        /* renamed from: d  reason: collision with root package name */
        public r f22716d;

        /* renamed from: e  reason: collision with root package name */
        public com.google.android.exoplayer2.extractor.mp4.c f22717e;

        /* renamed from: f  reason: collision with root package name */
        public int f22718f;

        /* renamed from: g  reason: collision with root package name */
        public int f22719g;

        /* renamed from: h  reason: collision with root package name */
        public int f22720h;

        /* renamed from: i  reason: collision with root package name */
        public int f22721i;

        /* renamed from: l  reason: collision with root package name */
        private boolean f22724l;

        /* renamed from: b  reason: collision with root package name */
        public final q f22714b = new q();

        /* renamed from: c  reason: collision with root package name */
        public final h0 f22715c = new h0();

        /* renamed from: j  reason: collision with root package name */
        private final h0 f22722j = new h0(1);

        /* renamed from: k  reason: collision with root package name */
        private final h0 f22723k = new h0();

        public c(e0 e0Var, r rVar, com.google.android.exoplayer2.extractor.mp4.c cVar) {
            this.f22713a = e0Var;
            this.f22716d = rVar;
            this.f22717e = cVar;
            j(rVar, cVar);
        }

        public int c() {
            int i4;
            if (!this.f22724l) {
                i4 = this.f22716d.f22854g[this.f22718f];
            } else {
                i4 = this.f22714b.f22840l[this.f22718f] ? 1 : 0;
            }
            return g() != null ? i4 | 1073741824 : i4;
        }

        public long d() {
            if (!this.f22724l) {
                return this.f22716d.f22850c[this.f22718f];
            }
            return this.f22714b.f22835g[this.f22720h];
        }

        public long e() {
            if (!this.f22724l) {
                return this.f22716d.f22853f[this.f22718f];
            }
            return this.f22714b.c(this.f22718f);
        }

        public int f() {
            if (!this.f22724l) {
                return this.f22716d.f22851d[this.f22718f];
            }
            return this.f22714b.f22837i[this.f22718f];
        }

        @Nullable
        public p g() {
            if (this.f22724l) {
                int i4 = ((com.google.android.exoplayer2.extractor.mp4.c) z0.k(this.f22714b.f22829a)).f22674a;
                p pVar = this.f22714b.f22843o;
                if (pVar == null) {
                    pVar = this.f22716d.f22848a.b(i4);
                }
                if (pVar == null || !pVar.f22824a) {
                    return null;
                }
                return pVar;
            }
            return null;
        }

        public boolean h() {
            this.f22718f++;
            if (this.f22724l) {
                int i4 = this.f22719g + 1;
                this.f22719g = i4;
                int[] iArr = this.f22714b.f22836h;
                int i10 = this.f22720h;
                if (i4 == iArr[i10]) {
                    this.f22720h = i10 + 1;
                    this.f22719g = 0;
                    return false;
                }
                return true;
            }
            return false;
        }

        public int i(int i4, int i10) {
            h0 h0Var;
            p g4 = g();
            if (g4 == null) {
                return 0;
            }
            int i11 = g4.f22827d;
            if (i11 != 0) {
                h0Var = this.f22714b.f22844p;
            } else {
                byte[] bArr = (byte[]) z0.k(g4.f22828e);
                this.f22723k.Q(bArr, bArr.length);
                h0 h0Var2 = this.f22723k;
                i11 = bArr.length;
                h0Var = h0Var2;
            }
            boolean g10 = this.f22714b.g(this.f22718f);
            boolean z9 = g10 || i10 != 0;
            this.f22722j.d()[0] = (byte) ((z9 ? 128 : 0) | i11);
            this.f22722j.S(0);
            this.f22713a.f(this.f22722j, 1, 1);
            this.f22713a.f(h0Var, i11, 1);
            if (z9) {
                if (!g10) {
                    this.f22715c.O(8);
                    byte[] d4 = this.f22715c.d();
                    d4[0] = 0;
                    d4[1] = 1;
                    d4[2] = (byte) ((i10 >> 8) & 255);
                    d4[3] = (byte) (i10 & 255);
                    d4[4] = (byte) ((i4 >> 24) & 255);
                    d4[5] = (byte) ((i4 >> 16) & 255);
                    d4[6] = (byte) ((i4 >> 8) & 255);
                    d4[7] = (byte) (i4 & 255);
                    this.f22713a.f(this.f22715c, 8, 1);
                    return i11 + 1 + 8;
                }
                h0 h0Var3 = this.f22714b.f22844p;
                int M = h0Var3.M();
                h0Var3.T(-2);
                int i12 = (M * 6) + 2;
                if (i10 != 0) {
                    this.f22715c.O(i12);
                    byte[] d10 = this.f22715c.d();
                    h0Var3.k(d10, 0, i12);
                    int i13 = (((d10[2] & 255) << 8) | (d10[3] & 255)) + i10;
                    d10[2] = (byte) ((i13 >> 8) & 255);
                    d10[3] = (byte) (i13 & 255);
                    h0Var3 = this.f22715c;
                }
                this.f22713a.f(h0Var3, i12, 1);
                return i11 + 1 + i12;
            }
            return i11 + 1;
        }

        public void j(r rVar, com.google.android.exoplayer2.extractor.mp4.c cVar) {
            this.f22716d = rVar;
            this.f22717e = cVar;
            this.f22713a.d(rVar.f22848a.f22817f);
            k();
        }

        public void k() {
            this.f22714b.f();
            this.f22718f = 0;
            this.f22720h = 0;
            this.f22719g = 0;
            this.f22721i = 0;
            this.f22724l = false;
        }

        public void l(long j4) {
            int i4 = this.f22718f;
            while (true) {
                q qVar = this.f22714b;
                if (i4 >= qVar.f22834f || qVar.c(i4) >= j4) {
                    return;
                }
                if (this.f22714b.f22840l[i4]) {
                    this.f22721i = i4;
                }
                i4++;
            }
        }

        public void m() {
            p g4 = g();
            if (g4 == null) {
                return;
            }
            h0 h0Var = this.f22714b.f22844p;
            int i4 = g4.f22827d;
            if (i4 != 0) {
                h0Var.T(i4);
            }
            if (this.f22714b.g(this.f22718f)) {
                h0Var.T(h0Var.M() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            p b10 = this.f22716d.f22848a.b(((com.google.android.exoplayer2.extractor.mp4.c) z0.k(this.f22714b.f22829a)).f22674a);
            this.f22713a.d(this.f22716d.f22848a.f22817f.buildUpon().L(drmInitData.copyWithSchemeType(b10 != null ? b10.f22825b : null)).E());
        }
    }

    public g() {
        this(0);
    }

    private static Pair<Long, com.google.android.exoplayer2.extractor.e> A(h0 h0Var, long j4) throws ParserException {
        long L2;
        long L3;
        h0Var.S(8);
        int c10 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o());
        h0Var.T(4);
        long I = h0Var.I();
        if (c10 == 0) {
            L2 = h0Var.I();
            L3 = h0Var.I();
        } else {
            L2 = h0Var.L();
            L3 = h0Var.L();
        }
        long j10 = L2;
        long j11 = j4 + L3;
        long f12 = z0.f1(j10, 1000000L, I);
        h0Var.T(2);
        int M2 = h0Var.M();
        int[] iArr = new int[M2];
        long[] jArr = new long[M2];
        long[] jArr2 = new long[M2];
        long[] jArr3 = new long[M2];
        long j12 = j10;
        long j13 = f12;
        int i4 = 0;
        while (i4 < M2) {
            int o9 = h0Var.o();
            if ((o9 & Integer.MIN_VALUE) == 0) {
                long I2 = h0Var.I();
                iArr[i4] = o9 & Integer.MAX_VALUE;
                jArr[i4] = j11;
                jArr3[i4] = j13;
                long j14 = j12 + I2;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                int i10 = M2;
                int[] iArr2 = iArr;
                long f13 = z0.f1(j14, 1000000L, I);
                jArr4[i4] = f13 - jArr5[i4];
                h0Var.T(4);
                j11 += iArr2[i4];
                i4++;
                iArr = iArr2;
                jArr3 = jArr5;
                jArr2 = jArr4;
                jArr = jArr;
                M2 = i10;
                j12 = j14;
                j13 = f13;
            } else {
                throw new ParserException("Unhandled indirect reference");
            }
        }
        return Pair.create(Long.valueOf(f12), new com.google.android.exoplayer2.extractor.e(iArr, jArr, jArr2, jArr3));
    }

    private static long B(h0 h0Var) {
        h0Var.S(8);
        return com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o()) == 1 ? h0Var.L() : h0Var.I();
    }

    @Nullable
    private static c C(h0 h0Var, SparseArray<c> sparseArray, boolean z9) {
        int i4;
        int i10;
        int i11;
        int i12;
        h0Var.S(8);
        int b10 = com.google.android.exoplayer2.extractor.mp4.a.b(h0Var.o());
        c valueAt = z9 ? sparseArray.valueAt(0) : sparseArray.get(h0Var.o());
        if (valueAt == null) {
            return null;
        }
        if ((b10 & 1) != 0) {
            long L2 = h0Var.L();
            q qVar = valueAt.f22714b;
            qVar.f22831c = L2;
            qVar.f22832d = L2;
        }
        com.google.android.exoplayer2.extractor.mp4.c cVar = valueAt.f22717e;
        if ((b10 & 2) != 0) {
            i4 = h0Var.o() - 1;
        } else {
            i4 = cVar.f22674a;
        }
        if ((b10 & 8) != 0) {
            i10 = h0Var.o();
        } else {
            i10 = cVar.f22675b;
        }
        if ((b10 & 16) != 0) {
            i11 = h0Var.o();
        } else {
            i11 = cVar.f22676c;
        }
        if ((b10 & 32) != 0) {
            i12 = h0Var.o();
        } else {
            i12 = cVar.f22677d;
        }
        valueAt.f22714b.f22829a = new com.google.android.exoplayer2.extractor.mp4.c(i4, i10, i11, i12);
        return valueAt;
    }

    private static void D(a.C0165a c0165a, SparseArray<c> sparseArray, boolean z9, int i4, byte[] bArr) throws ParserException {
        c C = C(((a.b) com.google.android.exoplayer2.util.a.g(c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.X))).f22637w1, sparseArray, z9);
        if (C == null) {
            return;
        }
        q qVar = C.f22714b;
        long j4 = qVar.f22846r;
        boolean z10 = qVar.f22847s;
        C.k();
        C.f22724l = true;
        a.b h4 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.W);
        if (h4 != null && (i4 & 2) == 0) {
            qVar.f22846r = B(h4.f22637w1);
            qVar.f22847s = true;
        } else {
            qVar.f22846r = j4;
            qVar.f22847s = z10;
        }
        G(c0165a, C, i4);
        p b10 = C.f22716d.f22848a.b(((com.google.android.exoplayer2.extractor.mp4.c) com.google.android.exoplayer2.util.a.g(qVar.f22829a)).f22674a);
        a.b h10 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.B0);
        if (h10 != null) {
            w((p) com.google.android.exoplayer2.util.a.g(b10), h10.f22637w1, qVar);
        }
        a.b h11 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.C0);
        if (h11 != null) {
            v(h11.f22637w1, qVar);
        }
        a.b h12 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.G0);
        if (h12 != null) {
            z(h12.f22637w1, qVar);
        }
        x(c0165a, b10 != null ? b10.f22825b : null, qVar);
        int size = c0165a.f22635x1.size();
        for (int i10 = 0; i10 < size; i10++) {
            a.b bVar = c0165a.f22635x1.get(i10);
            if (bVar.f22633a == 1970628964) {
                H(bVar.f22637w1, qVar, bArr);
            }
        }
    }

    private static Pair<Integer, com.google.android.exoplayer2.extractor.mp4.c> E(h0 h0Var) {
        h0Var.S(12);
        return Pair.create(Integer.valueOf(h0Var.o()), new com.google.android.exoplayer2.extractor.mp4.c(h0Var.o() - 1, h0Var.o(), h0Var.o(), h0Var.o()));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int F(com.google.android.exoplayer2.extractor.mp4.g.c r36, int r37, int r38, com.google.android.exoplayer2.util.h0 r39, int r40) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 359
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.g.F(com.google.android.exoplayer2.extractor.mp4.g$c, int, int, com.google.android.exoplayer2.util.h0, int):int");
    }

    private static void G(a.C0165a c0165a, c cVar, int i4) throws ParserException {
        List<a.b> list = c0165a.f22635x1;
        int size = list.size();
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            a.b bVar = list.get(i12);
            if (bVar.f22633a == 1953658222) {
                h0 h0Var = bVar.f22637w1;
                h0Var.S(12);
                int K = h0Var.K();
                if (K > 0) {
                    i11 += K;
                    i10++;
                }
            }
        }
        cVar.f22720h = 0;
        cVar.f22719g = 0;
        cVar.f22718f = 0;
        cVar.f22714b.e(i10, i11);
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < size; i15++) {
            a.b bVar2 = list.get(i15);
            if (bVar2.f22633a == 1953658222) {
                i14 = F(cVar, i13, i4, bVar2.f22637w1, i14);
                i13++;
            }
        }
    }

    private static void H(h0 h0Var, q qVar, byte[] bArr) throws ParserException {
        h0Var.S(8);
        h0Var.k(bArr, 0, 16);
        if (Arrays.equals(bArr, S)) {
            y(h0Var, 16, qVar);
        }
    }

    private void I(long j4) throws ParserException {
        while (!this.f22699p.isEmpty() && this.f22699p.peek().f22634w1 == j4) {
            n(this.f22699p.pop());
        }
        g();
    }

    private boolean J(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        if (this.f22705v == 0) {
            if (!lVar.i(this.f22698o.d(), 0, 8, true)) {
                return false;
            }
            this.f22705v = 8;
            this.f22698o.S(0);
            this.f22704u = this.f22698o.I();
            this.f22703t = this.f22698o.o();
        }
        long j4 = this.f22704u;
        if (j4 == 1) {
            lVar.readFully(this.f22698o.d(), 8, 8);
            this.f22705v += 8;
            this.f22704u = this.f22698o.L();
        } else if (j4 == 0) {
            long length = lVar.getLength();
            if (length == -1 && !this.f22699p.isEmpty()) {
                length = this.f22699p.peek().f22634w1;
            }
            if (length != -1) {
                this.f22704u = (length - lVar.getPosition()) + this.f22705v;
            }
        }
        if (this.f22704u >= this.f22705v) {
            long position = lVar.getPosition() - this.f22705v;
            int i4 = this.f22703t;
            if ((i4 == 1836019558 || i4 == 1835295092) && !this.K) {
                this.H.q(new b0.b(this.A, position));
                this.K = true;
            }
            if (this.f22703t == 1836019558) {
                int size = this.f22690g.size();
                for (int i10 = 0; i10 < size; i10++) {
                    q qVar = this.f22690g.valueAt(i10).f22714b;
                    qVar.f22830b = position;
                    qVar.f22832d = position;
                    qVar.f22831c = position;
                }
            }
            int i11 = this.f22703t;
            if (i11 == 1835295092) {
                this.C = null;
                this.f22707x = position + this.f22704u;
                this.f22702s = 2;
                return true;
            }
            if (N(i11)) {
                long position2 = (lVar.getPosition() + this.f22704u) - 8;
                this.f22699p.push(new a.C0165a(this.f22703t, position2));
                if (this.f22704u == this.f22705v) {
                    I(position2);
                } else {
                    g();
                }
            } else if (O(this.f22703t)) {
                if (this.f22705v == 8) {
                    long j10 = this.f22704u;
                    if (j10 <= 2147483647L) {
                        h0 h0Var = new h0((int) j10);
                        System.arraycopy(this.f22698o.d(), 0, h0Var.d(), 0, 8);
                        this.f22706w = h0Var;
                        this.f22702s = 1;
                    } else {
                        throw new ParserException("Leaf atom with length > 2147483647 (unsupported).");
                    }
                } else {
                    throw new ParserException("Leaf atom defines extended atom size (unsupported).");
                }
            } else if (this.f22704u <= 2147483647L) {
                this.f22706w = null;
                this.f22702s = 1;
            } else {
                throw new ParserException("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw new ParserException("Atom size less than header length (unsupported).");
    }

    private void K(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        int i4 = ((int) this.f22704u) - this.f22705v;
        h0 h0Var = this.f22706w;
        if (h0Var != null) {
            lVar.readFully(h0Var.d(), 8, i4);
            p(new a.b(this.f22703t, h0Var), lVar.getPosition());
        } else {
            lVar.o(i4);
        }
        I(lVar.getPosition());
    }

    private void L(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        int size = this.f22690g.size();
        c cVar = null;
        long j4 = Long.MAX_VALUE;
        for (int i4 = 0; i4 < size; i4++) {
            q qVar = this.f22690g.valueAt(i4).f22714b;
            if (qVar.f22845q) {
                long j10 = qVar.f22832d;
                if (j10 < j4) {
                    cVar = this.f22690g.valueAt(i4);
                    j4 = j10;
                }
            }
        }
        if (cVar == null) {
            this.f22702s = 3;
            return;
        }
        int position = (int) (j4 - lVar.getPosition());
        if (position >= 0) {
            lVar.o(position);
            cVar.f22714b.a(lVar);
            return;
        }
        throw new ParserException("Offset to encryption data was negative.");
    }

    private boolean M(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        int b10;
        c cVar = this.C;
        if (cVar == null) {
            cVar = j(this.f22690g);
            if (cVar == null) {
                int position = (int) (this.f22707x - lVar.getPosition());
                if (position >= 0) {
                    lVar.o(position);
                    g();
                    return false;
                }
                throw new ParserException("Offset to end of mdat was negative.");
            }
            int d4 = (int) (cVar.d() - lVar.getPosition());
            if (d4 < 0) {
                w.n(Q, "Ignoring negative offset to sample data.");
                d4 = 0;
            }
            lVar.o(d4);
            this.C = cVar;
        }
        int i4 = 4;
        int i10 = 1;
        if (this.f22702s == 3) {
            int f10 = cVar.f();
            this.D = f10;
            if (cVar.f22718f < cVar.f22721i) {
                lVar.o(f10);
                cVar.m();
                if (!cVar.h()) {
                    this.C = null;
                }
                this.f22702s = 3;
                return true;
            }
            if (cVar.f22716d.f22848a.f22818g == 1) {
                this.D = f10 - 8;
                lVar.o(8);
            }
            if (a0.O.equals(cVar.f22716d.f22848a.f22817f.sampleMimeType)) {
                this.E = cVar.i(this.D, 7);
                com.google.android.exoplayer2.audio.c.a(this.D, this.f22695l);
                cVar.f22713a.c(this.f22695l, 7);
                this.E += 7;
            } else {
                this.E = cVar.i(this.D, 0);
            }
            this.D += this.E;
            this.f22702s = 4;
            this.F = 0;
        }
        o oVar = cVar.f22716d.f22848a;
        e0 e0Var = cVar.f22713a;
        long e4 = cVar.e();
        u0 u0Var = this.f22696m;
        if (u0Var != null) {
            e4 = u0Var.a(e4);
        }
        long j4 = e4;
        if (oVar.f22821j == 0) {
            while (true) {
                int i11 = this.E;
                int i12 = this.D;
                if (i11 >= i12) {
                    break;
                }
                this.E += e0Var.b(lVar, i12 - i11, false);
            }
        } else {
            byte[] d10 = this.f22692i.d();
            d10[0] = 0;
            d10[1] = 0;
            d10[2] = 0;
            int i13 = oVar.f22821j;
            int i14 = i13 + 1;
            int i15 = 4 - i13;
            while (this.E < this.D) {
                int i16 = this.F;
                if (i16 == 0) {
                    lVar.readFully(d10, i15, i14);
                    this.f22692i.S(0);
                    int o9 = this.f22692i.o();
                    if (o9 >= i10) {
                        this.F = o9 - 1;
                        this.f22691h.S(0);
                        e0Var.c(this.f22691h, i4);
                        e0Var.c(this.f22692i, i10);
                        this.G = this.J.length > 0 && com.google.android.exoplayer2.util.b0.g(oVar.f22817f.sampleMimeType, d10[i4]);
                        this.E += 5;
                        this.D += i15;
                    } else {
                        throw new ParserException("Invalid NAL length");
                    }
                } else {
                    if (this.G) {
                        this.f22693j.O(i16);
                        lVar.readFully(this.f22693j.d(), 0, this.F);
                        e0Var.c(this.f22693j, this.F);
                        b10 = this.F;
                        int k10 = com.google.android.exoplayer2.util.b0.k(this.f22693j.d(), this.f22693j.f());
                        this.f22693j.S(a0.f27451k.equals(oVar.f22817f.sampleMimeType) ? 1 : 0);
                        this.f22693j.R(k10);
                        com.google.android.exoplayer2.extractor.d.a(j4, this.f22693j, this.J);
                    } else {
                        b10 = e0Var.b(lVar, i16, false);
                    }
                    this.E += b10;
                    this.F -= b10;
                    i4 = 4;
                    i10 = 1;
                }
            }
        }
        int c10 = cVar.c();
        p g4 = cVar.g();
        e0Var.e(j4, c10, this.D, 0, g4 != null ? g4.f22826c : null);
        s(j4);
        if (!cVar.h()) {
            this.C = null;
        }
        this.f22702s = 3;
        return true;
    }

    private static boolean N(int i4) {
        return i4 == 1836019574 || i4 == 1953653099 || i4 == 1835297121 || i4 == 1835626086 || i4 == 1937007212 || i4 == 1836019558 || i4 == 1953653094 || i4 == 1836475768 || i4 == 1701082227;
    }

    private static boolean O(int i4) {
        return i4 == 1751411826 || i4 == 1835296868 || i4 == 1836476516 || i4 == 1936286840 || i4 == 1937011556 || i4 == 1937011827 || i4 == 1668576371 || i4 == 1937011555 || i4 == 1937011578 || i4 == 1937013298 || i4 == 1937007471 || i4 == 1668232756 || i4 == 1937011571 || i4 == 1952867444 || i4 == 1952868452 || i4 == 1953196132 || i4 == 1953654136 || i4 == 1953658222 || i4 == 1886614376 || i4 == 1935763834 || i4 == 1935763823 || i4 == 1936027235 || i4 == 1970628964 || i4 == 1935828848 || i4 == 1936158820 || i4 == 1701606260 || i4 == 1835362404 || i4 == 1701671783;
    }

    private static int f(int i4) throws ParserException {
        if (i4 >= 0) {
            return i4;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Unexpected negative value: ");
        sb.append(i4);
        throw new ParserException(sb.toString());
    }

    private void g() {
        this.f22702s = 0;
        this.f22705v = 0;
    }

    private com.google.android.exoplayer2.extractor.mp4.c h(SparseArray<com.google.android.exoplayer2.extractor.mp4.c> sparseArray, int i4) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (com.google.android.exoplayer2.extractor.mp4.c) com.google.android.exoplayer2.util.a.g(sparseArray.get(i4));
    }

    @Nullable
    private static DrmInitData i(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i4 = 0; i4 < size; i4++) {
            a.b bVar = list.get(i4);
            if (bVar.f22633a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] d4 = bVar.f22637w1.d();
                UUID f10 = l.f(d4);
                if (f10 == null) {
                    w.n(Q, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(f10, a0.f27441f, d4));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    @Nullable
    private static c j(SparseArray<c> sparseArray) {
        int size = sparseArray.size();
        c cVar = null;
        long j4 = Long.MAX_VALUE;
        for (int i4 = 0; i4 < size; i4++) {
            c valueAt = sparseArray.valueAt(i4);
            if ((valueAt.f22724l || valueAt.f22718f != valueAt.f22716d.f22849b) && (!valueAt.f22724l || valueAt.f22720h != valueAt.f22714b.f22833e)) {
                long d4 = valueAt.d();
                if (d4 < j4) {
                    cVar = valueAt;
                    j4 = d4;
                }
            }
        }
        return cVar;
    }

    private void k() {
        int i4;
        e0[] e0VarArr = new e0[2];
        this.I = e0VarArr;
        e0 e0Var = this.f22701r;
        int i10 = 0;
        if (e0Var != null) {
            e0VarArr[0] = e0Var;
            i4 = 1;
        } else {
            i4 = 0;
        }
        int i11 = 100;
        if ((this.f22687d & 4) != 0) {
            e0VarArr[i4] = this.H.f(100, 5);
            i4++;
            i11 = 101;
        }
        e0[] e0VarArr2 = (e0[]) z0.T0(this.I, i4);
        this.I = e0VarArr2;
        for (e0 e0Var2 : e0VarArr2) {
            e0Var2.d(T);
        }
        this.J = new e0[this.f22689f.size()];
        while (i10 < this.J.length) {
            e0 f10 = this.H.f(i11, 3);
            f10.d(this.f22689f.get(i10));
            this.J[i10] = f10;
            i10++;
            i11++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.k[] l() {
        return new com.google.android.exoplayer2.extractor.k[]{new g()};
    }

    private void n(a.C0165a c0165a) throws ParserException {
        int i4 = c0165a.f22633a;
        if (i4 == 1836019574) {
            r(c0165a);
        } else if (i4 == 1836019558) {
            q(c0165a);
        } else if (this.f22699p.isEmpty()) {
        } else {
            this.f22699p.peek().d(c0165a);
        }
    }

    private void o(h0 h0Var) {
        long f12;
        String str;
        long f13;
        String str2;
        long I;
        long j4;
        e0[] e0VarArr;
        if (this.I.length == 0) {
            return;
        }
        h0Var.S(8);
        int c10 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o());
        if (c10 == 0) {
            String str3 = (String) com.google.android.exoplayer2.util.a.g(h0Var.A());
            String str4 = (String) com.google.android.exoplayer2.util.a.g(h0Var.A());
            long I2 = h0Var.I();
            f12 = z0.f1(h0Var.I(), 1000000L, I2);
            long j10 = this.B;
            long j11 = j10 != com.google.android.exoplayer2.i.f23649b ? j10 + f12 : -9223372036854775807L;
            str = str3;
            f13 = z0.f1(h0Var.I(), 1000L, I2);
            str2 = str4;
            I = h0Var.I();
            j4 = j11;
        } else if (c10 != 1) {
            StringBuilder sb = new StringBuilder(46);
            sb.append("Skipping unsupported emsg version: ");
            sb.append(c10);
            w.n(Q, sb.toString());
            return;
        } else {
            long I3 = h0Var.I();
            j4 = z0.f1(h0Var.L(), 1000000L, I3);
            long f14 = z0.f1(h0Var.I(), 1000L, I3);
            long I4 = h0Var.I();
            str = (String) com.google.android.exoplayer2.util.a.g(h0Var.A());
            f13 = f14;
            I = I4;
            str2 = (String) com.google.android.exoplayer2.util.a.g(h0Var.A());
            f12 = -9223372036854775807L;
        }
        byte[] bArr = new byte[h0Var.a()];
        h0Var.k(bArr, 0, h0Var.a());
        h0 h0Var2 = new h0(this.f22697n.a(new EventMessage(str, str2, f13, I, bArr)));
        int a10 = h0Var2.a();
        for (e0 e0Var : this.I) {
            h0Var2.S(0);
            e0Var.c(h0Var2, a10);
        }
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            this.f22700q.addLast(new b(f12, a10));
            this.f22708y += a10;
            return;
        }
        u0 u0Var = this.f22696m;
        if (u0Var != null) {
            j4 = u0Var.a(j4);
        }
        for (e0 e0Var2 : this.I) {
            e0Var2.e(j4, 1, a10, 0, null);
        }
    }

    private void p(a.b bVar, long j4) throws ParserException {
        if (!this.f22699p.isEmpty()) {
            this.f22699p.peek().e(bVar);
            return;
        }
        int i4 = bVar.f22633a;
        if (i4 != 1936286840) {
            if (i4 == 1701671783) {
                o(bVar.f22637w1);
                return;
            }
            return;
        }
        Pair<Long, com.google.android.exoplayer2.extractor.e> A = A(bVar.f22637w1, j4);
        this.B = ((Long) A.first).longValue();
        this.H.q((b0) A.second);
        this.K = true;
    }

    private void q(a.C0165a c0165a) throws ParserException {
        u(c0165a, this.f22690g, this.f22688e != null, this.f22687d, this.f22694k);
        DrmInitData i4 = i(c0165a.f22635x1);
        if (i4 != null) {
            int size = this.f22690g.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f22690g.valueAt(i10).n(i4);
            }
        }
        if (this.f22709z != com.google.android.exoplayer2.i.f23649b) {
            int size2 = this.f22690g.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.f22690g.valueAt(i11).l(this.f22709z);
            }
            this.f22709z = com.google.android.exoplayer2.i.f23649b;
        }
    }

    private void r(a.C0165a c0165a) throws ParserException {
        int i4 = 0;
        com.google.android.exoplayer2.util.a.j(this.f22688e == null, "Unexpected moov box.");
        DrmInitData i10 = i(c0165a.f22635x1);
        a.C0165a c0165a2 = (a.C0165a) com.google.android.exoplayer2.util.a.g(c0165a.g(com.google.android.exoplayer2.extractor.mp4.a.f22593l0));
        SparseArray<com.google.android.exoplayer2.extractor.mp4.c> sparseArray = new SparseArray<>();
        int size = c0165a2.f22635x1.size();
        long j4 = -9223372036854775807L;
        for (int i11 = 0; i11 < size; i11++) {
            a.b bVar = c0165a2.f22635x1.get(i11);
            int i12 = bVar.f22633a;
            if (i12 == 1953654136) {
                Pair<Integer, com.google.android.exoplayer2.extractor.mp4.c> E = E(bVar.f22637w1);
                sparseArray.put(((Integer) E.first).intValue(), (com.google.android.exoplayer2.extractor.mp4.c) E.second);
            } else if (i12 == 1835362404) {
                j4 = t(bVar.f22637w1);
            }
        }
        List<r> z9 = com.google.android.exoplayer2.extractor.mp4.b.z(c0165a, new com.google.android.exoplayer2.extractor.w(), j4, i10, (this.f22687d & 16) != 0, false, new com.google.common.base.q() { // from class: com.google.android.exoplayer2.extractor.mp4.f
            @Override // com.google.common.base.q
            public final Object apply(Object obj) {
                return g.this.m((o) obj);
            }
        });
        int size2 = z9.size();
        if (this.f22690g.size() == 0) {
            while (i4 < size2) {
                r rVar = z9.get(i4);
                o oVar = rVar.f22848a;
                this.f22690g.put(oVar.f22812a, new c(this.H.f(i4, oVar.f22813b), rVar, h(sparseArray, oVar.f22812a)));
                this.A = Math.max(this.A, oVar.f22816e);
                i4++;
            }
            this.H.t();
            return;
        }
        com.google.android.exoplayer2.util.a.i(this.f22690g.size() == size2);
        while (i4 < size2) {
            r rVar2 = z9.get(i4);
            o oVar2 = rVar2.f22848a;
            this.f22690g.get(oVar2.f22812a).j(rVar2, h(sparseArray, oVar2.f22812a));
            i4++;
        }
    }

    private void s(long j4) {
        while (!this.f22700q.isEmpty()) {
            b removeFirst = this.f22700q.removeFirst();
            this.f22708y -= removeFirst.f22711b;
            long j10 = removeFirst.f22710a + j4;
            u0 u0Var = this.f22696m;
            if (u0Var != null) {
                j10 = u0Var.a(j10);
            }
            for (e0 e0Var : this.I) {
                e0Var.e(j10, 1, removeFirst.f22711b, this.f22708y, null);
            }
        }
    }

    private static long t(h0 h0Var) {
        h0Var.S(8);
        return com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o()) == 0 ? h0Var.I() : h0Var.L();
    }

    private static void u(a.C0165a c0165a, SparseArray<c> sparseArray, boolean z9, int i4, byte[] bArr) throws ParserException {
        int size = c0165a.f22636y1.size();
        for (int i10 = 0; i10 < size; i10++) {
            a.C0165a c0165a2 = c0165a.f22636y1.get(i10);
            if (c0165a2.f22633a == 1953653094) {
                D(c0165a2, sparseArray, z9, i4, bArr);
            }
        }
    }

    private static void v(h0 h0Var, q qVar) throws ParserException {
        h0Var.S(8);
        int o9 = h0Var.o();
        if ((com.google.android.exoplayer2.extractor.mp4.a.b(o9) & 1) == 1) {
            h0Var.T(8);
        }
        int K = h0Var.K();
        if (K == 1) {
            qVar.f22832d += com.google.android.exoplayer2.extractor.mp4.a.c(o9) == 0 ? h0Var.I() : h0Var.L();
            return;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append("Unexpected saio entry count: ");
        sb.append(K);
        throw new ParserException(sb.toString());
    }

    private static void w(p pVar, h0 h0Var, q qVar) throws ParserException {
        int i4;
        int i10 = pVar.f22827d;
        h0Var.S(8);
        if ((com.google.android.exoplayer2.extractor.mp4.a.b(h0Var.o()) & 1) == 1) {
            h0Var.T(8);
        }
        int G = h0Var.G();
        int K = h0Var.K();
        if (K <= qVar.f22834f) {
            if (G == 0) {
                boolean[] zArr = qVar.f22842n;
                i4 = 0;
                for (int i11 = 0; i11 < K; i11++) {
                    int G2 = h0Var.G();
                    i4 += G2;
                    zArr[i11] = G2 > i10;
                }
            } else {
                i4 = (G * K) + 0;
                Arrays.fill(qVar.f22842n, 0, K, G > i10);
            }
            Arrays.fill(qVar.f22842n, K, qVar.f22834f, false);
            if (i4 > 0) {
                qVar.d(i4);
                return;
            }
            return;
        }
        int i12 = qVar.f22834f;
        StringBuilder sb = new StringBuilder(78);
        sb.append("Saiz sample count ");
        sb.append(K);
        sb.append(" is greater than fragment sample count");
        sb.append(i12);
        throw new ParserException(sb.toString());
    }

    private static void x(a.C0165a c0165a, @Nullable String str, q qVar) throws ParserException {
        byte[] bArr = null;
        h0 h0Var = null;
        h0 h0Var2 = null;
        for (int i4 = 0; i4 < c0165a.f22635x1.size(); i4++) {
            a.b bVar = c0165a.f22635x1.get(i4);
            h0 h0Var3 = bVar.f22637w1;
            int i10 = bVar.f22633a;
            if (i10 == 1935828848) {
                h0Var3.S(12);
                if (h0Var3.o() == R) {
                    h0Var = h0Var3;
                }
            } else if (i10 == 1936158820) {
                h0Var3.S(12);
                if (h0Var3.o() == R) {
                    h0Var2 = h0Var3;
                }
            }
        }
        if (h0Var == null || h0Var2 == null) {
            return;
        }
        h0Var.S(8);
        int c10 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o());
        h0Var.T(4);
        if (c10 == 1) {
            h0Var.T(4);
        }
        if (h0Var.o() == 1) {
            h0Var2.S(8);
            int c11 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var2.o());
            h0Var2.T(4);
            if (c11 == 1) {
                if (h0Var2.I() == 0) {
                    throw new ParserException("Variable length description in sgpd found (unsupported)");
                }
            } else if (c11 >= 2) {
                h0Var2.T(4);
            }
            if (h0Var2.I() == 1) {
                h0Var2.T(1);
                int G = h0Var2.G();
                int i11 = (G & com.google.android.exoplayer2.extractor.ts.a0.A) >> 4;
                int i12 = G & 15;
                boolean z9 = h0Var2.G() == 1;
                if (z9) {
                    int G2 = h0Var2.G();
                    byte[] bArr2 = new byte[16];
                    h0Var2.k(bArr2, 0, 16);
                    if (G2 == 0) {
                        int G3 = h0Var2.G();
                        bArr = new byte[G3];
                        h0Var2.k(bArr, 0, G3);
                    }
                    qVar.f22841m = true;
                    qVar.f22843o = new p(z9, str, G2, bArr2, i11, i12, bArr);
                    return;
                }
                return;
            }
            throw new ParserException("Entry count in sgpd != 1 (unsupported).");
        }
        throw new ParserException("Entry count in sbgp != 1 (unsupported).");
    }

    private static void y(h0 h0Var, int i4, q qVar) throws ParserException {
        h0Var.S(i4 + 8);
        int b10 = com.google.android.exoplayer2.extractor.mp4.a.b(h0Var.o());
        if ((b10 & 1) == 0) {
            boolean z9 = (b10 & 2) != 0;
            int K = h0Var.K();
            if (K == 0) {
                Arrays.fill(qVar.f22842n, 0, qVar.f22834f, false);
                return;
            } else if (K == qVar.f22834f) {
                Arrays.fill(qVar.f22842n, 0, K, z9);
                qVar.d(h0Var.a());
                qVar.b(h0Var);
                return;
            } else {
                int i10 = qVar.f22834f;
                StringBuilder sb = new StringBuilder(80);
                sb.append("Senc sample count ");
                sb.append(K);
                sb.append(" is different from fragment sample count");
                sb.append(i10);
                throw new ParserException(sb.toString());
            }
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    private static void z(h0 h0Var, q qVar) throws ParserException {
        y(h0Var, 0, qVar);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        int size = this.f22690g.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.f22690g.valueAt(i4).k();
        }
        this.f22700q.clear();
        this.f22708y = 0;
        this.f22709z = j10;
        this.f22699p.clear();
        g();
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        return n.b(lVar);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(com.google.android.exoplayer2.extractor.l lVar, z zVar) throws IOException {
        while (true) {
            int i4 = this.f22702s;
            if (i4 != 0) {
                if (i4 == 1) {
                    K(lVar);
                } else if (i4 != 2) {
                    if (M(lVar)) {
                        return 0;
                    }
                } else {
                    L(lVar);
                }
            } else if (!J(lVar)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(com.google.android.exoplayer2.extractor.m mVar) {
        this.H = mVar;
        g();
        k();
        o oVar = this.f22688e;
        if (oVar != null) {
            this.f22690g.put(0, new c(mVar.f(0, oVar.f22813b), new r(this.f22688e, new long[0], new int[0], 0, new long[0], new int[0], 0L), new com.google.android.exoplayer2.extractor.mp4.c(0, 0, 0, 0)));
            this.H.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public o m(@Nullable o oVar) {
        return oVar;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }

    public g(int i4) {
        this(i4, null);
    }

    public g(int i4, @Nullable u0 u0Var) {
        this(i4, u0Var, null, Collections.emptyList());
    }

    public g(int i4, @Nullable u0 u0Var, @Nullable o oVar) {
        this(i4, u0Var, oVar, Collections.emptyList());
    }

    public g(int i4, @Nullable u0 u0Var, @Nullable o oVar, List<Format> list) {
        this(i4, u0Var, oVar, list, null);
    }

    public g(int i4, @Nullable u0 u0Var, @Nullable o oVar, List<Format> list, @Nullable e0 e0Var) {
        this.f22687d = i4;
        this.f22696m = u0Var;
        this.f22688e = oVar;
        this.f22689f = Collections.unmodifiableList(list);
        this.f22701r = e0Var;
        this.f22697n = new com.google.android.exoplayer2.metadata.emsg.b();
        this.f22698o = new h0(16);
        this.f22691h = new h0(com.google.android.exoplayer2.util.b0.f27494b);
        this.f22692i = new h0(5);
        this.f22693j = new h0();
        byte[] bArr = new byte[16];
        this.f22694k = bArr;
        this.f22695l = new h0(bArr);
        this.f22699p = new ArrayDeque<>();
        this.f22700q = new ArrayDeque<>();
        this.f22690g = new SparseArray<>();
        this.A = com.google.android.exoplayer2.i.f23649b;
        this.f22709z = com.google.android.exoplayer2.i.f23649b;
        this.B = com.google.android.exoplayer2.i.f23649b;
        this.H = com.google.android.exoplayer2.extractor.m.H0;
        this.I = new e0[0];
        this.J = new e0[0];
    }
}
