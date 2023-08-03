package com.google.android.exoplayer2.analytics;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.j1;
import java.util.Collections;
import java.util.List;

/* compiled from: PlaybackStats.java */
/* loaded from: classes2.dex */
public final class n1 {
    public static final int O = 0;
    public static final int P = 1;
    public static final int Q = 2;
    public static final int R = 3;
    public static final int S = 4;
    public static final int T = 5;
    public static final int U = 6;
    public static final int V = 7;
    public static final int W = 9;
    public static final int X = 10;
    public static final int Y = 11;
    public static final int Z = 12;

    /* renamed from: a0  reason: collision with root package name */
    public static final int f20871a0 = 13;

    /* renamed from: b0  reason: collision with root package name */
    public static final int f20872b0 = 14;

    /* renamed from: c0  reason: collision with root package name */
    public static final int f20873c0 = 15;

    /* renamed from: d0  reason: collision with root package name */
    static final int f20874d0 = 16;

    /* renamed from: e0  reason: collision with root package name */
    public static final n1 f20875e0 = W(new n1[0]);
    public final int A;
    public final long B;
    public final int C;
    public final long D;
    public final long E;
    public final long F;
    public final long G;
    public final long H;
    public final int I;
    public final int J;
    public final int K;
    public final List<a> L;
    public final List<a> M;
    private final long[] N;

    /* renamed from: a  reason: collision with root package name */
    public final int f20876a;

    /* renamed from: b  reason: collision with root package name */
    public final List<c> f20877b;

    /* renamed from: c  reason: collision with root package name */
    public final List<long[]> f20878c;

    /* renamed from: d  reason: collision with root package name */
    public final long f20879d;

    /* renamed from: e  reason: collision with root package name */
    public final int f20880e;

    /* renamed from: f  reason: collision with root package name */
    public final int f20881f;

    /* renamed from: g  reason: collision with root package name */
    public final int f20882g;

    /* renamed from: h  reason: collision with root package name */
    public final int f20883h;

    /* renamed from: i  reason: collision with root package name */
    public final long f20884i;

    /* renamed from: j  reason: collision with root package name */
    public final int f20885j;

    /* renamed from: k  reason: collision with root package name */
    public final int f20886k;

    /* renamed from: l  reason: collision with root package name */
    public final int f20887l;

    /* renamed from: m  reason: collision with root package name */
    public final int f20888m;

    /* renamed from: n  reason: collision with root package name */
    public final int f20889n;

    /* renamed from: o  reason: collision with root package name */
    public final long f20890o;

    /* renamed from: p  reason: collision with root package name */
    public final int f20891p;

    /* renamed from: q  reason: collision with root package name */
    public final List<b> f20892q;

    /* renamed from: r  reason: collision with root package name */
    public final List<b> f20893r;

    /* renamed from: s  reason: collision with root package name */
    public final long f20894s;

    /* renamed from: t  reason: collision with root package name */
    public final long f20895t;

    /* renamed from: u  reason: collision with root package name */
    public final long f20896u;

    /* renamed from: v  reason: collision with root package name */
    public final long f20897v;

    /* renamed from: w  reason: collision with root package name */
    public final long f20898w;

    /* renamed from: x  reason: collision with root package name */
    public final long f20899x;

    /* renamed from: y  reason: collision with root package name */
    public final int f20900y;

    /* renamed from: z  reason: collision with root package name */
    public final int f20901z;

    /* compiled from: PlaybackStats.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final j1.b f20902a;

        /* renamed from: b  reason: collision with root package name */
        public final Exception f20903b;

        public a(j1.b bVar, Exception exc) {
            this.f20902a = bVar;
            this.f20903b = exc;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f20902a.equals(aVar.f20902a)) {
                return this.f20903b.equals(aVar.f20903b);
            }
            return false;
        }

        public int hashCode() {
            return (this.f20902a.hashCode() * 31) + this.f20903b.hashCode();
        }
    }

    /* compiled from: PlaybackStats.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final j1.b f20904a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final Format f20905b;

        public b(j1.b bVar, @Nullable Format format) {
            this.f20904a = bVar;
            this.f20905b = format;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f20904a.equals(bVar.f20904a)) {
                Format format = this.f20905b;
                Format format2 = bVar.f20905b;
                return format != null ? format.equals(format2) : format2 == null;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f20904a.hashCode() * 31;
            Format format = this.f20905b;
            return hashCode + (format != null ? format.hashCode() : 0);
        }
    }

    /* compiled from: PlaybackStats.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final j1.b f20906a;

        /* renamed from: b  reason: collision with root package name */
        public final int f20907b;

        public c(j1.b bVar, int i4) {
            this.f20906a = bVar;
            this.f20907b = i4;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f20907b != cVar.f20907b) {
                return false;
            }
            return this.f20906a.equals(cVar.f20906a);
        }

        public int hashCode() {
            return (this.f20906a.hashCode() * 31) + this.f20907b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n1(int i4, long[] jArr, List<c> list, List<long[]> list2, long j4, int i10, int i11, int i12, int i13, long j10, int i14, int i15, int i16, int i17, int i18, long j11, int i19, List<b> list3, List<b> list4, long j12, long j13, long j14, long j15, long j16, long j17, int i20, int i21, int i22, long j18, int i23, long j19, long j20, long j21, long j22, long j23, int i24, int i25, int i26, List<a> list5, List<a> list6) {
        this.f20876a = i4;
        this.N = jArr;
        this.f20877b = Collections.unmodifiableList(list);
        this.f20878c = Collections.unmodifiableList(list2);
        this.f20879d = j4;
        this.f20880e = i10;
        this.f20881f = i11;
        this.f20882g = i12;
        this.f20883h = i13;
        this.f20884i = j10;
        this.f20885j = i14;
        this.f20886k = i15;
        this.f20887l = i16;
        this.f20888m = i17;
        this.f20889n = i18;
        this.f20890o = j11;
        this.f20891p = i19;
        this.f20892q = Collections.unmodifiableList(list3);
        this.f20893r = Collections.unmodifiableList(list4);
        this.f20894s = j12;
        this.f20895t = j13;
        this.f20896u = j14;
        this.f20897v = j15;
        this.f20898w = j16;
        this.f20899x = j17;
        this.f20900y = i20;
        this.f20901z = i21;
        this.A = i22;
        this.B = j18;
        this.C = i23;
        this.D = j19;
        this.E = j20;
        this.F = j21;
        this.G = j22;
        this.H = j23;
        this.I = i24;
        this.J = i25;
        this.K = i26;
        this.L = Collections.unmodifiableList(list5);
        this.M = Collections.unmodifiableList(list6);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.exoplayer2.analytics.n1 W(com.google.android.exoplayer2.analytics.n1... r66) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.analytics.n1.W(com.google.android.exoplayer2.analytics.n1[]):com.google.android.exoplayer2.analytics.n1");
    }

    public float A() {
        return 1.0f / e();
    }

    public float B() {
        return 1.0f / H();
    }

    public float C() {
        return 1.0f / K();
    }

    public int D() {
        long j4 = this.f20896u;
        if (j4 == 0) {
            return -1;
        }
        return (int) (this.f20897v / j4);
    }

    public int E() {
        long j4 = this.f20894s;
        if (j4 == 0) {
            return -1;
        }
        return (int) (this.f20895t / j4);
    }

    public long F() {
        return this.f20880e == 0 ? com.google.android.exoplayer2.i.f23649b : U() / this.f20880e;
    }

    public long G(long j4) {
        long j10;
        if (this.f20878c.isEmpty()) {
            return com.google.android.exoplayer2.i.f23649b;
        }
        int i4 = 0;
        while (i4 < this.f20878c.size() && this.f20878c.get(i4)[0] <= j4) {
            i4++;
        }
        if (i4 == 0) {
            return this.f20878c.get(0)[1];
        }
        if (i4 == this.f20878c.size()) {
            List<long[]> list = this.f20878c;
            return list.get(list.size() - 1)[1];
        }
        int i10 = i4 - 1;
        long j11 = this.f20878c.get(i10)[0];
        long j12 = this.f20878c.get(i10)[1];
        long j13 = this.f20878c.get(i4)[0];
        long j14 = this.f20878c.get(i4)[1];
        if (j13 - j11 == 0) {
            return j12;
        }
        return j12 + (((float) (j14 - j12)) * (((float) (j4 - j11)) / ((float) j10)));
    }

    public float H() {
        long R2 = R();
        if (R2 == 0) {
            return 0.0f;
        }
        return (this.K * 1000.0f) / ((float) R2);
    }

    public int I(long j4) {
        int i4 = 0;
        for (c cVar : this.f20877b) {
            if (cVar.f20906a.f20824a > j4) {
                break;
            }
            i4 = cVar.f20907b;
        }
        return i4;
    }

    public long J(int i4) {
        return this.N[i4];
    }

    public float K() {
        long R2 = R();
        if (R2 == 0) {
            return 0.0f;
        }
        return (this.f20889n * 1000.0f) / ((float) R2);
    }

    public float L() {
        long Q2 = Q();
        if (Q2 == 0) {
            return 0.0f;
        }
        return ((float) S()) / ((float) Q2);
    }

    public float M() {
        long Q2 = Q();
        if (Q2 == 0) {
            return 0.0f;
        }
        return ((float) T()) / ((float) Q2);
    }

    public long N() {
        long j4 = 0;
        for (int i4 = 0; i4 < 16; i4++) {
            j4 += this.N[i4];
        }
        return j4;
    }

    public long O() {
        return J(2);
    }

    public long P() {
        return J(4) + J(7);
    }

    public long Q() {
        return R() + U();
    }

    public long R() {
        return J(3);
    }

    public long S() {
        return J(6);
    }

    public long T() {
        return J(5);
    }

    public long U() {
        return J(2) + J(6) + J(5);
    }

    public float V() {
        long Q2 = Q();
        if (Q2 == 0) {
            return 0.0f;
        }
        return ((float) U()) / ((float) Q2);
    }

    public float a() {
        int i4 = this.f20881f;
        int i10 = this.f20876a;
        int i11 = this.f20880e;
        int i12 = i4 - (i10 - i11);
        if (i11 == 0) {
            return 0.0f;
        }
        return i12 / i11;
    }

    public float b() {
        long R2 = R();
        if (R2 == 0) {
            return 0.0f;
        }
        return (((float) this.H) * 1000.0f) / ((float) R2);
    }

    public float c() {
        long R2 = R();
        if (R2 == 0) {
            return 0.0f;
        }
        return (((float) this.G) * 1000.0f) / ((float) R2);
    }

    public float d() {
        int i4 = this.f20880e;
        if (i4 == 0) {
            return 0.0f;
        }
        return this.f20882g / i4;
    }

    public float e() {
        long R2 = R();
        if (R2 == 0) {
            return 0.0f;
        }
        return (this.J * 1000.0f) / ((float) R2);
    }

    public float f() {
        int i4 = this.f20880e;
        if (i4 == 0) {
            return 0.0f;
        }
        return this.I / i4;
    }

    public float g() {
        long Q2 = Q();
        if (Q2 == 0) {
            return 0.0f;
        }
        return ((float) O()) / ((float) Q2);
    }

    public int h() {
        long j4 = this.f20898w;
        if (j4 == 0) {
            return -1;
        }
        return (int) (this.f20899x / j4);
    }

    public int i() {
        long j4 = this.E;
        if (j4 == 0) {
            return -1;
        }
        return (int) ((this.F * 8000) / j4);
    }

    public long j() {
        return this.f20876a == 0 ? com.google.android.exoplayer2.i.f23649b : N() / this.f20876a;
    }

    public int k() {
        int i4 = this.C;
        if (i4 == 0) {
            return -1;
        }
        return (int) (this.D / i4);
    }

    public int l() {
        int i4 = this.f20901z;
        if (i4 == 0) {
            return -1;
        }
        return (int) (this.B / i4);
    }

    public int m() {
        int i4 = this.f20900y;
        if (i4 == 0) {
            return -1;
        }
        return this.A / i4;
    }

    public long n() {
        int i4 = this.f20885j;
        return i4 == 0 ? com.google.android.exoplayer2.i.f23649b : this.f20884i / i4;
    }

    public float o() {
        int i4 = this.f20880e;
        if (i4 == 0) {
            return 0.0f;
        }
        return this.K / i4;
    }

    public float p() {
        int i4 = this.f20880e;
        if (i4 == 0) {
            return 0.0f;
        }
        return this.f20887l / i4;
    }

    public float q() {
        int i4 = this.f20880e;
        if (i4 == 0) {
            return 0.0f;
        }
        return this.f20886k / i4;
    }

    public long r() {
        return this.f20880e == 0 ? com.google.android.exoplayer2.i.f23649b : P() / this.f20880e;
    }

    public long s() {
        return this.f20880e == 0 ? com.google.android.exoplayer2.i.f23649b : Q() / this.f20880e;
    }

    public long t() {
        return this.f20880e == 0 ? com.google.android.exoplayer2.i.f23649b : R() / this.f20880e;
    }

    public float u() {
        int i4 = this.f20880e;
        if (i4 == 0) {
            return 0.0f;
        }
        return this.f20889n / i4;
    }

    public long v() {
        return this.f20880e == 0 ? com.google.android.exoplayer2.i.f23649b : S() / this.f20880e;
    }

    public float w() {
        int i4 = this.f20880e;
        if (i4 == 0) {
            return 0.0f;
        }
        return this.f20888m / i4;
    }

    public long x() {
        return this.f20880e == 0 ? com.google.android.exoplayer2.i.f23649b : T() / this.f20880e;
    }

    public long y() {
        return this.f20889n == 0 ? com.google.android.exoplayer2.i.f23649b : (J(6) + J(7)) / this.f20889n;
    }

    public long z() {
        return this.f20888m == 0 ? com.google.android.exoplayer2.i.f23649b : T() / this.f20888m;
    }
}
