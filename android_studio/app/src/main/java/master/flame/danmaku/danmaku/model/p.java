package master.flame.danmaku.danmaku.model;

/* compiled from: L2RDanmaku.java */
/* loaded from: classes4.dex */
public class p extends q {
    public p(g gVar) {
        super(gVar);
    }

    @Override // master.flame.danmaku.danmaku.model.q, master.flame.danmaku.danmaku.model.d
    public void A(n nVar, float f10, float f11) {
        f fVar = this.E;
        if (fVar != null) {
            long j4 = fVar.f87304a;
            long b10 = j4 - b();
            if (b10 > 0 && b10 < this.f87295r.f87308c) {
                this.X = K(nVar, j4);
                if (!x()) {
                    this.Y = f11;
                    J(true);
                }
                this.f87343c0 = j4;
                return;
            }
            this.f87343c0 = j4;
        }
        J(false);
    }

    @Override // master.flame.danmaku.danmaku.model.q
    protected float K(n nVar, long j4) {
        long b10 = j4 - b();
        if (b10 >= this.f87295r.f87308c) {
            return nVar.getWidth();
        }
        return (this.f87342b0 * ((float) b10)) - this.f87293p;
    }

    @Override // master.flame.danmaku.danmaku.model.q, master.flame.danmaku.danmaku.model.d
    public float d() {
        return this.Y + this.f87294q;
    }

    @Override // master.flame.danmaku.danmaku.model.q, master.flame.danmaku.danmaku.model.d
    public float g() {
        return this.X;
    }

    @Override // master.flame.danmaku.danmaku.model.q, master.flame.danmaku.danmaku.model.d
    public float[] h(n nVar, long j4) {
        if (s()) {
            float K = K(nVar, j4);
            if (this.f87341a0 == null) {
                this.f87341a0 = new float[4];
            }
            float[] fArr = this.f87341a0;
            fArr[0] = K;
            float f10 = this.Y;
            fArr[1] = f10;
            fArr[2] = K + this.f87293p;
            fArr[3] = f10 + this.f87294q;
            return fArr;
        }
        return null;
    }

    @Override // master.flame.danmaku.danmaku.model.q, master.flame.danmaku.danmaku.model.d
    public float i() {
        return this.X + this.f87293p;
    }

    @Override // master.flame.danmaku.danmaku.model.q, master.flame.danmaku.danmaku.model.d
    public float m() {
        return this.Y;
    }

    @Override // master.flame.danmaku.danmaku.model.q, master.flame.danmaku.danmaku.model.d
    public int n() {
        return 6;
    }
}
