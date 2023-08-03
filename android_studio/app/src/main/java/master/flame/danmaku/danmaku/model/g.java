package master.flame.danmaku.danmaku.model;

/* compiled from: Duration.java */
/* loaded from: classes4.dex */
public class g implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private long f87306a;

    /* renamed from: b  reason: collision with root package name */
    private float f87307b = 1.0f;

    /* renamed from: c  reason: collision with root package name */
    public long f87308c;

    public g(long j4) {
        this.f87306a = j4;
        this.f87308c = j4;
    }

    public void a(float f10) {
        if (this.f87307b != f10) {
            this.f87307b = f10;
            this.f87308c = ((float) this.f87306a) * f10;
        }
    }

    public void b(long j4) {
        this.f87306a = j4;
        this.f87308c = ((float) j4) * this.f87307b;
    }
}
