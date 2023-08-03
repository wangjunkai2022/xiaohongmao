package master.flame.danmaku.danmaku.parser;

import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.d;
import master.flame.danmaku.danmaku.model.f;
import master.flame.danmaku.danmaku.model.m;
import master.flame.danmaku.danmaku.model.n;

/* compiled from: BaseDanmakuParser.java */
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected b<?> f87380a;

    /* renamed from: b  reason: collision with root package name */
    protected f f87381b;

    /* renamed from: c  reason: collision with root package name */
    protected int f87382c;

    /* renamed from: d  reason: collision with root package name */
    protected int f87383d;

    /* renamed from: e  reason: collision with root package name */
    protected float f87384e;

    /* renamed from: f  reason: collision with root package name */
    protected float f87385f;

    /* renamed from: g  reason: collision with root package name */
    private m f87386g;

    /* renamed from: h  reason: collision with root package name */
    protected n f87387h;

    /* renamed from: i  reason: collision with root package name */
    protected DanmakuContext f87388i;

    /* renamed from: j  reason: collision with root package name */
    protected InterfaceC0784a f87389j;

    /* compiled from: BaseDanmakuParser.java */
    /* renamed from: master.flame.danmaku.danmaku.parser.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0784a {
        void b(d dVar);
    }

    public m a() {
        m mVar = this.f87386g;
        if (mVar != null) {
            return mVar;
        }
        this.f87388i.A.k();
        this.f87386g = f();
        h();
        this.f87388i.A.m();
        return this.f87386g;
    }

    public n b() {
        return this.f87387h;
    }

    public f c() {
        return this.f87381b;
    }

    protected float d() {
        return 1.0f / (this.f87384e - 0.6f);
    }

    public a e(b<?> bVar) {
        this.f87380a = bVar;
        return this;
    }

    protected abstract m f();

    public void g() {
        h();
    }

    protected void h() {
        b<?> bVar = this.f87380a;
        if (bVar != null) {
            bVar.release();
        }
        this.f87380a = null;
    }

    public a i(DanmakuContext danmakuContext) {
        this.f87388i = danmakuContext;
        return this;
    }

    public a j(n nVar) {
        this.f87387h = nVar;
        this.f87382c = nVar.getWidth();
        this.f87383d = nVar.getHeight();
        this.f87384e = nVar.i();
        this.f87385f = nVar.f();
        this.f87388i.A.q(this.f87382c, this.f87383d, d());
        this.f87388i.A.m();
        return this;
    }

    public a k(InterfaceC0784a interfaceC0784a) {
        this.f87389j = interfaceC0784a;
        return this;
    }

    public a l(f fVar) {
        this.f87381b = fVar;
        return this;
    }
}
