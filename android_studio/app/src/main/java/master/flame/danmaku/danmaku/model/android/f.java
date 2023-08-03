package master.flame.danmaku.danmaku.model.android;

import master.flame.danmaku.danmaku.model.o;

/* compiled from: DrawingCache.java */
/* loaded from: classes4.dex */
public class f implements o<g>, master.flame.danmaku.danmaku.model.objectpool.c<f> {

    /* renamed from: c  reason: collision with root package name */
    private f f87256c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f87257d;

    /* renamed from: b  reason: collision with root package name */
    private int f87255b = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f87258e = 0;

    /* renamed from: a  reason: collision with root package name */
    private final g f87254a = new g();

    @Override // master.flame.danmaku.danmaku.model.objectpool.c
    public void a(boolean z9) {
        this.f87257d = z9;
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public int b() {
        return this.f87254a.f87264f;
    }

    @Override // master.flame.danmaku.danmaku.model.objectpool.c
    public boolean d() {
        return this.f87257d;
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public void destroy() {
        g gVar = this.f87254a;
        if (gVar != null) {
            gVar.f();
        }
        this.f87255b = 0;
        this.f87258e = 0;
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public synchronized void e() {
        this.f87258e--;
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public synchronized boolean f() {
        return this.f87258e > 0;
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public void g(int i4, int i10, int i11, boolean z9, int i12) {
        this.f87254a.a(i4, i10, i11, z9, i12);
        this.f87255b = this.f87254a.f87260b.getRowBytes() * this.f87254a.f87260b.getHeight();
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public int h() {
        return this.f87254a.f87263e;
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public void i() {
        this.f87254a.c();
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public synchronized void k() {
        this.f87258e++;
    }

    @Override // master.flame.danmaku.danmaku.model.o
    /* renamed from: l */
    public g get() {
        g gVar = this.f87254a;
        if (gVar.f87260b == null) {
            return null;
        }
        return gVar;
    }

    @Override // master.flame.danmaku.danmaku.model.objectpool.c
    /* renamed from: m */
    public f c() {
        return this.f87256c;
    }

    @Override // master.flame.danmaku.danmaku.model.objectpool.c
    /* renamed from: n */
    public void j(f fVar) {
        this.f87256c = fVar;
    }

    @Override // master.flame.danmaku.danmaku.model.o
    public int size() {
        return this.f87255b;
    }
}
