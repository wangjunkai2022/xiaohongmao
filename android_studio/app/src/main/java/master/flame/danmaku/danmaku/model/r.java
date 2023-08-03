package master.flame.danmaku.danmaku.model;

import java.lang.reflect.Array;

/* compiled from: SpecialDanmaku.java */
/* loaded from: classes4.dex */
public class r extends d {
    public float X;
    public float Y;
    public float Z;

    /* renamed from: a0  reason: collision with root package name */
    public float f87344a0;

    /* renamed from: b0  reason: collision with root package name */
    public float f87345b0;

    /* renamed from: c0  reason: collision with root package name */
    public float f87346c0;

    /* renamed from: d0  reason: collision with root package name */
    public long f87347d0;

    /* renamed from: e0  reason: collision with root package name */
    public long f87348e0;

    /* renamed from: f0  reason: collision with root package name */
    private c f87349f0;

    /* renamed from: g0  reason: collision with root package name */
    private int f87350g0;

    /* renamed from: k0  reason: collision with root package name */
    public int f87354k0;

    /* renamed from: l0  reason: collision with root package name */
    public int f87355l0;

    /* renamed from: m0  reason: collision with root package name */
    public int f87356m0;

    /* renamed from: n0  reason: collision with root package name */
    public long f87357n0;

    /* renamed from: o0  reason: collision with root package name */
    public float f87358o0;

    /* renamed from: p0  reason: collision with root package name */
    public float f87359p0;

    /* renamed from: q0  reason: collision with root package name */
    public float f87360q0;

    /* renamed from: r0  reason: collision with root package name */
    public float f87361r0;

    /* renamed from: t0  reason: collision with root package name */
    public a[] f87363t0;

    /* renamed from: h0  reason: collision with root package name */
    private int f87351h0 = 0;

    /* renamed from: i0  reason: collision with root package name */
    private int f87352i0 = 0;

    /* renamed from: j0  reason: collision with root package name */
    public boolean f87353j0 = false;

    /* renamed from: s0  reason: collision with root package name */
    private float[] f87362s0 = new float[4];

    /* compiled from: SpecialDanmaku.java */
    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        b f87364a;

        /* renamed from: b  reason: collision with root package name */
        b f87365b;

        /* renamed from: c  reason: collision with root package name */
        public long f87366c;

        /* renamed from: d  reason: collision with root package name */
        public long f87367d;

        /* renamed from: e  reason: collision with root package name */
        public long f87368e;

        /* renamed from: f  reason: collision with root package name */
        float f87369f;

        /* renamed from: g  reason: collision with root package name */
        float f87370g;

        public a() {
        }

        public float[] a() {
            b bVar = this.f87364a;
            return new float[]{bVar.f87372a, bVar.f87373b};
        }

        public float b() {
            return this.f87365b.a(this.f87364a);
        }

        public float[] c() {
            b bVar = this.f87365b;
            return new float[]{bVar.f87372a, bVar.f87373b};
        }

        public void d(b bVar, b bVar2) {
            this.f87364a = bVar;
            this.f87365b = bVar2;
            this.f87369f = bVar2.f87372a - bVar.f87372a;
            this.f87370g = bVar2.f87373b - bVar.f87373b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SpecialDanmaku.java */
    /* loaded from: classes4.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        float f87372a;

        /* renamed from: b  reason: collision with root package name */
        float f87373b;

        public b(float f10, float f11) {
            this.f87372a = f10;
            this.f87373b = f11;
        }

        public float a(b bVar) {
            float abs = Math.abs(this.f87372a - bVar.f87372a);
            float abs2 = Math.abs(this.f87373b - bVar.f87373b);
            return (float) Math.sqrt((abs * abs) + (abs2 * abs2));
        }
    }

    /* compiled from: SpecialDanmaku.java */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        int f87375a = 0;

        /* renamed from: b  reason: collision with root package name */
        float f87376b;

        /* renamed from: c  reason: collision with root package name */
        float f87377c;

        /* renamed from: d  reason: collision with root package name */
        int f87378d;

        /* renamed from: e  reason: collision with root package name */
        int f87379e;

        public c(int i4, int i10, float f10, float f11) {
            b(i4, i10, f10, f11);
        }

        public boolean a(int i4, int i10, int i11) {
            return (this.f87375a == i4 || (this.f87378d == i10 && this.f87379e == i11)) ? false : true;
        }

        public void b(int i4, int i10, float f10, float f11) {
            if (Float.compare(this.f87376b, f10) != 0 || Float.compare(this.f87377c, f11) != 0) {
                this.f87375a++;
            }
            this.f87378d = i4;
            this.f87379e = i10;
            this.f87376b = f10;
            this.f87377c = f11;
        }
    }

    private static final float K(long j4, long j10) {
        float f10 = ((float) j4) / ((float) j10);
        return (-1.0f) * f10 * (f10 - 2.0f);
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public void A(n nVar, float f10, float f11) {
        h(nVar, this.E.f87304a);
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public void B(n nVar, boolean z9) {
        super.B(nVar, z9);
        if (this.f87351h0 == 0 || this.f87352i0 == 0) {
            this.f87351h0 = nVar.getWidth();
            this.f87352i0 = nVar.getHeight();
        }
    }

    public void L(int i4, int i10, long j4) {
        this.f87354k0 = i4;
        this.f87355l0 = i10;
        this.f87356m0 = i10 - i4;
        this.f87357n0 = j4;
        if (i4 != master.flame.danmaku.danmaku.model.c.f87276a) {
            this.F = i4;
        }
    }

    public void M(float[][] fArr) {
        a[] aVarArr;
        if (fArr != null) {
            int length = fArr.length;
            int i4 = 0;
            this.X = fArr[0][0];
            this.Y = fArr[0][1];
            int i10 = length - 1;
            this.Z = fArr[i10][0];
            this.f87344a0 = fArr[i10][1];
            if (fArr.length > 1) {
                this.f87363t0 = new a[fArr.length - 1];
                int i11 = 0;
                while (true) {
                    aVarArr = this.f87363t0;
                    if (i11 >= aVarArr.length) {
                        break;
                    }
                    aVarArr[i11] = new a();
                    i11++;
                    this.f87363t0[i11].d(new b(fArr[i11][0], fArr[i11][1]), new b(fArr[i11][0], fArr[i11][1]));
                }
                float f10 = 0.0f;
                for (a aVar : aVarArr) {
                    f10 += aVar.b();
                }
                a aVar2 = null;
                a[] aVarArr2 = this.f87363t0;
                int length2 = aVarArr2.length;
                while (i4 < length2) {
                    a aVar3 = aVarArr2[i4];
                    long b10 = (aVar3.b() / f10) * ((float) this.f87347d0);
                    aVar3.f87366c = b10;
                    long j4 = aVar2 == null ? 0L : aVar2.f87368e;
                    aVar3.f87367d = j4;
                    aVar3.f87368e = j4 + b10;
                    i4++;
                    aVar2 = aVar3;
                }
            }
        }
    }

    public void N(c cVar) {
        this.f87349f0 = cVar;
        this.f87350g0 = cVar.f87375a;
    }

    public void O(float f10, float f11, float f12, float f13, long j4, long j10) {
        this.X = f10;
        this.Y = f11;
        this.Z = f12;
        this.f87344a0 = f13;
        this.f87345b0 = f12 - f10;
        this.f87346c0 = f13 - f11;
        this.f87347d0 = j4;
        this.f87348e0 = j10;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float d() {
        return this.f87362s0[3];
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float g() {
        return this.f87362s0[0];
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float[] h(n nVar, long j4) {
        a aVar;
        int i4;
        if (s()) {
            if (this.f87349f0.a(this.f87350g0, this.f87351h0, this.f87352i0)) {
                c cVar = this.f87349f0;
                float f10 = cVar.f87376b;
                float f11 = cVar.f87377c;
                O(this.X * f10, this.Y * f11, this.Z * f10, this.f87344a0 * f11, this.f87347d0, this.f87348e0);
                a[] aVarArr = this.f87363t0;
                if (aVarArr != null && aVarArr.length > 0) {
                    int length = aVarArr.length;
                    float[][] fArr = (float[][]) Array.newInstance(float.class, length + 1, 2);
                    int i10 = 0;
                    while (i10 < length) {
                        fArr[i10] = this.f87363t0[i10].a();
                        int i11 = i10 + 1;
                        fArr[i11] = this.f87363t0[i10].c();
                        i10 = i11;
                    }
                    for (int i12 = 0; i12 < fArr.length; i12++) {
                        float[] fArr2 = fArr[i12];
                        fArr2[0] = fArr2[0] * f10;
                        float[] fArr3 = fArr[i12];
                        fArr3[1] = fArr3[1] * f11;
                    }
                    M(fArr);
                }
                c cVar2 = this.f87349f0;
                this.f87350g0 = cVar2.f87375a;
                this.f87351h0 = cVar2.f87378d;
                this.f87352i0 = cVar2.f87379e;
            }
            long b10 = j4 - b();
            long j10 = this.f87357n0;
            if (j10 > 0 && (i4 = this.f87356m0) != 0) {
                if (b10 >= j10) {
                    this.F = this.f87355l0;
                } else {
                    this.F = this.f87354k0 + ((int) (i4 * (((float) b10) / ((float) j10))));
                }
            }
            float f12 = this.X;
            float f13 = this.Y;
            long j11 = b10 - this.f87348e0;
            long j12 = this.f87347d0;
            if (j12 > 0 && j11 >= 0 && j11 <= j12) {
                a[] aVarArr2 = this.f87363t0;
                if (aVarArr2 != null) {
                    int length2 = aVarArr2.length;
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length2) {
                            aVar = null;
                            break;
                        }
                        a aVar2 = aVarArr2[i13];
                        if (j11 >= aVar2.f87367d && j11 < aVar2.f87368e) {
                            aVar = aVar2;
                            break;
                        }
                        b bVar = aVar2.f87365b;
                        float f14 = bVar.f87372a;
                        i13++;
                        f13 = bVar.f87373b;
                        f12 = f14;
                    }
                    if (aVar != null) {
                        float f15 = aVar.f87369f;
                        float f16 = aVar.f87370g;
                        float f17 = ((float) (b10 - aVar.f87367d)) / ((float) aVar.f87366c);
                        b bVar2 = aVar.f87364a;
                        float f18 = bVar2.f87372a;
                        float f19 = bVar2.f87373b;
                        if (f15 != 0.0f) {
                            f12 = f18 + (f15 * f17);
                        }
                        if (f16 != 0.0f) {
                            f13 = f19 + (f16 * f17);
                        }
                    }
                } else {
                    float K = this.f87353j0 ? K(j11, j12) : ((float) j11) / ((float) j12);
                    float f20 = this.f87345b0;
                    if (f20 != 0.0f) {
                        f12 = this.X + (f20 * K);
                    }
                    float f21 = this.f87346c0;
                    if (f21 != 0.0f) {
                        f13 = this.Y + (f21 * K);
                    }
                }
            } else if (j11 > j12) {
                f12 = this.Z;
                f13 = this.f87344a0;
            }
            float[] fArr4 = this.f87362s0;
            fArr4[0] = f12;
            fArr4[1] = f13;
            fArr4[2] = f12 + this.f87293p;
            fArr4[3] = f13 + this.f87294q;
            J(!u());
            return this.f87362s0;
        }
        return null;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float i() {
        return this.f87362s0[2];
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float m() {
        return this.f87362s0[1];
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public int n() {
        return 7;
    }
}
