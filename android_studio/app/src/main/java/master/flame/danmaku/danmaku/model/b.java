package master.flame.danmaku.danmaku.model;

/* compiled from: AbsDisplayer.java */
/* loaded from: classes4.dex */
public abstract class b<T, F> implements n {
    public abstract void A(boolean z9);

    public abstract void B(float f10);

    public abstract void C(int i4);

    public abstract void D(F f10);

    @Override // master.flame.danmaku.danmaku.model.n
    public boolean isHardwareAccelerated() {
        return false;
    }

    public abstract void u();

    public abstract void v(d dVar, T t9, float f10, float f11, boolean z9);

    public abstract master.flame.danmaku.danmaku.model.android.b w();

    public abstract T x();

    public abstract void y(master.flame.danmaku.danmaku.model.android.b bVar);

    public abstract void z(T t9);
}
