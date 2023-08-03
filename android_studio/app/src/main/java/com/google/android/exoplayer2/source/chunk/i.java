package com.google.android.exoplayer2.source.chunk;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.j2;
import com.google.android.exoplayer2.source.chunk.j;
import com.google.android.exoplayer2.source.h0;
import com.google.android.exoplayer2.source.w0;
import com.google.android.exoplayer2.source.x0;
import com.google.android.exoplayer2.source.y0;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.f0;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: ChunkSampleStream.java */
/* loaded from: classes2.dex */
public class i<T extends j> implements x0, y0, Loader.b<f>, Loader.f {

    /* renamed from: x  reason: collision with root package name */
    private static final String f24830x = "ChunkSampleStream";

    /* renamed from: a  reason: collision with root package name */
    public final int f24831a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f24832b;

    /* renamed from: c  reason: collision with root package name */
    private final Format[] f24833c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f24834d;

    /* renamed from: e  reason: collision with root package name */
    private final T f24835e;

    /* renamed from: f  reason: collision with root package name */
    private final y0.a<i<T>> f24836f;

    /* renamed from: g  reason: collision with root package name */
    private final h0.a f24837g;

    /* renamed from: h  reason: collision with root package name */
    private final f0 f24838h;

    /* renamed from: i  reason: collision with root package name */
    private final Loader f24839i;

    /* renamed from: j  reason: collision with root package name */
    private final h f24840j;

    /* renamed from: k  reason: collision with root package name */
    private final ArrayList<com.google.android.exoplayer2.source.chunk.a> f24841k;

    /* renamed from: l  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.source.chunk.a> f24842l;

    /* renamed from: m  reason: collision with root package name */
    private final w0 f24843m;

    /* renamed from: n  reason: collision with root package name */
    private final w0[] f24844n;

    /* renamed from: o  reason: collision with root package name */
    private final c f24845o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private f f24846p;

    /* renamed from: q  reason: collision with root package name */
    private Format f24847q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b<T> f24848r;

    /* renamed from: s  reason: collision with root package name */
    private long f24849s;

    /* renamed from: t  reason: collision with root package name */
    private long f24850t;

    /* renamed from: u  reason: collision with root package name */
    private int f24851u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private com.google.android.exoplayer2.source.chunk.a f24852v;

    /* renamed from: w  reason: collision with root package name */
    boolean f24853w;

    /* compiled from: ChunkSampleStream.java */
    /* loaded from: classes2.dex */
    public final class a implements x0 {

        /* renamed from: a  reason: collision with root package name */
        public final i<T> f24854a;

        /* renamed from: b  reason: collision with root package name */
        private final w0 f24855b;

        /* renamed from: c  reason: collision with root package name */
        private final int f24856c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f24857d;

        public a(i<T> iVar, w0 w0Var, int i4) {
            this.f24854a = iVar;
            this.f24855b = w0Var;
            this.f24856c = i4;
        }

        private void b() {
            if (this.f24857d) {
                return;
            }
            i.this.f24837g.i(i.this.f24832b[this.f24856c], i.this.f24833c[this.f24856c], 0, null, i.this.f24850t);
            this.f24857d = true;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public void a() {
        }

        public void c() {
            com.google.android.exoplayer2.util.a.i(i.this.f24834d[this.f24856c]);
            i.this.f24834d[this.f24856c] = false;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public boolean f() {
            return !i.this.J() && this.f24855b.L(i.this.f24853w);
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int q(v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4) {
            if (i.this.J()) {
                return -3;
            }
            if (i.this.f24852v == null || i.this.f24852v.i(this.f24856c + 1) > this.f24855b.D()) {
                b();
                return this.f24855b.T(v0Var, decoderInputBuffer, i4, i.this.f24853w);
            }
            return -3;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int t(long j4) {
            if (i.this.J()) {
                return 0;
            }
            int F = this.f24855b.F(j4, i.this.f24853w);
            if (i.this.f24852v != null) {
                F = Math.min(F, i.this.f24852v.i(this.f24856c + 1) - this.f24855b.D());
            }
            this.f24855b.f0(F);
            if (F > 0) {
                b();
            }
            return F;
        }
    }

    /* compiled from: ChunkSampleStream.java */
    /* loaded from: classes2.dex */
    public interface b<T extends j> {
        void a(i<T> iVar);
    }

    public i(int i4, @Nullable int[] iArr, @Nullable Format[] formatArr, T t9, y0.a<i<T>> aVar, com.google.android.exoplayer2.upstream.b bVar, long j4, u uVar, s.a aVar2, f0 f0Var, h0.a aVar3) {
        this.f24831a = i4;
        int i10 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f24832b = iArr;
        this.f24833c = formatArr == null ? new Format[0] : formatArr;
        this.f24835e = t9;
        this.f24836f = aVar;
        this.f24837g = aVar3;
        this.f24838h = f0Var;
        this.f24839i = new Loader(f24830x);
        this.f24840j = new h();
        ArrayList<com.google.android.exoplayer2.source.chunk.a> arrayList = new ArrayList<>();
        this.f24841k = arrayList;
        this.f24842l = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f24844n = new w0[length];
        this.f24834d = new boolean[length];
        int i11 = length + 1;
        int[] iArr2 = new int[i11];
        w0[] w0VarArr = new w0[i11];
        w0 k10 = w0.k(bVar, (Looper) com.google.android.exoplayer2.util.a.g(Looper.myLooper()), uVar, aVar2);
        this.f24843m = k10;
        iArr2[0] = i4;
        w0VarArr[0] = k10;
        while (i10 < length) {
            w0 l10 = w0.l(bVar);
            this.f24844n[i10] = l10;
            int i12 = i10 + 1;
            w0VarArr[i12] = l10;
            iArr2[i12] = this.f24832b[i10];
            i10 = i12;
        }
        this.f24845o = new c(iArr2, w0VarArr);
        this.f24849s = j4;
        this.f24850t = j4;
    }

    private void C(int i4) {
        int min = Math.min(P(i4, 0), this.f24851u);
        if (min > 0) {
            z0.d1(this.f24841k, 0, min);
            this.f24851u -= min;
        }
    }

    private void D(int i4) {
        com.google.android.exoplayer2.util.a.i(!this.f24839i.k());
        int size = this.f24841k.size();
        while (true) {
            if (i4 >= size) {
                i4 = -1;
                break;
            } else if (!H(i4)) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 == -1) {
            return;
        }
        long j4 = G().f24826h;
        com.google.android.exoplayer2.source.chunk.a E = E(i4);
        if (this.f24841k.isEmpty()) {
            this.f24849s = this.f24850t;
        }
        this.f24853w = false;
        this.f24837g.D(this.f24831a, E.f24825g, j4);
    }

    private com.google.android.exoplayer2.source.chunk.a E(int i4) {
        com.google.android.exoplayer2.source.chunk.a aVar = this.f24841k.get(i4);
        ArrayList<com.google.android.exoplayer2.source.chunk.a> arrayList = this.f24841k;
        z0.d1(arrayList, i4, arrayList.size());
        this.f24851u = Math.max(this.f24851u, this.f24841k.size());
        int i10 = 0;
        this.f24843m.v(aVar.i(0));
        while (true) {
            w0[] w0VarArr = this.f24844n;
            if (i10 >= w0VarArr.length) {
                return aVar;
            }
            w0 w0Var = w0VarArr[i10];
            i10++;
            w0Var.v(aVar.i(i10));
        }
    }

    private com.google.android.exoplayer2.source.chunk.a G() {
        ArrayList<com.google.android.exoplayer2.source.chunk.a> arrayList = this.f24841k;
        return arrayList.get(arrayList.size() - 1);
    }

    private boolean H(int i4) {
        int D;
        com.google.android.exoplayer2.source.chunk.a aVar = this.f24841k.get(i4);
        if (this.f24843m.D() > aVar.i(0)) {
            return true;
        }
        int i10 = 0;
        do {
            w0[] w0VarArr = this.f24844n;
            if (i10 >= w0VarArr.length) {
                return false;
            }
            D = w0VarArr[i10].D();
            i10++;
        } while (D <= aVar.i(i10));
        return true;
    }

    private boolean I(f fVar) {
        return fVar instanceof com.google.android.exoplayer2.source.chunk.a;
    }

    private void K() {
        int P = P(this.f24843m.D(), this.f24851u - 1);
        while (true) {
            int i4 = this.f24851u;
            if (i4 > P) {
                return;
            }
            this.f24851u = i4 + 1;
            L(i4);
        }
    }

    private void L(int i4) {
        com.google.android.exoplayer2.source.chunk.a aVar = this.f24841k.get(i4);
        Format format = aVar.f24822d;
        if (!format.equals(this.f24847q)) {
            this.f24837g.i(this.f24831a, format, aVar.f24823e, aVar.f24824f, aVar.f24825g);
        }
        this.f24847q = format;
    }

    private int P(int i4, int i10) {
        do {
            i10++;
            if (i10 >= this.f24841k.size()) {
                return this.f24841k.size() - 1;
            }
        } while (this.f24841k.get(i10).i(0) <= i4);
        return i10 - 1;
    }

    private void S() {
        this.f24843m.W();
        for (w0 w0Var : this.f24844n) {
            w0Var.W();
        }
    }

    public T F() {
        return this.f24835e;
    }

    boolean J() {
        return this.f24849s != com.google.android.exoplayer2.i.f23649b;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: M */
    public void i(f fVar, long j4, long j10, boolean z9) {
        this.f24846p = null;
        this.f24852v = null;
        com.google.android.exoplayer2.source.o oVar = new com.google.android.exoplayer2.source.o(fVar.f24819a, fVar.f24820b, fVar.f(), fVar.e(), j4, j10, fVar.b());
        this.f24838h.f(fVar.f24819a);
        this.f24837g.r(oVar, fVar.f24821c, this.f24831a, fVar.f24822d, fVar.f24823e, fVar.f24824f, fVar.f24825g, fVar.f24826h);
        if (z9) {
            return;
        }
        if (J()) {
            S();
        } else if (I(fVar)) {
            E(this.f24841k.size() - 1);
            if (this.f24841k.isEmpty()) {
                this.f24849s = this.f24850t;
            }
        }
        this.f24836f.f(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: N */
    public void k(f fVar, long j4, long j10) {
        this.f24846p = null;
        this.f24835e.c(fVar);
        com.google.android.exoplayer2.source.o oVar = new com.google.android.exoplayer2.source.o(fVar.f24819a, fVar.f24820b, fVar.f(), fVar.e(), j4, j10, fVar.b());
        this.f24838h.f(fVar.f24819a);
        this.f24837g.u(oVar, fVar.f24821c, this.f24831a, fVar.f24822d, fVar.f24823e, fVar.f24824f, fVar.f24825g, fVar.f24826h);
        this.f24836f.f(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0100  */
    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.exoplayer2.upstream.Loader.c p(com.google.android.exoplayer2.source.chunk.f r37, long r38, long r40, java.io.IOException r42, int r43) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.chunk.i.p(com.google.android.exoplayer2.source.chunk.f, long, long, java.io.IOException, int):com.google.android.exoplayer2.upstream.Loader$c");
    }

    public void Q() {
        R(null);
    }

    public void R(@Nullable b<T> bVar) {
        this.f24848r = bVar;
        this.f24843m.S();
        for (w0 w0Var : this.f24844n) {
            w0Var.S();
        }
        this.f24839i.m(this);
    }

    public void T(long j4) {
        boolean a02;
        this.f24850t = j4;
        if (J()) {
            this.f24849s = j4;
            return;
        }
        com.google.android.exoplayer2.source.chunk.a aVar = null;
        int i4 = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f24841k.size()) {
                break;
            }
            com.google.android.exoplayer2.source.chunk.a aVar2 = this.f24841k.get(i10);
            int i11 = (aVar2.f24825g > j4 ? 1 : (aVar2.f24825g == j4 ? 0 : -1));
            if (i11 == 0 && aVar2.f24790k == com.google.android.exoplayer2.i.f23649b) {
                aVar = aVar2;
                break;
            } else if (i11 > 0) {
                break;
            } else {
                i10++;
            }
        }
        if (aVar != null) {
            a02 = this.f24843m.Z(aVar.i(0));
        } else {
            a02 = this.f24843m.a0(j4, j4 < c());
        }
        if (a02) {
            this.f24851u = P(this.f24843m.D(), 0);
            w0[] w0VarArr = this.f24844n;
            int length = w0VarArr.length;
            while (i4 < length) {
                w0VarArr[i4].a0(j4, true);
                i4++;
            }
            return;
        }
        this.f24849s = j4;
        this.f24853w = false;
        this.f24841k.clear();
        this.f24851u = 0;
        if (this.f24839i.k()) {
            this.f24843m.r();
            w0[] w0VarArr2 = this.f24844n;
            int length2 = w0VarArr2.length;
            while (i4 < length2) {
                w0VarArr2[i4].r();
                i4++;
            }
            this.f24839i.g();
            return;
        }
        this.f24839i.h();
        S();
    }

    public i<T>.a U(long j4, int i4) {
        for (int i10 = 0; i10 < this.f24844n.length; i10++) {
            if (this.f24832b[i10] == i4) {
                com.google.android.exoplayer2.util.a.i(!this.f24834d[i10]);
                this.f24834d[i10] = true;
                this.f24844n[i10].a0(j4, true);
                return new a(this, this.f24844n[i10], i10);
            }
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.source.x0
    public void a() throws IOException {
        this.f24839i.a();
        this.f24843m.O();
        if (this.f24839i.k()) {
            return;
        }
        this.f24835e.a();
    }

    @Override // com.google.android.exoplayer2.source.y0
    public boolean b() {
        return this.f24839i.k();
    }

    @Override // com.google.android.exoplayer2.source.y0
    public long c() {
        if (J()) {
            return this.f24849s;
        }
        if (this.f24853w) {
            return Long.MIN_VALUE;
        }
        return G().f24826h;
    }

    public long d(long j4, j2 j2Var) {
        return this.f24835e.d(j4, j2Var);
    }

    @Override // com.google.android.exoplayer2.source.y0
    public boolean e(long j4) {
        List<com.google.android.exoplayer2.source.chunk.a> list;
        long j10;
        if (this.f24853w || this.f24839i.k() || this.f24839i.j()) {
            return false;
        }
        boolean J = J();
        if (J) {
            list = Collections.emptyList();
            j10 = this.f24849s;
        } else {
            list = this.f24842l;
            j10 = G().f24826h;
        }
        this.f24835e.g(j4, j10, list, this.f24840j);
        h hVar = this.f24840j;
        boolean z9 = hVar.f24829b;
        f fVar = hVar.f24828a;
        hVar.a();
        if (z9) {
            this.f24849s = com.google.android.exoplayer2.i.f23649b;
            this.f24853w = true;
            return true;
        } else if (fVar == null) {
            return false;
        } else {
            this.f24846p = fVar;
            if (I(fVar)) {
                com.google.android.exoplayer2.source.chunk.a aVar = (com.google.android.exoplayer2.source.chunk.a) fVar;
                if (J) {
                    long j11 = aVar.f24825g;
                    long j12 = this.f24849s;
                    if (j11 != j12) {
                        this.f24843m.c0(j12);
                        for (w0 w0Var : this.f24844n) {
                            w0Var.c0(this.f24849s);
                        }
                    }
                    this.f24849s = com.google.android.exoplayer2.i.f23649b;
                }
                aVar.k(this.f24845o);
                this.f24841k.add(aVar);
            } else if (fVar instanceof m) {
                ((m) fVar).g(this.f24845o);
            }
            this.f24837g.A(new com.google.android.exoplayer2.source.o(fVar.f24819a, fVar.f24820b, this.f24839i.n(fVar, this, this.f24838h.d(fVar.f24821c))), fVar.f24821c, this.f24831a, fVar.f24822d, fVar.f24823e, fVar.f24824f, fVar.f24825g, fVar.f24826h);
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.source.x0
    public boolean f() {
        return !J() && this.f24843m.L(this.f24853w);
    }

    @Override // com.google.android.exoplayer2.source.y0
    public long g() {
        if (this.f24853w) {
            return Long.MIN_VALUE;
        }
        if (J()) {
            return this.f24849s;
        }
        long j4 = this.f24850t;
        com.google.android.exoplayer2.source.chunk.a G = G();
        if (!G.h()) {
            if (this.f24841k.size() > 1) {
                ArrayList<com.google.android.exoplayer2.source.chunk.a> arrayList = this.f24841k;
                G = arrayList.get(arrayList.size() - 2);
            } else {
                G = null;
            }
        }
        if (G != null) {
            j4 = Math.max(j4, G.f24826h);
        }
        return Math.max(j4, this.f24843m.A());
    }

    @Override // com.google.android.exoplayer2.source.y0
    public void h(long j4) {
        if (this.f24839i.j() || J()) {
            return;
        }
        if (this.f24839i.k()) {
            f fVar = (f) com.google.android.exoplayer2.util.a.g(this.f24846p);
            if (!(I(fVar) && H(this.f24841k.size() - 1)) && this.f24835e.b(j4, fVar, this.f24842l)) {
                this.f24839i.g();
                if (I(fVar)) {
                    this.f24852v = (com.google.android.exoplayer2.source.chunk.a) fVar;
                    return;
                }
                return;
            }
            return;
        }
        int f10 = this.f24835e.f(j4, this.f24842l);
        if (f10 < this.f24841k.size()) {
            D(f10);
        }
    }

    @Override // com.google.android.exoplayer2.source.x0
    public int q(v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4) {
        if (J()) {
            return -3;
        }
        com.google.android.exoplayer2.source.chunk.a aVar = this.f24852v;
        if (aVar == null || aVar.i(0) > this.f24843m.D()) {
            K();
            return this.f24843m.T(v0Var, decoderInputBuffer, i4, this.f24853w);
        }
        return -3;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.f
    public void r() {
        this.f24843m.U();
        for (w0 w0Var : this.f24844n) {
            w0Var.U();
        }
        this.f24835e.release();
        b<T> bVar = this.f24848r;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    @Override // com.google.android.exoplayer2.source.x0
    public int t(long j4) {
        if (J()) {
            return 0;
        }
        int F = this.f24843m.F(j4, this.f24853w);
        com.google.android.exoplayer2.source.chunk.a aVar = this.f24852v;
        if (aVar != null) {
            F = Math.min(F, aVar.i(0) - this.f24843m.D());
        }
        this.f24843m.f0(F);
        K();
        return F;
    }

    public void v(long j4, boolean z9) {
        if (J()) {
            return;
        }
        int y9 = this.f24843m.y();
        this.f24843m.q(j4, z9, true);
        int y10 = this.f24843m.y();
        if (y10 > y9) {
            long z10 = this.f24843m.z();
            int i4 = 0;
            while (true) {
                w0[] w0VarArr = this.f24844n;
                if (i4 >= w0VarArr.length) {
                    break;
                }
                w0VarArr[i4].q(z10, z9, this.f24834d[i4]);
                i4++;
            }
        }
        C(y10);
    }
}
