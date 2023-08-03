package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.mp4.a;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: Mp4Extractor.java */
/* loaded from: classes2.dex */
public final class k implements com.google.android.exoplayer2.extractor.k, b0 {
    public static final com.google.android.exoplayer2.extractor.q B = i.f22751b;
    public static final int C = 1;
    public static final int D = 2;
    public static final int E = 4;
    private static final int F = 0;
    private static final int G = 1;
    private static final int H = 2;
    private static final int I = 3;
    private static final int J = 0;
    private static final int K = 1;
    private static final int L = 2;
    private static final long M = 262144;
    private static final long N = 10485760;
    @Nullable
    private MotionPhotoMetadata A;

    /* renamed from: d  reason: collision with root package name */
    private final int f22753d;

    /* renamed from: e  reason: collision with root package name */
    private final h0 f22754e;

    /* renamed from: f  reason: collision with root package name */
    private final h0 f22755f;

    /* renamed from: g  reason: collision with root package name */
    private final h0 f22756g;

    /* renamed from: h  reason: collision with root package name */
    private final h0 f22757h;

    /* renamed from: i  reason: collision with root package name */
    private final ArrayDeque<a.C0165a> f22758i;

    /* renamed from: j  reason: collision with root package name */
    private final m f22759j;

    /* renamed from: k  reason: collision with root package name */
    private final List<Metadata.Entry> f22760k;

    /* renamed from: l  reason: collision with root package name */
    private int f22761l;

    /* renamed from: m  reason: collision with root package name */
    private int f22762m;

    /* renamed from: n  reason: collision with root package name */
    private long f22763n;

    /* renamed from: o  reason: collision with root package name */
    private int f22764o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private h0 f22765p;

    /* renamed from: q  reason: collision with root package name */
    private int f22766q;

    /* renamed from: r  reason: collision with root package name */
    private int f22767r;

    /* renamed from: s  reason: collision with root package name */
    private int f22768s;

    /* renamed from: t  reason: collision with root package name */
    private int f22769t;

    /* renamed from: u  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.m f22770u;

    /* renamed from: v  reason: collision with root package name */
    private b[] f22771v;

    /* renamed from: w  reason: collision with root package name */
    private long[][] f22772w;

    /* renamed from: x  reason: collision with root package name */
    private int f22773x;

    /* renamed from: y  reason: collision with root package name */
    private long f22774y;

    /* renamed from: z  reason: collision with root package name */
    private int f22775z;

    /* compiled from: Mp4Extractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mp4Extractor.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final o f22776a;

        /* renamed from: b  reason: collision with root package name */
        public final r f22777b;

        /* renamed from: c  reason: collision with root package name */
        public final e0 f22778c;

        /* renamed from: d  reason: collision with root package name */
        public int f22779d;

        public b(o oVar, r rVar, e0 e0Var) {
            this.f22776a = oVar;
            this.f22777b = rVar;
            this.f22778c = e0Var;
        }
    }

    public k() {
        this(0);
    }

    private boolean A(com.google.android.exoplayer2.extractor.l lVar, z zVar) throws IOException {
        boolean z9;
        long j4 = this.f22763n - this.f22764o;
        long position = lVar.getPosition() + j4;
        h0 h0Var = this.f22765p;
        if (h0Var != null) {
            lVar.readFully(h0Var.d(), this.f22764o, (int) j4);
            if (this.f22762m == 1718909296) {
                this.f22775z = w(h0Var);
            } else if (!this.f22758i.isEmpty()) {
                this.f22758i.peek().e(new a.b(this.f22762m, h0Var));
            }
        } else if (j4 < 262144) {
            lVar.o((int) j4);
        } else {
            zVar.f23544a = lVar.getPosition() + j4;
            z9 = true;
            u(position);
            return (z9 || this.f22761l == 2) ? false : true;
        }
        z9 = false;
        u(position);
        if (z9) {
        }
    }

    private int B(com.google.android.exoplayer2.extractor.l lVar, z zVar) throws IOException {
        long position = lVar.getPosition();
        if (this.f22766q == -1) {
            int p9 = p(position);
            this.f22766q = p9;
            if (p9 == -1) {
                return -1;
            }
        }
        b bVar = ((b[]) z0.k(this.f22771v))[this.f22766q];
        e0 e0Var = bVar.f22778c;
        int i4 = bVar.f22779d;
        r rVar = bVar.f22777b;
        long j4 = rVar.f22850c[i4];
        int i10 = rVar.f22851d[i4];
        long j10 = (j4 - position) + this.f22767r;
        if (j10 >= 0 && j10 < 262144) {
            if (bVar.f22776a.f22818g == 1) {
                j10 += 8;
                i10 -= 8;
            }
            lVar.o((int) j10);
            o oVar = bVar.f22776a;
            if (oVar.f22821j != 0) {
                byte[] d4 = this.f22755f.d();
                d4[0] = 0;
                d4[1] = 0;
                d4[2] = 0;
                int i11 = bVar.f22776a.f22821j;
                int i12 = 4 - i11;
                while (this.f22768s < i10) {
                    int i13 = this.f22769t;
                    if (i13 == 0) {
                        lVar.readFully(d4, i12, i11);
                        this.f22767r += i11;
                        this.f22755f.S(0);
                        int o9 = this.f22755f.o();
                        if (o9 >= 0) {
                            this.f22769t = o9;
                            this.f22754e.S(0);
                            e0Var.c(this.f22754e, 4);
                            this.f22768s += 4;
                            i10 += i12;
                        } else {
                            throw new ParserException("Invalid NAL length");
                        }
                    } else {
                        int b10 = e0Var.b(lVar, i13, false);
                        this.f22767r += b10;
                        this.f22768s += b10;
                        this.f22769t -= b10;
                    }
                }
            } else {
                if (a0.O.equals(oVar.f22817f.sampleMimeType)) {
                    if (this.f22768s == 0) {
                        com.google.android.exoplayer2.audio.c.a(i10, this.f22756g);
                        e0Var.c(this.f22756g, 7);
                        this.f22768s += 7;
                    }
                    i10 += 7;
                }
                while (true) {
                    int i14 = this.f22768s;
                    if (i14 >= i10) {
                        break;
                    }
                    int b11 = e0Var.b(lVar, i10 - i14, false);
                    this.f22767r += b11;
                    this.f22768s += b11;
                    this.f22769t -= b11;
                }
            }
            r rVar2 = bVar.f22777b;
            e0Var.e(rVar2.f22853f[i4], rVar2.f22854g[i4], i10, 0, null);
            bVar.f22779d++;
            this.f22766q = -1;
            this.f22767r = 0;
            this.f22768s = 0;
            this.f22769t = 0;
            return 0;
        }
        zVar.f23544a = j4;
        return 1;
    }

    private int C(com.google.android.exoplayer2.extractor.l lVar, z zVar) throws IOException {
        int c10 = this.f22759j.c(lVar, zVar, this.f22760k);
        if (c10 == 1 && zVar.f23544a == 0) {
            n();
        }
        return c10;
    }

    private static boolean D(int i4) {
        return i4 == 1836019574 || i4 == 1953653099 || i4 == 1835297121 || i4 == 1835626086 || i4 == 1937007212 || i4 == 1701082227 || i4 == 1835365473;
    }

    private static boolean E(int i4) {
        return i4 == 1835296868 || i4 == 1836476516 || i4 == 1751411826 || i4 == 1937011556 || i4 == 1937011827 || i4 == 1937011571 || i4 == 1668576371 || i4 == 1701606260 || i4 == 1937011555 || i4 == 1937011578 || i4 == 1937013298 || i4 == 1937007471 || i4 == 1668232756 || i4 == 1953196132 || i4 == 1718909296 || i4 == 1969517665 || i4 == 1801812339 || i4 == 1768715124;
    }

    @RequiresNonNull({"tracks"})
    private void F(long j4) {
        b[] bVarArr;
        for (b bVar : this.f22771v) {
            r rVar = bVar.f22777b;
            int a10 = rVar.a(j4);
            if (a10 == -1) {
                a10 = rVar.b(j4);
            }
            bVar.f22779d = a10;
        }
    }

    private static int l(int i4) {
        if (i4 != 1751476579) {
            return i4 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] m(b[] bVarArr) {
        long[][] jArr = new long[bVarArr.length];
        int[] iArr = new int[bVarArr.length];
        long[] jArr2 = new long[bVarArr.length];
        boolean[] zArr = new boolean[bVarArr.length];
        for (int i4 = 0; i4 < bVarArr.length; i4++) {
            jArr[i4] = new long[bVarArr[i4].f22777b.f22849b];
            jArr2[i4] = bVarArr[i4].f22777b.f22853f[0];
        }
        long j4 = 0;
        int i10 = 0;
        while (i10 < bVarArr.length) {
            long j10 = Long.MAX_VALUE;
            int i11 = -1;
            for (int i12 = 0; i12 < bVarArr.length; i12++) {
                if (!zArr[i12] && jArr2[i12] <= j10) {
                    j10 = jArr2[i12];
                    i11 = i12;
                }
            }
            int i13 = iArr[i11];
            jArr[i11][i13] = j4;
            j4 += bVarArr[i11].f22777b.f22851d[i13];
            int i14 = i13 + 1;
            iArr[i11] = i14;
            if (i14 < jArr[i11].length) {
                jArr2[i11] = bVarArr[i11].f22777b.f22853f[i14];
            } else {
                zArr[i11] = true;
                i10++;
            }
        }
        return jArr;
    }

    private void n() {
        this.f22761l = 0;
        this.f22764o = 0;
    }

    private static int o(r rVar, long j4) {
        int a10 = rVar.a(j4);
        return a10 == -1 ? rVar.b(j4) : a10;
    }

    private int p(long j4) {
        int i4 = -1;
        int i10 = -1;
        long j10 = Long.MAX_VALUE;
        boolean z9 = true;
        long j11 = Long.MAX_VALUE;
        boolean z10 = true;
        long j12 = Long.MAX_VALUE;
        for (int i11 = 0; i11 < ((b[]) z0.k(this.f22771v)).length; i11++) {
            b bVar = this.f22771v[i11];
            int i12 = bVar.f22779d;
            r rVar = bVar.f22777b;
            if (i12 != rVar.f22849b) {
                long j13 = rVar.f22850c[i12];
                long j14 = ((long[][]) z0.k(this.f22772w))[i11][i12];
                long j15 = j13 - j4;
                boolean z11 = j15 < 0 || j15 >= 262144;
                if ((!z11 && z10) || (z11 == z10 && j15 < j12)) {
                    z10 = z11;
                    j12 = j15;
                    i10 = i11;
                    j11 = j14;
                }
                if (j14 < j10) {
                    z9 = z11;
                    i4 = i11;
                    j10 = j14;
                }
            }
        }
        return (j10 == Long.MAX_VALUE || !z9 || j11 < j10 + N) ? i10 : i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o q(o oVar) {
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.k[] r() {
        return new com.google.android.exoplayer2.extractor.k[]{new k()};
    }

    private static long s(r rVar, long j4, long j10) {
        int o9 = o(rVar, j4);
        return o9 == -1 ? j10 : Math.min(rVar.f22850c[o9], j10);
    }

    private void t(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        this.f22756g.O(8);
        lVar.s(this.f22756g.d(), 0, 8);
        com.google.android.exoplayer2.extractor.mp4.b.d(this.f22756g);
        lVar.o(this.f22756g.e());
        lVar.h();
    }

    private void u(long j4) throws ParserException {
        while (!this.f22758i.isEmpty() && this.f22758i.peek().f22634w1 == j4) {
            a.C0165a pop = this.f22758i.pop();
            if (pop.f22633a == 1836019574) {
                x(pop);
                this.f22758i.clear();
                this.f22761l = 2;
            } else if (!this.f22758i.isEmpty()) {
                this.f22758i.peek().d(pop);
            }
        }
        if (this.f22761l != 2) {
            n();
        }
    }

    private void v() {
        if (this.f22775z != 2 || (this.f22753d & 2) == 0) {
            return;
        }
        com.google.android.exoplayer2.extractor.m mVar = (com.google.android.exoplayer2.extractor.m) com.google.android.exoplayer2.util.a.g(this.f22770u);
        mVar.f(0, 4).d(new Format.b().X(this.A == null ? null : new Metadata(this.A)).E());
        mVar.t();
        mVar.q(new b0.b(com.google.android.exoplayer2.i.f23649b));
    }

    private static int w(h0 h0Var) {
        h0Var.S(8);
        int l10 = l(h0Var.o());
        if (l10 != 0) {
            return l10;
        }
        h0Var.T(4);
        while (h0Var.a() > 0) {
            int l11 = l(h0Var.o());
            if (l11 != 0) {
                return l11;
            }
        }
        return 0;
    }

    private void x(a.C0165a c0165a) throws ParserException {
        Metadata metadata;
        Metadata metadata2;
        ArrayList arrayList;
        List<r> list;
        int i4;
        int i10;
        ArrayList arrayList2 = new ArrayList();
        boolean z9 = this.f22775z == 1;
        w wVar = new w();
        a.b h4 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.Z0);
        if (h4 != null) {
            Pair<Metadata, Metadata> A = com.google.android.exoplayer2.extractor.mp4.b.A(h4);
            Metadata metadata3 = (Metadata) A.first;
            Metadata metadata4 = (Metadata) A.second;
            if (metadata3 != null) {
                wVar.c(metadata3);
            }
            metadata = metadata4;
            metadata2 = metadata3;
        } else {
            metadata = null;
            metadata2 = null;
        }
        a.C0165a g4 = c0165a.g(com.google.android.exoplayer2.extractor.mp4.a.f22561a1);
        Metadata m9 = g4 != null ? com.google.android.exoplayer2.extractor.mp4.b.m(g4) : null;
        List<r> z10 = com.google.android.exoplayer2.extractor.mp4.b.z(c0165a, wVar, com.google.android.exoplayer2.i.f23649b, null, (this.f22753d & 1) != 0, z9, j.f22752a);
        com.google.android.exoplayer2.extractor.m mVar = (com.google.android.exoplayer2.extractor.m) com.google.android.exoplayer2.util.a.g(this.f22770u);
        int size = z10.size();
        int i11 = 0;
        int i12 = -1;
        long j4 = com.google.android.exoplayer2.i.f23649b;
        while (i11 < size) {
            r rVar = z10.get(i11);
            if (rVar.f22849b == 0) {
                list = z10;
                i4 = size;
                arrayList = arrayList2;
            } else {
                o oVar = rVar.f22848a;
                int i13 = i12;
                arrayList = arrayList2;
                long j10 = oVar.f22816e;
                if (j10 == com.google.android.exoplayer2.i.f23649b) {
                    j10 = rVar.f22855h;
                }
                long max = Math.max(j4, j10);
                list = z10;
                i4 = size;
                b bVar = new b(oVar, rVar, mVar.f(i11, oVar.f22813b));
                Format.b buildUpon = oVar.f22817f.buildUpon();
                buildUpon.W(rVar.f22852e + 30);
                if (oVar.f22813b == 2 && j10 > 0 && (i10 = rVar.f22849b) > 1) {
                    buildUpon.P(i10 / (((float) j10) / 1000000.0f));
                }
                h.k(oVar.f22813b, wVar, buildUpon);
                int i14 = oVar.f22813b;
                Metadata[] metadataArr = new Metadata[2];
                metadataArr[0] = metadata;
                metadataArr[1] = this.f22760k.isEmpty() ? null : new Metadata(this.f22760k);
                h.l(i14, metadata2, m9, buildUpon, metadataArr);
                bVar.f22778c.d(buildUpon.E());
                if (oVar.f22813b == 2 && i13 == -1) {
                    i12 = arrayList.size();
                    arrayList.add(bVar);
                    j4 = max;
                }
                i12 = i13;
                arrayList.add(bVar);
                j4 = max;
            }
            i11++;
            arrayList2 = arrayList;
            z10 = list;
            size = i4;
        }
        this.f22773x = i12;
        this.f22774y = j4;
        b[] bVarArr = (b[]) arrayList2.toArray(new b[0]);
        this.f22771v = bVarArr;
        this.f22772w = m(bVarArr);
        mVar.t();
        mVar.q(this);
    }

    private void y(long j4) {
        if (this.f22762m == 1836086884) {
            int i4 = this.f22764o;
            this.A = new MotionPhotoMetadata(0L, j4, com.google.android.exoplayer2.i.f23649b, j4 + i4, this.f22763n - i4);
        }
    }

    private boolean z(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        a.C0165a peek;
        if (this.f22764o == 0) {
            if (!lVar.i(this.f22757h.d(), 0, 8, true)) {
                v();
                return false;
            }
            this.f22764o = 8;
            this.f22757h.S(0);
            this.f22763n = this.f22757h.I();
            this.f22762m = this.f22757h.o();
        }
        long j4 = this.f22763n;
        if (j4 == 1) {
            lVar.readFully(this.f22757h.d(), 8, 8);
            this.f22764o += 8;
            this.f22763n = this.f22757h.L();
        } else if (j4 == 0) {
            long length = lVar.getLength();
            if (length == -1 && (peek = this.f22758i.peek()) != null) {
                length = peek.f22634w1;
            }
            if (length != -1) {
                this.f22763n = (length - lVar.getPosition()) + this.f22764o;
            }
        }
        if (this.f22763n >= this.f22764o) {
            if (D(this.f22762m)) {
                long position = lVar.getPosition();
                long j10 = this.f22763n;
                int i4 = this.f22764o;
                long j11 = (position + j10) - i4;
                if (j10 != i4 && this.f22762m == 1835365473) {
                    t(lVar);
                }
                this.f22758i.push(new a.C0165a(this.f22762m, j11));
                if (this.f22763n == this.f22764o) {
                    u(j11);
                } else {
                    n();
                }
            } else if (E(this.f22762m)) {
                com.google.android.exoplayer2.util.a.i(this.f22764o == 8);
                com.google.android.exoplayer2.util.a.i(this.f22763n <= 2147483647L);
                h0 h0Var = new h0((int) this.f22763n);
                System.arraycopy(this.f22757h.d(), 0, h0Var.d(), 0, 8);
                this.f22765p = h0Var;
                this.f22761l = 1;
            } else {
                y(lVar.getPosition() - this.f22764o);
                this.f22765p = null;
                this.f22761l = 1;
            }
            return true;
        }
        throw new ParserException("Atom size less than header length (unsupported).");
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        this.f22758i.clear();
        this.f22764o = 0;
        this.f22766q = -1;
        this.f22767r = 0;
        this.f22768s = 0;
        this.f22769t = 0;
        if (j4 == 0) {
            if (this.f22761l != 3) {
                n();
                return;
            }
            this.f22759j.g();
            this.f22760k.clear();
        } else if (this.f22771v != null) {
            F(j10);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        return n.e(lVar, (this.f22753d & 2) != 0);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(com.google.android.exoplayer2.extractor.l lVar, z zVar) throws IOException {
        while (true) {
            int i4 = this.f22761l;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 == 3) {
                            return C(lVar, zVar);
                        }
                        throw new IllegalStateException();
                    }
                    return B(lVar, zVar);
                } else if (A(lVar, zVar)) {
                    return 1;
                }
            } else if (!z(lVar)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(com.google.android.exoplayer2.extractor.m mVar) {
        this.f22770u = mVar;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        long j10;
        long j11;
        long j12;
        long j13;
        int b10;
        if (((b[]) com.google.android.exoplayer2.util.a.g(this.f22771v)).length == 0) {
            return new b0.a(c0.f22123c);
        }
        int i4 = this.f22773x;
        if (i4 != -1) {
            r rVar = this.f22771v[i4].f22777b;
            int o9 = o(rVar, j4);
            if (o9 == -1) {
                return new b0.a(c0.f22123c);
            }
            long j14 = rVar.f22853f[o9];
            j10 = rVar.f22850c[o9];
            if (j14 >= j4 || o9 >= rVar.f22849b - 1 || (b10 = rVar.b(j4)) == -1 || b10 == o9) {
                j13 = -1;
                j12 = -9223372036854775807L;
            } else {
                j12 = rVar.f22853f[b10];
                j13 = rVar.f22850c[b10];
            }
            j11 = j13;
            j4 = j14;
        } else {
            j10 = Long.MAX_VALUE;
            j11 = -1;
            j12 = -9223372036854775807L;
        }
        int i10 = 0;
        while (true) {
            b[] bVarArr = this.f22771v;
            if (i10 >= bVarArr.length) {
                break;
            }
            if (i10 != this.f22773x) {
                r rVar2 = bVarArr[i10].f22777b;
                long s9 = s(rVar2, j4, j10);
                if (j12 != com.google.android.exoplayer2.i.f23649b) {
                    j11 = s(rVar2, j12, j11);
                }
                j10 = s9;
            }
            i10++;
        }
        c0 c0Var = new c0(j4, j10);
        if (j12 == com.google.android.exoplayer2.i.f23649b) {
            return new b0.a(c0Var);
        }
        return new b0.a(c0Var, new c0(j12, j11));
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f22774y;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }

    public k(int i4) {
        this.f22753d = i4;
        this.f22761l = (i4 & 4) != 0 ? 3 : 0;
        this.f22759j = new m();
        this.f22760k = new ArrayList();
        this.f22757h = new h0(16);
        this.f22758i = new ArrayDeque<>();
        this.f22754e = new h0(com.google.android.exoplayer2.util.b0.f27494b);
        this.f22755f = new h0(4);
        this.f22756g = new h0();
        this.f22766q = -1;
    }
}
