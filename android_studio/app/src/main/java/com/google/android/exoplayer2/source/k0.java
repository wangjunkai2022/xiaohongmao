package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.j2;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;

/* compiled from: MergingMediaPeriod.java */
/* loaded from: classes2.dex */
final class k0 implements w, w.a {

    /* renamed from: a  reason: collision with root package name */
    private final w[] f24992a;

    /* renamed from: c  reason: collision with root package name */
    private final g f24994c;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private w.a f24996e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private TrackGroupArray f24997f;

    /* renamed from: h  reason: collision with root package name */
    private y0 f24999h;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<w> f24995d = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final IdentityHashMap<x0, Integer> f24993b = new IdentityHashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private w[] f24998g = new w[0];

    /* compiled from: MergingMediaPeriod.java */
    /* loaded from: classes2.dex */
    private static final class a implements w, w.a {

        /* renamed from: a  reason: collision with root package name */
        private final w f25000a;

        /* renamed from: b  reason: collision with root package name */
        private final long f25001b;

        /* renamed from: c  reason: collision with root package name */
        private w.a f25002c;

        public a(w wVar, long j4) {
            this.f25000a = wVar;
            this.f25001b = j4;
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public boolean b() {
            return this.f25000a.b();
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public long c() {
            long c10 = this.f25000a.c();
            if (c10 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f25001b + c10;
        }

        @Override // com.google.android.exoplayer2.source.w
        public long d(long j4, j2 j2Var) {
            return this.f25000a.d(j4 - this.f25001b, j2Var) + this.f25001b;
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public boolean e(long j4) {
            return this.f25000a.e(j4 - this.f25001b);
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public long g() {
            long g4 = this.f25000a.g();
            if (g4 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f25001b + g4;
        }

        @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
        public void h(long j4) {
            this.f25000a.h(j4 - this.f25001b);
        }

        @Override // com.google.android.exoplayer2.source.w.a
        public void i(w wVar) {
            ((w.a) com.google.android.exoplayer2.util.a.g(this.f25002c)).i(this);
        }

        @Override // com.google.android.exoplayer2.source.w
        public List<StreamKey> j(List<com.google.android.exoplayer2.trackselection.g> list) {
            return this.f25000a.j(list);
        }

        @Override // com.google.android.exoplayer2.source.y0.a
        /* renamed from: k */
        public void f(w wVar) {
            ((w.a) com.google.android.exoplayer2.util.a.g(this.f25002c)).f(this);
        }

        @Override // com.google.android.exoplayer2.source.w
        public long l(long j4) {
            return this.f25000a.l(j4 - this.f25001b) + this.f25001b;
        }

        @Override // com.google.android.exoplayer2.source.w
        public long m() {
            long m9 = this.f25000a.m();
            return m9 == com.google.android.exoplayer2.i.f23649b ? com.google.android.exoplayer2.i.f23649b : this.f25001b + m9;
        }

        @Override // com.google.android.exoplayer2.source.w
        public void n(w.a aVar, long j4) {
            this.f25002c = aVar;
            this.f25000a.n(this, j4 - this.f25001b);
        }

        @Override // com.google.android.exoplayer2.source.w
        public long o(com.google.android.exoplayer2.trackselection.g[] gVarArr, boolean[] zArr, x0[] x0VarArr, boolean[] zArr2, long j4) {
            x0[] x0VarArr2 = new x0[x0VarArr.length];
            int i4 = 0;
            while (true) {
                x0 x0Var = null;
                if (i4 >= x0VarArr.length) {
                    break;
                }
                b bVar = (b) x0VarArr[i4];
                if (bVar != null) {
                    x0Var = bVar.b();
                }
                x0VarArr2[i4] = x0Var;
                i4++;
            }
            long o9 = this.f25000a.o(gVarArr, zArr, x0VarArr2, zArr2, j4 - this.f25001b);
            for (int i10 = 0; i10 < x0VarArr.length; i10++) {
                x0 x0Var2 = x0VarArr2[i10];
                if (x0Var2 == null) {
                    x0VarArr[i10] = null;
                } else if (x0VarArr[i10] == null || ((b) x0VarArr[i10]).b() != x0Var2) {
                    x0VarArr[i10] = new b(x0Var2, this.f25001b);
                }
            }
            return o9 + this.f25001b;
        }

        @Override // com.google.android.exoplayer2.source.w
        public void s() throws IOException {
            this.f25000a.s();
        }

        @Override // com.google.android.exoplayer2.source.w
        public TrackGroupArray u() {
            return this.f25000a.u();
        }

        @Override // com.google.android.exoplayer2.source.w
        public void v(long j4, boolean z9) {
            this.f25000a.v(j4 - this.f25001b, z9);
        }
    }

    /* compiled from: MergingMediaPeriod.java */
    /* loaded from: classes2.dex */
    private static final class b implements x0 {

        /* renamed from: a  reason: collision with root package name */
        private final x0 f25003a;

        /* renamed from: b  reason: collision with root package name */
        private final long f25004b;

        public b(x0 x0Var, long j4) {
            this.f25003a = x0Var;
            this.f25004b = j4;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public void a() throws IOException {
            this.f25003a.a();
        }

        public x0 b() {
            return this.f25003a;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public boolean f() {
            return this.f25003a.f();
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int q(com.google.android.exoplayer2.v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4) {
            int q9 = this.f25003a.q(v0Var, decoderInputBuffer, i4);
            if (q9 == -4) {
                decoderInputBuffer.f21574e = Math.max(0L, decoderInputBuffer.f21574e + this.f25004b);
            }
            return q9;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int t(long j4) {
            return this.f25003a.t(j4 - this.f25004b);
        }
    }

    public k0(g gVar, long[] jArr, w... wVarArr) {
        this.f24994c = gVar;
        this.f24992a = wVarArr;
        this.f24999h = gVar.a(new y0[0]);
        for (int i4 = 0; i4 < wVarArr.length; i4++) {
            if (jArr[i4] != 0) {
                this.f24992a[i4] = new a(wVarArr[i4], jArr[i4]);
            }
        }
    }

    public w a(int i4) {
        w[] wVarArr = this.f24992a;
        if (wVarArr[i4] instanceof a) {
            return ((a) wVarArr[i4]).f25000a;
        }
        return wVarArr[i4];
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean b() {
        return this.f24999h.b();
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long c() {
        return this.f24999h.c();
    }

    @Override // com.google.android.exoplayer2.source.w
    public long d(long j4, j2 j2Var) {
        w[] wVarArr = this.f24998g;
        return (wVarArr.length > 0 ? wVarArr[0] : this.f24992a[0]).d(j4, j2Var);
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean e(long j4) {
        if (!this.f24995d.isEmpty()) {
            int size = this.f24995d.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.f24995d.get(i4).e(j4);
            }
            return false;
        }
        return this.f24999h.e(j4);
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long g() {
        return this.f24999h.g();
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public void h(long j4) {
        this.f24999h.h(j4);
    }

    @Override // com.google.android.exoplayer2.source.w.a
    public void i(w wVar) {
        this.f24995d.remove(wVar);
        if (this.f24995d.isEmpty()) {
            int i4 = 0;
            for (w wVar2 : this.f24992a) {
                i4 += wVar2.u().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i4];
            int i10 = 0;
            for (w wVar3 : this.f24992a) {
                TrackGroupArray u9 = wVar3.u();
                int i11 = u9.length;
                int i12 = 0;
                while (i12 < i11) {
                    trackGroupArr[i10] = u9.get(i12);
                    i12++;
                    i10++;
                }
            }
            this.f24997f = new TrackGroupArray(trackGroupArr);
            ((w.a) com.google.android.exoplayer2.util.a.g(this.f24996e)).i(this);
        }
    }

    @Override // com.google.android.exoplayer2.source.w
    public /* synthetic */ List j(List list) {
        return v.a(this, list);
    }

    @Override // com.google.android.exoplayer2.source.y0.a
    /* renamed from: k */
    public void f(w wVar) {
        ((w.a) com.google.android.exoplayer2.util.a.g(this.f24996e)).f(this);
    }

    @Override // com.google.android.exoplayer2.source.w
    public long l(long j4) {
        long l10 = this.f24998g[0].l(j4);
        int i4 = 1;
        while (true) {
            w[] wVarArr = this.f24998g;
            if (i4 >= wVarArr.length) {
                return l10;
            }
            if (wVarArr[i4].l(l10) != l10) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i4++;
        }
    }

    @Override // com.google.android.exoplayer2.source.w
    public long m() {
        w[] wVarArr;
        w[] wVarArr2;
        long j4 = -9223372036854775807L;
        for (w wVar : this.f24998g) {
            long m9 = wVar.m();
            if (m9 != com.google.android.exoplayer2.i.f23649b) {
                if (j4 == com.google.android.exoplayer2.i.f23649b) {
                    for (w wVar2 : this.f24998g) {
                        if (wVar2 == wVar) {
                            break;
                        } else if (wVar2.l(m9) != m9) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j4 = m9;
                } else if (m9 != j4) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j4 != com.google.android.exoplayer2.i.f23649b && wVar.l(j4) != j4) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j4;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void n(w.a aVar, long j4) {
        this.f24996e = aVar;
        Collections.addAll(this.f24995d, this.f24992a);
        for (w wVar : this.f24992a) {
            wVar.n(this, j4);
        }
    }

    @Override // com.google.android.exoplayer2.source.w
    public long o(com.google.android.exoplayer2.trackselection.g[] gVarArr, boolean[] zArr, x0[] x0VarArr, boolean[] zArr2, long j4) {
        int[] iArr = new int[gVarArr.length];
        int[] iArr2 = new int[gVarArr.length];
        for (int i4 = 0; i4 < gVarArr.length; i4++) {
            Integer num = x0VarArr[i4] == null ? null : this.f24993b.get(x0VarArr[i4]);
            iArr[i4] = num == null ? -1 : num.intValue();
            iArr2[i4] = -1;
            if (gVarArr[i4] != null) {
                TrackGroup l10 = gVarArr[i4].l();
                int i10 = 0;
                while (true) {
                    w[] wVarArr = this.f24992a;
                    if (i10 >= wVarArr.length) {
                        break;
                    } else if (wVarArr[i10].u().indexOf(l10) != -1) {
                        iArr2[i4] = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
        this.f24993b.clear();
        int length = gVarArr.length;
        x0[] x0VarArr2 = new x0[length];
        x0[] x0VarArr3 = new x0[gVarArr.length];
        com.google.android.exoplayer2.trackselection.g[] gVarArr2 = new com.google.android.exoplayer2.trackselection.g[gVarArr.length];
        ArrayList arrayList = new ArrayList(this.f24992a.length);
        long j10 = j4;
        int i11 = 0;
        while (i11 < this.f24992a.length) {
            for (int i12 = 0; i12 < gVarArr.length; i12++) {
                x0VarArr3[i12] = iArr[i12] == i11 ? x0VarArr[i12] : null;
                gVarArr2[i12] = iArr2[i12] == i11 ? gVarArr[i12] : null;
            }
            int i13 = i11;
            ArrayList arrayList2 = arrayList;
            com.google.android.exoplayer2.trackselection.g[] gVarArr3 = gVarArr2;
            long o9 = this.f24992a[i11].o(gVarArr2, zArr, x0VarArr3, zArr2, j10);
            if (i13 == 0) {
                j10 = o9;
            } else if (o9 != j10) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z9 = false;
            for (int i14 = 0; i14 < gVarArr.length; i14++) {
                if (iArr2[i14] == i13) {
                    x0VarArr2[i14] = x0VarArr3[i14];
                    this.f24993b.put((x0) com.google.android.exoplayer2.util.a.g(x0VarArr3[i14]), Integer.valueOf(i13));
                    z9 = true;
                } else if (iArr[i14] == i13) {
                    com.google.android.exoplayer2.util.a.i(x0VarArr3[i14] == null);
                }
            }
            if (z9) {
                arrayList2.add(this.f24992a[i13]);
            }
            i11 = i13 + 1;
            arrayList = arrayList2;
            gVarArr2 = gVarArr3;
        }
        System.arraycopy(x0VarArr2, 0, x0VarArr, 0, length);
        w[] wVarArr2 = (w[]) arrayList.toArray(new w[0]);
        this.f24998g = wVarArr2;
        this.f24999h = this.f24994c.a(wVarArr2);
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void s() throws IOException {
        for (w wVar : this.f24992a) {
            wVar.s();
        }
    }

    @Override // com.google.android.exoplayer2.source.w
    public TrackGroupArray u() {
        return (TrackGroupArray) com.google.android.exoplayer2.util.a.g(this.f24997f);
    }

    @Override // com.google.android.exoplayer2.source.w
    public void v(long j4, boolean z9) {
        for (w wVar : this.f24998g) {
            wVar.v(j4, z9);
        }
    }
}
