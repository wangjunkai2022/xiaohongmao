package master.flame.danmaku.danmaku.renderer.android;

import f8.a;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.d;
import master.flame.danmaku.danmaku.model.f;
import master.flame.danmaku.danmaku.model.k;
import master.flame.danmaku.danmaku.model.m;
import master.flame.danmaku.danmaku.model.n;
import master.flame.danmaku.danmaku.model.o;
import master.flame.danmaku.danmaku.renderer.android.b;

/* compiled from: DanmakuRenderer.java */
/* loaded from: classes4.dex */
public class a extends f8.b {

    /* renamed from: d  reason: collision with root package name */
    private f f87393d;

    /* renamed from: e  reason: collision with root package name */
    private final DanmakuContext f87394e;

    /* renamed from: f  reason: collision with root package name */
    private b.g f87395f;

    /* renamed from: h  reason: collision with root package name */
    private final master.flame.danmaku.danmaku.renderer.android.b f87397h;

    /* renamed from: i  reason: collision with root package name */
    private k f87398i;

    /* renamed from: j  reason: collision with root package name */
    private a.b f87399j;

    /* renamed from: g  reason: collision with root package name */
    private final b.g f87396g = new C0785a();

    /* renamed from: k  reason: collision with root package name */
    private b f87400k = new b(this, null);

    /* compiled from: DanmakuRenderer.java */
    /* renamed from: master.flame.danmaku.danmaku.renderer.android.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0785a implements b.g {
        C0785a() {
        }

        @Override // master.flame.danmaku.danmaku.renderer.android.b.g
        public boolean a(d dVar, float f10, int i4, boolean z9) {
            if (dVar.f87292o == 0 && a.this.f87394e.f87166z.c(dVar, i4, 0, a.this.f87393d, z9, a.this.f87394e)) {
                dVar.J(false);
                return true;
            }
            return false;
        }
    }

    /* compiled from: DanmakuRenderer.java */
    /* loaded from: classes4.dex */
    private class b extends m.c<d> {

        /* renamed from: e  reason: collision with root package name */
        private d f87402e;

        /* renamed from: f  reason: collision with root package name */
        public n f87403f;

        /* renamed from: g  reason: collision with root package name */
        public a.c f87404g;

        /* renamed from: h  reason: collision with root package name */
        public long f87405h;

        private b() {
        }

        @Override // master.flame.danmaku.danmaku.model.m.b
        public void b() {
            this.f87404g.f67775e = this.f87402e;
            super.b();
        }

        @Override // master.flame.danmaku.danmaku.model.m.b
        /* renamed from: e */
        public int a(d dVar) {
            this.f87402e = dVar;
            if (dVar.y()) {
                this.f87403f.n(dVar);
                return this.f87404g.f67771a ? 2 : 0;
            } else if (this.f87404g.f67771a || !dVar.t()) {
                if (!dVar.o()) {
                    master.flame.danmaku.controller.b bVar = a.this.f87394e.f87166z;
                    a.c cVar = this.f87404g;
                    bVar.b(dVar, cVar.f67773c, cVar.f67774d, cVar.f67772b, false, a.this.f87394e);
                }
                if (dVar.b() >= this.f87405h && (dVar.f87292o != 0 || !dVar.p())) {
                    if (dVar.r()) {
                        o<?> e4 = dVar.e();
                        if (a.this.f87398i != null && (e4 == null || e4.get() == null)) {
                            a.this.f87398i.b(dVar);
                        }
                        return 1;
                    }
                    if (dVar.n() == 1) {
                        this.f87404g.f67773c++;
                    }
                    if (!dVar.s()) {
                        dVar.B(this.f87403f, false);
                    }
                    if (!dVar.w()) {
                        dVar.C(this.f87403f, false);
                    }
                    a.this.f87397h.c(dVar, this.f87403f, a.this.f87395f);
                    if (!dVar.x() || (dVar.f87281d == null && dVar.d() > this.f87403f.getHeight())) {
                        return 0;
                    }
                    int a10 = dVar.a(this.f87403f);
                    if (a10 == 1) {
                        this.f87404g.f67788r++;
                    } else if (a10 == 2) {
                        this.f87404g.f67789s++;
                        if (a.this.f87398i != null) {
                            a.this.f87398i.b(dVar);
                        }
                    }
                    this.f87404g.a(dVar.n(), 1);
                    this.f87404g.b(1);
                    this.f87404g.c(dVar);
                    if (a.this.f87399j != null && dVar.K != a.this.f87394e.f87165y.f87315d) {
                        dVar.K = a.this.f87394e.f87165y.f87315d;
                        a.this.f87399j.a(dVar);
                    }
                }
                return 0;
            } else {
                return 0;
            }
        }

        /* synthetic */ b(a aVar, C0785a c0785a) {
            this();
        }
    }

    public a(DanmakuContext danmakuContext) {
        this.f87394e = danmakuContext;
        this.f87397h = new master.flame.danmaku.danmaku.renderer.android.b(danmakuContext.p());
    }

    @Override // f8.a
    public void a(n nVar, m mVar, long j4, a.c cVar) {
        this.f87393d = cVar.f67772b;
        b bVar = this.f87400k;
        bVar.f87403f = nVar;
        bVar.f87404g = cVar;
        bVar.f87405h = j4;
        mVar.a(bVar);
    }

    @Override // f8.a
    public void b(boolean z9) {
        master.flame.danmaku.danmaku.renderer.android.b bVar = this.f87397h;
        if (bVar != null) {
            bVar.a(z9);
        }
    }

    @Override // f8.a
    public void c(k kVar) {
        this.f87398i = kVar;
    }

    @Override // f8.a
    public void clear() {
        e();
        this.f87394e.f87166z.a();
    }

    @Override // f8.a
    public void d(boolean z9) {
        this.f87395f = z9 ? this.f87396g : null;
    }

    @Override // f8.a
    public void e() {
        this.f87397h.b();
    }

    @Override // f8.a
    public void f() {
        this.f87399j = null;
    }

    @Override // f8.a
    public void g(a.b bVar) {
        this.f87399j = bVar;
    }

    @Override // f8.a
    public void release() {
        this.f87397h.d();
        this.f87394e.f87166z.a();
    }
}
