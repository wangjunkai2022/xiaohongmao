package master.flame.danmaku.controller;

import android.graphics.Canvas;
import f8.a;
import master.flame.danmaku.controller.h;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.m;
import master.flame.danmaku.danmaku.parser.a;

/* compiled from: DrawTask.java */
/* loaded from: classes4.dex */
public class e implements h {

    /* renamed from: c  reason: collision with root package name */
    protected final DanmakuContext f87099c;

    /* renamed from: d  reason: collision with root package name */
    protected final master.flame.danmaku.danmaku.model.b f87100d;

    /* renamed from: e  reason: collision with root package name */
    protected m f87101e;

    /* renamed from: f  reason: collision with root package name */
    protected master.flame.danmaku.danmaku.parser.a f87102f;

    /* renamed from: g  reason: collision with root package name */
    h.a f87103g;

    /* renamed from: h  reason: collision with root package name */
    final f8.a f87104h;

    /* renamed from: i  reason: collision with root package name */
    master.flame.danmaku.danmaku.model.f f87105i;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f87107k;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f87110n;

    /* renamed from: o  reason: collision with root package name */
    private long f87111o;

    /* renamed from: p  reason: collision with root package name */
    private long f87112p;

    /* renamed from: q  reason: collision with root package name */
    protected int f87113q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f87114r;

    /* renamed from: s  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.d f87115s;

    /* renamed from: u  reason: collision with root package name */
    private m f87117u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f87118v;

    /* renamed from: j  reason: collision with root package name */
    private m f87106j = new master.flame.danmaku.danmaku.model.android.e(4);

    /* renamed from: l  reason: collision with root package name */
    private long f87108l = 0;

    /* renamed from: m  reason: collision with root package name */
    private final a.c f87109m = new a.c();

    /* renamed from: t  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.android.e f87116t = new master.flame.danmaku.danmaku.model.android.e(4);

    /* renamed from: w  reason: collision with root package name */
    private DanmakuContext.a f87119w = new a();

    /* compiled from: DrawTask.java */
    /* loaded from: classes4.dex */
    class a implements DanmakuContext.a {
        a() {
        }

        @Override // master.flame.danmaku.danmaku.model.android.DanmakuContext.a
        public boolean a(DanmakuContext danmakuContext, DanmakuContext.DanmakuConfigTag danmakuConfigTag, Object... objArr) {
            return e.this.x(danmakuContext, danmakuConfigTag, objArr);
        }
    }

    /* compiled from: DrawTask.java */
    /* loaded from: classes4.dex */
    class b implements a.b {
        b() {
        }

        @Override // f8.a.b
        public void a(master.flame.danmaku.danmaku.model.d dVar) {
            h.a aVar = e.this.f87103g;
            if (aVar != null) {
                aVar.a(dVar);
            }
        }
    }

    /* compiled from: DrawTask.java */
    /* loaded from: classes4.dex */
    class c extends m.c<master.flame.danmaku.danmaku.model.d> {
        c() {
        }

        @Override // master.flame.danmaku.danmaku.model.m.b
        /* renamed from: e */
        public int a(master.flame.danmaku.danmaku.model.d dVar) {
            if (dVar.f87303z) {
                e.this.y(dVar);
                return 2;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawTask.java */
    /* loaded from: classes4.dex */
    public class d extends m.c<master.flame.danmaku.danmaku.model.d> {

        /* renamed from: e  reason: collision with root package name */
        long f87123e = g8.c.b();

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f87124f;

        d(int i4) {
            this.f87124f = i4;
        }

        @Override // master.flame.danmaku.danmaku.model.m.b
        /* renamed from: e */
        public int a(master.flame.danmaku.danmaku.model.d dVar) {
            boolean y9 = dVar.y();
            if (g8.c.b() - this.f87123e <= this.f87124f && y9) {
                e.this.f87101e.g(dVar);
                e.this.y(dVar);
                return 2;
            }
            return 1;
        }
    }

    /* compiled from: DrawTask.java */
    /* renamed from: master.flame.danmaku.controller.e$e  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0782e extends m.c<master.flame.danmaku.danmaku.model.d> {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ m f87126e;

        C0782e(m mVar) {
            this.f87126e = mVar;
        }

        @Override // master.flame.danmaku.danmaku.model.m.b
        /* renamed from: e */
        public int a(master.flame.danmaku.danmaku.model.d dVar) {
            if (!dVar.x() || dVar.u()) {
                return 0;
            }
            this.f87126e.i(dVar);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawTask.java */
    /* loaded from: classes4.dex */
    public class f implements a.InterfaceC0784a {
        f() {
        }

        @Override // master.flame.danmaku.danmaku.parser.a.InterfaceC0784a
        public void b(master.flame.danmaku.danmaku.model.d dVar) {
            h.a aVar = e.this.f87103g;
            if (aVar != null) {
                aVar.b(dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawTask.java */
    /* loaded from: classes4.dex */
    public class g extends m.c<master.flame.danmaku.danmaku.model.d> {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ long f87129e;

        g(long j4) {
            this.f87129e = j4;
        }

        @Override // master.flame.danmaku.danmaku.model.m.b
        /* renamed from: e */
        public int a(master.flame.danmaku.danmaku.model.d dVar) {
            if (dVar.u()) {
                return 2;
            }
            dVar.H(this.f87129e + dVar.f87279b);
            return dVar.f87279b == 0 ? 2 : 0;
        }
    }

    public e(master.flame.danmaku.danmaku.model.f fVar, DanmakuContext danmakuContext, h.a aVar) {
        if (danmakuContext != null) {
            this.f87099c = danmakuContext;
            this.f87100d = danmakuContext.h();
            this.f87103g = aVar;
            master.flame.danmaku.danmaku.renderer.android.a aVar2 = new master.flame.danmaku.danmaku.renderer.android.a(danmakuContext);
            this.f87104h = aVar2;
            aVar2.g(new b());
            aVar2.d(danmakuContext.s() || danmakuContext.r());
            v(fVar);
            Boolean valueOf = Boolean.valueOf(danmakuContext.q());
            if (valueOf != null) {
                if (valueOf.booleanValue()) {
                    danmakuContext.f87166z.f(master.flame.danmaku.controller.b.f87038w);
                    return;
                } else {
                    danmakuContext.f87166z.l(master.flame.danmaku.controller.b.f87038w);
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("context is null");
    }

    private void r(a.c cVar, m mVar, m mVar2) {
        cVar.e();
        cVar.f67772b.c(g8.c.b());
        cVar.f67773c = 0;
        cVar.f67774d = (mVar != null ? mVar.size() : 0) + (mVar2 != null ? mVar2.size() : 0);
    }

    private void t(a.c cVar) {
        boolean z9 = cVar.f67781k == 0;
        cVar.f67786p = z9;
        if (z9) {
            cVar.f67784n = -1L;
        }
        master.flame.danmaku.danmaku.model.d dVar = cVar.f67775e;
        cVar.f67775e = null;
        cVar.f67785o = dVar != null ? dVar.b() : -1L;
        cVar.f67783m = cVar.f67772b.c(g8.c.b());
    }

    @Override // master.flame.danmaku.controller.h
    public void a() {
        master.flame.danmaku.danmaku.parser.a aVar = this.f87102f;
        if (aVar == null) {
            return;
        }
        w(aVar);
        this.f87112p = 0L;
        this.f87111o = 0L;
        h.a aVar2 = this.f87103g;
        if (aVar2 != null) {
            aVar2.c();
            this.f87110n = true;
        }
    }

    @Override // master.flame.danmaku.controller.h
    public synchronized void b(master.flame.danmaku.danmaku.model.d dVar) {
        boolean i4;
        h.a aVar;
        boolean i10;
        if (this.f87101e == null) {
            return;
        }
        if (dVar.f87303z) {
            this.f87116t.i(dVar);
            z(10);
        }
        dVar.f87296s = this.f87101e.size();
        boolean z9 = true;
        if (this.f87111o <= dVar.b() && dVar.b() <= this.f87112p) {
            synchronized (this.f87106j) {
                i10 = this.f87106j.i(dVar);
            }
            z9 = i10;
        } else if (dVar.f87303z) {
            z9 = false;
        }
        synchronized (this.f87101e) {
            i4 = this.f87101e.i(dVar);
        }
        if (!z9 || !i4) {
            this.f87112p = 0L;
            this.f87111o = 0L;
        }
        if (i4 && (aVar = this.f87103g) != null) {
            aVar.b(dVar);
        }
        master.flame.danmaku.danmaku.model.d dVar2 = this.f87115s;
        if (dVar2 == null || (dVar2 != null && dVar.b() > this.f87115s.b())) {
            this.f87115s = dVar;
        }
    }

    @Override // master.flame.danmaku.controller.h
    public void c(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        this.f87099c.h().w().a(dVar);
        int i4 = dVar.J | 2;
        dVar.J = i4;
        if (z9) {
            dVar.f87293p = -1.0f;
            dVar.f87294q = -1.0f;
            dVar.J = i4 | 1;
            dVar.f87299v++;
        }
    }

    @Override // master.flame.danmaku.controller.h
    public synchronized void d(boolean z9) {
        m mVar = this.f87101e;
        if (mVar != null && !mVar.isEmpty()) {
            synchronized (this.f87101e) {
                if (!z9) {
                    long j4 = this.f87105i.f87304a;
                    long j10 = this.f87099c.A.f87237f;
                    m d4 = this.f87101e.d((j4 - j10) - 100, j4 + j10);
                    if (d4 != null) {
                        this.f87106j = d4;
                    }
                }
                this.f87101e.clear();
            }
        }
    }

    @Override // master.flame.danmaku.controller.h
    public synchronized void e() {
        m mVar = this.f87106j;
        if (mVar != null && !mVar.isEmpty()) {
            synchronized (this.f87106j) {
                this.f87106j.a(new c());
            }
        }
    }

    @Override // master.flame.danmaku.controller.h
    public void f(int i4) {
        this.f87113q = i4;
    }

    @Override // master.flame.danmaku.controller.h
    public m g(long j4) {
        m mVar;
        long j10 = this.f87099c.A.f87237f;
        long j11 = (j4 - j10) - 100;
        long j12 = j4 + j10;
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            if (i4 >= 3) {
                mVar = null;
                break;
            }
            try {
                mVar = this.f87101e.d(j11, j12);
                break;
            } catch (Exception unused) {
                i4 = i10;
            }
        }
        master.flame.danmaku.danmaku.model.android.e eVar = new master.flame.danmaku.danmaku.model.android.e();
        if (mVar != null && !mVar.isEmpty()) {
            mVar.a(new C0782e(eVar));
        }
        return eVar;
    }

    @Override // master.flame.danmaku.controller.h
    public void h() {
        this.f87112p = 0L;
        this.f87111o = 0L;
        this.f87114r = false;
    }

    @Override // master.flame.danmaku.controller.h
    public void i(long j4) {
        master.flame.danmaku.danmaku.model.d last;
        reset();
        this.f87099c.f87165y.h();
        this.f87099c.f87165y.d();
        this.f87099c.f87165y.g();
        this.f87099c.f87165y.f();
        this.f87117u = new master.flame.danmaku.danmaku.model.android.e(4);
        if (j4 < 1000) {
            j4 = 0;
        }
        this.f87108l = j4;
        this.f87109m.e();
        this.f87109m.f67785o = this.f87108l;
        this.f87112p = 0L;
        this.f87111o = 0L;
        m mVar = this.f87101e;
        if (mVar == null || (last = mVar.last()) == null || last.y()) {
            return;
        }
        this.f87115s = last;
    }

    @Override // master.flame.danmaku.controller.h
    public void j(master.flame.danmaku.danmaku.parser.a aVar) {
        this.f87102f = aVar;
        this.f87110n = false;
    }

    @Override // master.flame.danmaku.controller.h
    public void k() {
        this.f87099c.b0();
        f8.a aVar = this.f87104h;
        if (aVar != null) {
            aVar.release();
        }
    }

    @Override // master.flame.danmaku.controller.h
    public void l() {
        this.f87118v = true;
    }

    @Override // master.flame.danmaku.controller.h
    public void m() {
        this.f87107k = true;
    }

    @Override // master.flame.danmaku.controller.h
    public synchronized a.c n(master.flame.danmaku.danmaku.model.b bVar) {
        return s(bVar, this.f87105i);
    }

    @Override // master.flame.danmaku.controller.h
    public void o(long j4) {
        reset();
        this.f87099c.f87165y.h();
        this.f87099c.f87165y.d();
        this.f87108l = j4;
    }

    @Override // master.flame.danmaku.controller.h
    public void p() {
        this.f87114r = true;
    }

    @Override // master.flame.danmaku.controller.h
    public void q(long j4, long j10, long j11) {
        m d4 = this.f87109m.d();
        this.f87117u = d4;
        d4.a(new g(j11));
        this.f87108l = j10;
    }

    @Override // master.flame.danmaku.controller.h
    public void reset() {
        if (this.f87106j != null) {
            this.f87106j = new master.flame.danmaku.danmaku.model.android.e();
        }
        f8.a aVar = this.f87104h;
        if (aVar != null) {
            aVar.clear();
        }
    }

    protected a.c s(master.flame.danmaku.danmaku.model.b bVar, master.flame.danmaku.danmaku.model.f fVar) {
        long j4;
        m mVar;
        m mVar2;
        if (this.f87107k) {
            this.f87104h.e();
            this.f87107k = false;
        }
        if (this.f87101e != null) {
            master.flame.danmaku.controller.d.a((Canvas) bVar.x());
            if (this.f87114r && !this.f87118v) {
                return this.f87109m;
            }
            this.f87118v = false;
            a.c cVar = this.f87109m;
            long j10 = fVar.f87304a;
            long j11 = this.f87099c.A.f87237f;
            long j12 = (j10 - j11) - 100;
            long j13 = j11 + j10;
            m mVar3 = this.f87106j;
            long j14 = this.f87111o;
            if (j14 <= j12) {
                j4 = this.f87112p;
                if (j10 <= j4) {
                    mVar = mVar3;
                    mVar2 = this.f87117u;
                    r(cVar, mVar2, mVar);
                    if (mVar2 != null && !mVar2.isEmpty()) {
                        a.c cVar2 = this.f87109m;
                        cVar2.f67771a = true;
                        this.f87104h.a(bVar, mVar2, 0L, cVar2);
                    }
                    this.f87109m.f67771a = false;
                    if (mVar == null && !mVar.isEmpty()) {
                        this.f87104h.a(this.f87100d, mVar, this.f87108l, cVar);
                        t(cVar);
                        if (cVar.f67786p) {
                            master.flame.danmaku.danmaku.model.d dVar = this.f87115s;
                            if (dVar != null && dVar.y()) {
                                this.f87115s = null;
                                h.a aVar = this.f87103g;
                                if (aVar != null) {
                                    aVar.d();
                                }
                            }
                            if (cVar.f67784n == -1) {
                                cVar.f67784n = j14;
                            }
                            if (cVar.f67785o == -1) {
                                cVar.f67785o = j4;
                            }
                        }
                        return cVar;
                    }
                    cVar.f67786p = true;
                    cVar.f67784n = j14;
                    cVar.f67785o = j4;
                    return cVar;
                }
            }
            m f10 = this.f87101e.f(j12, j13);
            if (f10 != null) {
                this.f87106j = f10;
            }
            this.f87111o = j12;
            this.f87112p = j13;
            j4 = j13;
            j14 = j12;
            mVar = f10;
            mVar2 = this.f87117u;
            r(cVar, mVar2, mVar);
            if (mVar2 != null) {
                a.c cVar22 = this.f87109m;
                cVar22.f67771a = true;
                this.f87104h.a(bVar, mVar2, 0L, cVar22);
            }
            this.f87109m.f67771a = false;
            if (mVar == null) {
            }
            cVar.f67786p = true;
            cVar.f67784n = j14;
            cVar.f67785o = j4;
            return cVar;
        }
        return null;
    }

    @Override // master.flame.danmaku.controller.h
    public void start() {
        this.f87099c.v(this.f87119w);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean u(DanmakuContext danmakuContext, DanmakuContext.DanmakuConfigTag danmakuConfigTag, Object[] objArr) {
        Boolean bool;
        boolean z9 = false;
        if (danmakuConfigTag == null || DanmakuContext.DanmakuConfigTag.MAXIMUM_NUMS_IN_SCREEN.equals(danmakuConfigTag)) {
            return true;
        }
        if (DanmakuContext.DanmakuConfigTag.DUPLICATE_MERGING_ENABLED.equals(danmakuConfigTag)) {
            Boolean bool2 = (Boolean) objArr[0];
            if (bool2 != null) {
                if (bool2.booleanValue()) {
                    this.f87099c.f87166z.f(master.flame.danmaku.controller.b.f87038w);
                    return true;
                }
                this.f87099c.f87166z.l(master.flame.danmaku.controller.b.f87038w);
                return true;
            }
        } else if (!DanmakuContext.DanmakuConfigTag.SCALE_TEXTSIZE.equals(danmakuConfigTag) && !DanmakuContext.DanmakuConfigTag.SCROLL_SPEED_FACTOR.equals(danmakuConfigTag) && !DanmakuContext.DanmakuConfigTag.DANMAKU_MARGIN.equals(danmakuConfigTag)) {
            if (!DanmakuContext.DanmakuConfigTag.MAXIMUN_LINES.equals(danmakuConfigTag) && !DanmakuContext.DanmakuConfigTag.OVERLAPPING_ENABLE.equals(danmakuConfigTag)) {
                if (DanmakuContext.DanmakuConfigTag.ALIGN_BOTTOM.equals(danmakuConfigTag) && (bool = (Boolean) objArr[0]) != null) {
                    f8.a aVar = this.f87104h;
                    if (aVar != null) {
                        aVar.b(bool.booleanValue());
                        return true;
                    }
                    return true;
                }
            } else {
                f8.a aVar2 = this.f87104h;
                if (aVar2 != null) {
                    aVar2.d((this.f87099c.s() || this.f87099c.r()) ? true : true);
                    return true;
                }
                return true;
            }
        } else {
            m();
        }
        return false;
    }

    protected void v(master.flame.danmaku.danmaku.model.f fVar) {
        this.f87105i = fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void w(master.flame.danmaku.danmaku.parser.a aVar) {
        this.f87101e = aVar.i(this.f87099c).j(this.f87100d).l(this.f87105i).k(new f()).a();
        this.f87099c.f87165y.a();
        m mVar = this.f87101e;
        if (mVar != null) {
            this.f87115s = mVar.last();
        }
    }

    public boolean x(DanmakuContext danmakuContext, DanmakuContext.DanmakuConfigTag danmakuConfigTag, Object... objArr) {
        boolean u9 = u(danmakuContext, danmakuConfigTag, objArr);
        h.a aVar = this.f87103g;
        if (aVar != null) {
            aVar.e();
        }
        return u9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y(master.flame.danmaku.danmaku.model.d dVar) {
    }

    protected synchronized void z(int i4) {
        m mVar = this.f87101e;
        if (mVar != null && !mVar.isEmpty() && !this.f87116t.isEmpty()) {
            this.f87116t.a(new d(i4));
        }
    }
}
