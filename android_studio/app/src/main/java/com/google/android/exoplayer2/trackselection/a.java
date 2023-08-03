package com.google.android.exoplayer2.trackselection;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.h3;
import com.google.common.collect.i3;
import com.google.common.collect.w2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* compiled from: AdaptiveTrackSelection.java */
/* loaded from: classes2.dex */
public class a extends c {
    public static final float A = 0.7f;
    public static final float B = 0.75f;
    private static final long C = 1000;

    /* renamed from: w  reason: collision with root package name */
    private static final String f25999w = "AdaptiveTrackSelection";

    /* renamed from: x  reason: collision with root package name */
    public static final int f26000x = 10000;

    /* renamed from: y  reason: collision with root package name */
    public static final int f26001y = 25000;

    /* renamed from: z  reason: collision with root package name */
    public static final int f26002z = 25000;

    /* renamed from: j  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.e f26003j;

    /* renamed from: k  reason: collision with root package name */
    private final long f26004k;

    /* renamed from: l  reason: collision with root package name */
    private final long f26005l;

    /* renamed from: m  reason: collision with root package name */
    private final long f26006m;

    /* renamed from: n  reason: collision with root package name */
    private final float f26007n;

    /* renamed from: o  reason: collision with root package name */
    private final float f26008o;

    /* renamed from: p  reason: collision with root package name */
    private final ImmutableList<C0185a> f26009p;

    /* renamed from: q  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f26010q;

    /* renamed from: r  reason: collision with root package name */
    private float f26011r;

    /* renamed from: s  reason: collision with root package name */
    private int f26012s;

    /* renamed from: t  reason: collision with root package name */
    private int f26013t;

    /* renamed from: u  reason: collision with root package name */
    private long f26014u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private com.google.android.exoplayer2.source.chunk.n f26015v;

    /* compiled from: AdaptiveTrackSelection.java */
    /* renamed from: com.google.android.exoplayer2.trackselection.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0185a {

        /* renamed from: a  reason: collision with root package name */
        public final long f26016a;

        /* renamed from: b  reason: collision with root package name */
        public final long f26017b;

        public C0185a(long j4, long j10) {
            this.f26016a = j4;
            this.f26017b = j10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0185a) {
                C0185a c0185a = (C0185a) obj;
                return this.f26016a == c0185a.f26016a && this.f26017b == c0185a.f26017b;
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.f26016a) * 31) + ((int) this.f26017b);
        }
    }

    /* compiled from: AdaptiveTrackSelection.java */
    /* loaded from: classes2.dex */
    public static class b implements g.b {

        /* renamed from: a  reason: collision with root package name */
        private final int f26018a;

        /* renamed from: b  reason: collision with root package name */
        private final int f26019b;

        /* renamed from: c  reason: collision with root package name */
        private final int f26020c;

        /* renamed from: d  reason: collision with root package name */
        private final float f26021d;

        /* renamed from: e  reason: collision with root package name */
        private final float f26022e;

        /* renamed from: f  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.d f26023f;

        public b() {
            this(10000, 25000, 25000, 0.7f, 0.75f, com.google.android.exoplayer2.util.d.f27523a);
        }

        @Override // com.google.android.exoplayer2.trackselection.g.b
        public final g[] a(g.a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, z.a aVar, s2 s2Var) {
            g b10;
            ImmutableList B = a.B(aVarArr);
            g[] gVarArr = new g[aVarArr.length];
            for (int i4 = 0; i4 < aVarArr.length; i4++) {
                g.a aVar2 = aVarArr[i4];
                if (aVar2 != null) {
                    int[] iArr = aVar2.f26035b;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            b10 = new h(aVar2.f26034a, iArr[0], aVar2.f26036c);
                        } else {
                            b10 = b(aVar2.f26034a, iArr, aVar2.f26036c, eVar, (ImmutableList) B.get(i4));
                        }
                        gVarArr[i4] = b10;
                    }
                }
            }
            return gVarArr;
        }

        protected a b(TrackGroup trackGroup, int[] iArr, int i4, com.google.android.exoplayer2.upstream.e eVar, ImmutableList<C0185a> immutableList) {
            return new a(trackGroup, iArr, i4, eVar, this.f26018a, this.f26019b, this.f26020c, this.f26021d, this.f26022e, immutableList, this.f26023f);
        }

        public b(int i4, int i10, int i11, float f10) {
            this(i4, i10, i11, f10, 0.75f, com.google.android.exoplayer2.util.d.f27523a);
        }

        public b(int i4, int i10, int i11, float f10, float f11, com.google.android.exoplayer2.util.d dVar) {
            this.f26018a = i4;
            this.f26019b = i10;
            this.f26020c = i11;
            this.f26021d = f10;
            this.f26022e = f11;
            this.f26023f = dVar;
        }
    }

    public a(TrackGroup trackGroup, int[] iArr, com.google.android.exoplayer2.upstream.e eVar) {
        this(trackGroup, iArr, 0, eVar, 10000L, 25000L, 25000L, 0.7f, 0.75f, ImmutableList.of(), com.google.android.exoplayer2.util.d.f27523a);
    }

    private int A(long j4, long j10) {
        long C2 = C(j10);
        int i4 = 0;
        for (int i10 = 0; i10 < this.f26026d; i10++) {
            if (j4 == Long.MIN_VALUE || !d(i10, j4)) {
                Format f10 = f(i10);
                if (z(f10, f10.bitrate, C2)) {
                    return i10;
                }
                i4 = i10;
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<ImmutableList<C0185a>> B(g.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < aVarArr.length; i4++) {
            if (aVarArr[i4] != null && aVarArr[i4].f26035b.length > 1) {
                ImmutableList.a builder = ImmutableList.builder();
                builder.g(new C0185a(0L, 0L));
                arrayList.add(builder);
            } else {
                arrayList.add(null);
            }
        }
        long[][] G = G(aVarArr);
        int[] iArr = new int[G.length];
        long[] jArr = new long[G.length];
        for (int i10 = 0; i10 < G.length; i10++) {
            jArr[i10] = G[i10].length == 0 ? 0L : G[i10][0];
        }
        y(arrayList, jArr);
        ImmutableList<Integer> H = H(G);
        for (int i11 = 0; i11 < H.size(); i11++) {
            int intValue = H.get(i11).intValue();
            int i12 = iArr[intValue] + 1;
            iArr[intValue] = i12;
            jArr[intValue] = G[intValue][i12];
            y(arrayList, jArr);
        }
        for (int i13 = 0; i13 < aVarArr.length; i13++) {
            if (arrayList.get(i13) != null) {
                jArr[i13] = jArr[i13] * 2;
            }
        }
        y(arrayList, jArr);
        ImmutableList.a builder2 = ImmutableList.builder();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            ImmutableList.a aVar = (ImmutableList.a) arrayList.get(i14);
            builder2.g(aVar == null ? ImmutableList.of() : aVar.e());
        }
        return builder2.e();
    }

    private long C(long j4) {
        long I = I(j4);
        if (this.f26009p.isEmpty()) {
            return I;
        }
        int i4 = 1;
        while (i4 < this.f26009p.size() - 1 && this.f26009p.get(i4).f26016a < I) {
            i4++;
        }
        C0185a c0185a = this.f26009p.get(i4 - 1);
        C0185a c0185a2 = this.f26009p.get(i4);
        long j10 = c0185a.f26016a;
        long j11 = c0185a.f26017b;
        return j11 + ((((float) (I - j10)) / ((float) (c0185a2.f26016a - j10))) * ((float) (c0185a2.f26017b - j11)));
    }

    private long D(List<? extends com.google.android.exoplayer2.source.chunk.n> list) {
        if (list.isEmpty()) {
            return com.google.android.exoplayer2.i.f23649b;
        }
        com.google.android.exoplayer2.source.chunk.n nVar = (com.google.android.exoplayer2.source.chunk.n) w2.w(list);
        long j4 = nVar.f24825g;
        if (j4 != com.google.android.exoplayer2.i.f23649b) {
            long j10 = nVar.f24826h;
            return j10 != com.google.android.exoplayer2.i.f23649b ? j10 - j4 : com.google.android.exoplayer2.i.f23649b;
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    private long F(com.google.android.exoplayer2.source.chunk.o[] oVarArr, List<? extends com.google.android.exoplayer2.source.chunk.n> list) {
        int i4 = this.f26012s;
        if (i4 < oVarArr.length && oVarArr[i4].next()) {
            com.google.android.exoplayer2.source.chunk.o oVar = oVarArr[this.f26012s];
            return oVar.c() - oVar.a();
        }
        for (com.google.android.exoplayer2.source.chunk.o oVar2 : oVarArr) {
            if (oVar2.next()) {
                return oVar2.c() - oVar2.a();
            }
        }
        return D(list);
    }

    private static long[][] G(g.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        for (int i4 = 0; i4 < aVarArr.length; i4++) {
            g.a aVar = aVarArr[i4];
            if (aVar == null) {
                jArr[i4] = new long[0];
            } else {
                jArr[i4] = new long[aVar.f26035b.length];
                int i10 = 0;
                while (true) {
                    int[] iArr = aVar.f26035b;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    jArr[i4][i10] = aVar.f26034a.getFormat(iArr[i10]).bitrate;
                    i10++;
                }
                Arrays.sort(jArr[i4]);
            }
        }
        return jArr;
    }

    private static ImmutableList<Integer> H(long[][] jArr) {
        h3 a10 = i3.h().a().a();
        for (int i4 = 0; i4 < jArr.length; i4++) {
            if (jArr[i4].length > 1) {
                int length = jArr[i4].length;
                double[] dArr = new double[length];
                int i10 = 0;
                while (true) {
                    double d4 = 0.0d;
                    if (i10 >= jArr[i4].length) {
                        break;
                    }
                    if (jArr[i4][i10] != -1) {
                        d4 = Math.log(jArr[i4][i10]);
                    }
                    dArr[i10] = d4;
                    i10++;
                }
                int i11 = length - 1;
                double d10 = dArr[i11] - dArr[0];
                int i12 = 0;
                while (i12 < i11) {
                    double d11 = dArr[i12];
                    i12++;
                    a10.put(Double.valueOf(d10 == 0.0d ? 1.0d : (((d11 + dArr[i12]) * 0.5d) - dArr[0]) / d10), Integer.valueOf(i4));
                }
            }
        }
        return ImmutableList.copyOf(a10.values());
    }

    private long I(long j4) {
        long a10;
        long e4 = ((float) this.f26003j.e()) * this.f26007n;
        if (this.f26003j.a() != com.google.android.exoplayer2.i.f23649b && j4 != com.google.android.exoplayer2.i.f23649b) {
            float f10 = (float) j4;
            return (((float) e4) * Math.max((f10 / this.f26011r) - ((float) a10), 0.0f)) / f10;
        }
        return ((float) e4) / this.f26011r;
    }

    private long J(long j4) {
        if (j4 != com.google.android.exoplayer2.i.f23649b && j4 <= this.f26004k) {
            return ((float) j4) * this.f26008o;
        }
        return this.f26004k;
    }

    private static void y(List<ImmutableList.a<C0185a>> list, long[] jArr) {
        long j4 = 0;
        for (long j10 : jArr) {
            j4 += j10;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            ImmutableList.a<C0185a> aVar = list.get(i4);
            if (aVar != null) {
                aVar.g(new C0185a(j4, jArr[i4]));
            }
        }
    }

    protected long E() {
        return this.f26006m;
    }

    protected boolean K(long j4, List<? extends com.google.android.exoplayer2.source.chunk.n> list) {
        long j10 = this.f26014u;
        return j10 == com.google.android.exoplayer2.i.f23649b || j4 - j10 >= 1000 || !(list.isEmpty() || ((com.google.android.exoplayer2.source.chunk.n) w2.w(list)).equals(this.f26015v));
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public int a() {
        return this.f26012s;
    }

    @Override // com.google.android.exoplayer2.trackselection.c, com.google.android.exoplayer2.trackselection.g
    @CallSuper
    public void c() {
        this.f26015v = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.c, com.google.android.exoplayer2.trackselection.g
    public void h(float f10) {
        this.f26011r = f10;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    @Nullable
    public Object i() {
        return null;
    }

    @Override // com.google.android.exoplayer2.trackselection.c, com.google.android.exoplayer2.trackselection.g
    @CallSuper
    public void n() {
        this.f26014u = com.google.android.exoplayer2.i.f23649b;
        this.f26015v = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.c, com.google.android.exoplayer2.trackselection.g
    public int o(long j4, List<? extends com.google.android.exoplayer2.source.chunk.n> list) {
        int i4;
        int i10;
        long b10 = this.f26010q.b();
        if (!K(b10, list)) {
            return list.size();
        }
        this.f26014u = b10;
        this.f26015v = list.isEmpty() ? null : (com.google.android.exoplayer2.source.chunk.n) w2.w(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long l02 = z0.l0(list.get(size - 1).f24825g - j4, this.f26011r);
        long E = E();
        if (l02 < E) {
            return size;
        }
        Format f10 = f(A(b10, D(list)));
        for (int i11 = 0; i11 < size; i11++) {
            com.google.android.exoplayer2.source.chunk.n nVar = list.get(i11);
            Format format = nVar.f24822d;
            if (z0.l0(nVar.f24825g - j4, this.f26011r) >= E && format.bitrate < f10.bitrate && (i4 = format.height) != -1 && i4 < 720 && (i10 = format.width) != -1 && i10 < 1280 && i4 < f10.height) {
                return i11;
            }
        }
        return size;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public void q(long j4, long j10, long j11, List<? extends com.google.android.exoplayer2.source.chunk.n> list, com.google.android.exoplayer2.source.chunk.o[] oVarArr) {
        long b10 = this.f26010q.b();
        long F = F(oVarArr, list);
        int i4 = this.f26013t;
        if (i4 == 0) {
            this.f26013t = 1;
            this.f26012s = A(b10, F);
            return;
        }
        int i10 = this.f26012s;
        int p9 = list.isEmpty() ? -1 : p(((com.google.android.exoplayer2.source.chunk.n) w2.w(list)).f24822d);
        if (p9 != -1) {
            i4 = ((com.google.android.exoplayer2.source.chunk.n) w2.w(list)).f24823e;
            i10 = p9;
        }
        int A2 = A(b10, F);
        if (!d(i10, b10)) {
            Format f10 = f(i10);
            Format f11 = f(A2);
            if ((f11.bitrate > f10.bitrate && j10 < J(j11)) || (f11.bitrate < f10.bitrate && j10 >= this.f26005l)) {
                A2 = i10;
            }
        }
        if (A2 != i10) {
            i4 = 3;
        }
        this.f26013t = i4;
        this.f26012s = A2;
    }

    @Override // com.google.android.exoplayer2.trackselection.g
    public int t() {
        return this.f26013t;
    }

    protected boolean z(Format format, int i4, long j4) {
        return ((long) i4) <= j4;
    }

    protected a(TrackGroup trackGroup, int[] iArr, int i4, com.google.android.exoplayer2.upstream.e eVar, long j4, long j10, long j11, float f10, float f11, List<C0185a> list, com.google.android.exoplayer2.util.d dVar) {
        super(trackGroup, iArr, i4);
        if (j11 < j4) {
            w.n(f25999w, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j11 = j4;
        }
        this.f26003j = eVar;
        this.f26004k = j4 * 1000;
        this.f26005l = j10 * 1000;
        this.f26006m = j11 * 1000;
        this.f26007n = f10;
        this.f26008o = f11;
        this.f26009p = ImmutableList.copyOf((Collection) list);
        this.f26010q = dVar;
        this.f26011r = 1.0f;
        this.f26013t = 0;
        this.f26014u = com.google.android.exoplayer2.i.f23649b;
    }
}
