package master.flame.danmaku.danmaku.model;

/* compiled from: DanmakuTimer.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public long f87304a;

    /* renamed from: b  reason: collision with root package name */
    private long f87305b;

    public f() {
    }

    public long a(long j4) {
        return c(this.f87304a + j4);
    }

    public long b() {
        return this.f87305b;
    }

    public long c(long j4) {
        long j10 = j4 - this.f87304a;
        this.f87305b = j10;
        this.f87304a = j4;
        return j10;
    }

    public f(long j4) {
        c(j4);
    }
}
