package master.flame.danmaku.danmaku.model;

import android.util.SparseArray;

/* compiled from: BaseDanmaku.java */
/* loaded from: classes4.dex */
public abstract class d {
    public static final String M = "/n";
    public static final int N = 1;
    public static final int O = 6;
    public static final int P = 5;
    public static final int Q = 4;
    public static final int R = 7;
    public static final int S = 0;
    public static final int T = 0;
    public static final int U = 1;
    public static final int V = 1;
    public static final int W = 2;
    public boolean A;
    public String C;
    public boolean D;
    protected f E;

    /* renamed from: a  reason: collision with root package name */
    private long f87278a;

    /* renamed from: b  reason: collision with root package name */
    public long f87279b;

    /* renamed from: c  reason: collision with root package name */
    public CharSequence f87280c;

    /* renamed from: d  reason: collision with root package name */
    public String[] f87281d;

    /* renamed from: e  reason: collision with root package name */
    public Object f87282e;

    /* renamed from: f  reason: collision with root package name */
    public Object f87283f;

    /* renamed from: g  reason: collision with root package name */
    public int f87284g;

    /* renamed from: h  reason: collision with root package name */
    public float f87285h;

    /* renamed from: i  reason: collision with root package name */
    public float f87286i;

    /* renamed from: j  reason: collision with root package name */
    public int f87287j;

    /* renamed from: r  reason: collision with root package name */
    public g f87295r;

    /* renamed from: s  reason: collision with root package name */
    public int f87296s;

    /* renamed from: t  reason: collision with root package name */
    public int f87297t;

    /* renamed from: y  reason: collision with root package name */
    public o<?> f87302y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f87303z;

    /* renamed from: k  reason: collision with root package name */
    public int f87288k = 0;

    /* renamed from: l  reason: collision with root package name */
    public float f87289l = -1.0f;

    /* renamed from: m  reason: collision with root package name */
    public int f87290m = 0;

    /* renamed from: n  reason: collision with root package name */
    public int f87291n = 0;

    /* renamed from: o  reason: collision with root package name */
    public byte f87292o = 0;

    /* renamed from: p  reason: collision with root package name */
    public float f87293p = -1.0f;

    /* renamed from: q  reason: collision with root package name */
    public float f87294q = -1.0f;

    /* renamed from: u  reason: collision with root package name */
    private int f87298u = 0;

    /* renamed from: v  reason: collision with root package name */
    public int f87299v = 0;

    /* renamed from: w  reason: collision with root package name */
    public int f87300w = 0;

    /* renamed from: x  reason: collision with root package name */
    public int f87301x = -1;
    public int B = 0;
    protected int F = c.f87276a;
    public int G = 0;
    public int H = -1;
    public j I = null;
    public int J = 0;
    public int K = -1;
    private SparseArray<Object> L = new SparseArray<>();

    public abstract void A(n nVar, float f10, float f11);

    public void B(n nVar, boolean z9) {
        nVar.j(this, z9);
        this.f87299v = this.I.f87312a;
    }

    public void C(n nVar, boolean z9) {
        nVar.s(this, z9);
        this.f87301x = this.I.f87317f;
    }

    public void D(g gVar) {
        this.f87295r = gVar;
    }

    public void E(int i4, Object obj) {
        this.L.put(i4, obj);
    }

    public void F(Object obj) {
        this.f87283f = obj;
    }

    public void G(long j4) {
        this.f87278a = j4;
        this.f87279b = 0L;
    }

    public void H(long j4) {
        this.f87279b = j4;
        this.f87300w = this.I.f87316e;
    }

    public void I(f fVar) {
        this.E = fVar;
    }

    public void J(boolean z9) {
        if (z9) {
            this.f87298u = this.I.f87313b;
            this.f87297t = 1;
            return;
        }
        this.f87297t = 0;
    }

    public int a(n nVar) {
        return nVar.l(this);
    }

    public long b() {
        j jVar = this.I;
        if (jVar != null && jVar.f87316e == this.f87300w) {
            return this.f87278a + this.f87279b;
        }
        this.f87279b = 0L;
        return this.f87278a;
    }

    public int c() {
        return this.F;
    }

    public abstract float d();

    public o<?> e() {
        return this.f87302y;
    }

    public long f() {
        return this.f87295r.f87308c;
    }

    public abstract float g();

    public abstract float[] h(n nVar, long j4);

    public abstract float i();

    public Object j(int i4) {
        SparseArray<Object> sparseArray = this.L;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i4);
    }

    public long k() {
        return this.f87278a;
    }

    public f l() {
        return this.E;
    }

    public abstract float m();

    public abstract int n();

    public boolean o() {
        if (this.H != this.I.f87314c) {
            this.G = 0;
            return false;
        }
        return true;
    }

    public boolean p() {
        return this.H == this.I.f87314c && this.G != 0;
    }

    public boolean q(int i4) {
        return this.H == this.I.f87314c && (this.G & i4) == i4;
    }

    public boolean r() {
        f fVar = this.E;
        return fVar == null || fVar.f87304a < b();
    }

    public boolean s() {
        return this.f87293p > -1.0f && this.f87294q > -1.0f && this.f87299v == this.I.f87312a;
    }

    public boolean t() {
        j jVar = this.I;
        if (jVar != null && jVar.f87316e == this.f87300w) {
            return this.f87279b != 0;
        }
        this.f87279b = 0L;
        return false;
    }

    public boolean u() {
        f fVar = this.E;
        return fVar == null || v(fVar.f87304a);
    }

    public boolean v(long j4) {
        long b10 = j4 - b();
        return b10 <= 0 || b10 >= this.f87295r.f87308c;
    }

    public boolean w() {
        return this.f87301x == this.I.f87317f;
    }

    public boolean x() {
        return this.f87297t == 1 && this.f87298u == this.I.f87313b;
    }

    public boolean y() {
        f fVar = this.E;
        return fVar == null || z(fVar.f87304a);
    }

    public boolean z(long j4) {
        return j4 - b() >= this.f87295r.f87308c;
    }
}
