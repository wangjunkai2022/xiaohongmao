package master.flame.danmaku.danmaku.model;

/* compiled from: FTDanmaku.java */
/* loaded from: classes4.dex */
public class i extends d {
    private float X = 0.0f;
    protected float Y = -1.0f;
    private float[] Z = null;

    /* renamed from: a0  reason: collision with root package name */
    private float f87309a0;

    /* renamed from: b0  reason: collision with root package name */
    private float f87310b0;

    /* renamed from: c0  reason: collision with root package name */
    private int f87311c0;

    public i(g gVar) {
        this.f87295r = gVar;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public void A(n nVar, float f10, float f11) {
        f fVar = this.E;
        if (fVar != null) {
            long b10 = fVar.f87304a - b();
            if (b10 > 0 && b10 < this.f87295r.f87308c) {
                if (x()) {
                    return;
                }
                this.X = K(nVar);
                this.Y = f11;
                J(true);
                return;
            }
            J(false);
            this.Y = -1.0f;
            this.X = nVar.getWidth();
        }
    }

    protected float K(n nVar) {
        if (this.f87311c0 == nVar.getWidth() && this.f87310b0 == this.f87293p) {
            return this.f87309a0;
        }
        float width = (nVar.getWidth() - this.f87293p) / 2.0f;
        this.f87311c0 = nVar.getWidth();
        this.f87310b0 = this.f87293p;
        this.f87309a0 = width;
        return width;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float d() {
        return this.Y + this.f87294q;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float g() {
        return this.X;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float[] h(n nVar, long j4) {
        if (s()) {
            float K = K(nVar);
            if (this.Z == null) {
                this.Z = new float[4];
            }
            float[] fArr = this.Z;
            fArr[0] = K;
            float f10 = this.Y;
            fArr[1] = f10;
            fArr[2] = K + this.f87293p;
            fArr[3] = f10 + this.f87294q;
            return fArr;
        }
        return null;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float i() {
        return this.X + this.f87293p;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public float m() {
        return this.Y;
    }

    @Override // master.flame.danmaku.danmaku.model.d
    public int n() {
        return 5;
    }
}
