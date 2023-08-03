package master.flame.danmaku.danmaku.model.android;

import master.flame.danmaku.danmaku.model.n;
import master.flame.danmaku.danmaku.model.p;
import master.flame.danmaku.danmaku.model.q;
import master.flame.danmaku.danmaku.model.r;

/* compiled from: DanmakuFactory.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: l  reason: collision with root package name */
    public static final float f87224l = 539.0f;

    /* renamed from: m  reason: collision with root package name */
    public static final float f87225m = 682.0f;

    /* renamed from: n  reason: collision with root package name */
    public static final float f87226n = 385.0f;

    /* renamed from: o  reason: collision with root package name */
    public static final float f87227o = 438.0f;

    /* renamed from: p  reason: collision with root package name */
    public static final long f87228p = 3800;

    /* renamed from: q  reason: collision with root package name */
    public static final int f87229q = 25;

    /* renamed from: r  reason: collision with root package name */
    public static final long f87230r = 4000;

    /* renamed from: s  reason: collision with root package name */
    public static final long f87231s = 9000;

    /* renamed from: a  reason: collision with root package name */
    public int f87232a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f87233b = 0;

    /* renamed from: c  reason: collision with root package name */
    private r.c f87234c = null;

    /* renamed from: d  reason: collision with root package name */
    private float f87235d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    public long f87236e = f87228p;

    /* renamed from: f  reason: collision with root package name */
    public long f87237f = f87230r;

    /* renamed from: g  reason: collision with root package name */
    public master.flame.danmaku.danmaku.model.g f87238g;

    /* renamed from: h  reason: collision with root package name */
    public master.flame.danmaku.danmaku.model.g f87239h;

    /* renamed from: i  reason: collision with root package name */
    public master.flame.danmaku.danmaku.model.g f87240i;

    /* renamed from: j  reason: collision with root package name */
    public n f87241j;

    /* renamed from: k  reason: collision with root package name */
    private DanmakuContext f87242k;

    protected d() {
    }

    public static d a() {
        return new d();
    }

    public static void h(master.flame.danmaku.danmaku.model.d dVar, float[][] fArr, float f10, float f11) {
        if (dVar.n() == 7 && fArr.length != 0 && fArr[0].length == 2) {
            for (int i4 = 0; i4 < fArr.length; i4++) {
                float[] fArr2 = fArr[i4];
                fArr2[0] = fArr2[0] * f10;
                float[] fArr3 = fArr[i4];
                fArr3[1] = fArr3[1] * f11;
            }
            ((r) dVar).M(fArr);
        }
    }

    private void n(int i4, int i10, float f10, float f11) {
        if (this.f87234c == null) {
            this.f87234c = new r.c(i4, i10, f10, f11);
        }
        this.f87234c.b(i4, i10, f10, f11);
    }

    private synchronized void o(int i4, int i10, float f10, float f11) {
        r.c cVar = this.f87234c;
        if (cVar != null) {
            cVar.b(i4, i10, f10, f11);
        }
    }

    private void p(master.flame.danmaku.danmaku.model.d dVar) {
        master.flame.danmaku.danmaku.model.g gVar;
        master.flame.danmaku.danmaku.model.g gVar2 = this.f87240i;
        if (gVar2 == null || ((gVar = dVar.f87295r) != null && gVar.f87308c > gVar2.f87308c)) {
            this.f87240i = dVar.f87295r;
            m();
        }
    }

    public master.flame.danmaku.danmaku.model.d b(int i4) {
        return f(i4, this.f87242k);
    }

    public master.flame.danmaku.danmaku.model.d c(int i4, float f10, float f11, float f12, float f13) {
        float f14;
        int i10 = this.f87232a;
        int i11 = this.f87233b;
        boolean q9 = q(f10, f11, f12);
        master.flame.danmaku.danmaku.model.g gVar = this.f87238g;
        if (gVar == null) {
            master.flame.danmaku.danmaku.model.g gVar2 = new master.flame.danmaku.danmaku.model.g(this.f87236e);
            this.f87238g = gVar2;
            gVar2.a(f13);
        } else if (q9) {
            gVar.b(this.f87236e);
        }
        if (this.f87239h == null) {
            this.f87239h = new master.flame.danmaku.danmaku.model.g(f87228p);
        }
        float f15 = 1.0f;
        if (!q9 || f10 <= 0.0f) {
            f14 = 1.0f;
        } else {
            m();
            if (i10 <= 0 || i11 <= 0) {
                f14 = 1.0f;
            } else {
                f15 = f10 / i10;
                f14 = f11 / i11;
            }
            int i12 = (int) f10;
            int i13 = (int) f11;
            n(i12, i13, f15, f14);
            if (f11 > 0.0f) {
                o(i12, i13, f15, f14);
            }
        }
        if (i4 != 1) {
            if (i4 != 4) {
                if (i4 != 5) {
                    if (i4 != 6) {
                        if (i4 != 7) {
                            return null;
                        }
                        r rVar = new r();
                        n((int) f10, (int) f11, f15, f14);
                        rVar.N(this.f87234c);
                        return rVar;
                    }
                    return new p(this.f87238g);
                }
                return new master.flame.danmaku.danmaku.model.i(this.f87239h);
            }
            return new master.flame.danmaku.danmaku.model.h(this.f87239h);
        }
        return new q(this.f87238g);
    }

    public master.flame.danmaku.danmaku.model.d d(int i4, int i10, int i11, float f10, float f11) {
        return c(i4, i10, i11, f10, f11);
    }

    public master.flame.danmaku.danmaku.model.d e(int i4, n nVar, float f10, float f11) {
        if (nVar == null) {
            return null;
        }
        this.f87241j = nVar;
        return d(i4, nVar.getWidth(), nVar.getHeight(), f10, f11);
    }

    public master.flame.danmaku.danmaku.model.d f(int i4, DanmakuContext danmakuContext) {
        if (danmakuContext == null) {
            return null;
        }
        this.f87242k = danmakuContext;
        master.flame.danmaku.danmaku.model.b h4 = danmakuContext.h();
        this.f87241j = h4;
        return d(i4, h4.getWidth(), this.f87241j.getHeight(), this.f87235d, danmakuContext.f87152l);
    }

    public void g(master.flame.danmaku.danmaku.model.d dVar, int i4, int i10, long j4) {
        if (dVar.n() != 7) {
            return;
        }
        ((r) dVar).L(i4, i10, j4);
        p(dVar);
    }

    public void i(master.flame.danmaku.danmaku.model.d dVar, float f10, float f11, float f12, float f13, long j4, long j10, float f14, float f15) {
        if (dVar.n() != 7) {
            return;
        }
        ((r) dVar).O(f10 * f14, f11 * f15, f12 * f14, f13 * f15, j4, j10);
        p(dVar);
    }

    public void j(DanmakuContext danmakuContext) {
        this.f87242k = danmakuContext;
        this.f87241j = danmakuContext.h();
        f(1, danmakuContext);
    }

    public void k() {
        this.f87241j = null;
        this.f87233b = 0;
        this.f87232a = 0;
        this.f87238g = null;
        this.f87239h = null;
        this.f87240i = null;
        this.f87237f = f87230r;
    }

    public void l(float f10) {
        master.flame.danmaku.danmaku.model.g gVar = this.f87238g;
        if (gVar == null || this.f87239h == null) {
            return;
        }
        gVar.a(f10);
        m();
    }

    public void m() {
        master.flame.danmaku.danmaku.model.g gVar = this.f87238g;
        long j4 = gVar == null ? 0L : gVar.f87308c;
        master.flame.danmaku.danmaku.model.g gVar2 = this.f87239h;
        long j10 = gVar2 == null ? 0L : gVar2.f87308c;
        master.flame.danmaku.danmaku.model.g gVar3 = this.f87240i;
        long j11 = gVar3 != null ? gVar3.f87308c : 0L;
        long max = Math.max(j4, j10);
        this.f87237f = max;
        long max2 = Math.max(max, j11);
        this.f87237f = max2;
        long max3 = Math.max((long) f87228p, max2);
        this.f87237f = max3;
        this.f87237f = Math.max(this.f87236e, max3);
    }

    public boolean q(float f10, float f11, float f12) {
        int i4 = (int) f10;
        if (this.f87232a == i4 && this.f87233b == ((int) f11) && this.f87235d == f12) {
            return false;
        }
        long j4 = ((f10 * f12) / 682.0f) * 3800.0f;
        this.f87236e = j4;
        long min = Math.min((long) f87231s, j4);
        this.f87236e = min;
        this.f87236e = Math.max((long) f87230r, min);
        this.f87232a = i4;
        this.f87233b = (int) f11;
        this.f87235d = f12;
        return true;
    }
}
