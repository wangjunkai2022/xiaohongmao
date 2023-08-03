package master.flame.danmaku.danmaku.model.android;

/* compiled from: CachingPolicy.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: h  reason: collision with root package name */
    public static final int f87210h = 16;

    /* renamed from: i  reason: collision with root package name */
    public static final int f87211i = 32;

    /* renamed from: j  reason: collision with root package name */
    public static final int f87212j = 0;

    /* renamed from: k  reason: collision with root package name */
    public static final int f87213k = -1;

    /* renamed from: l  reason: collision with root package name */
    public static final c f87214l;

    /* renamed from: m  reason: collision with root package name */
    public static final c f87215m;

    /* renamed from: n  reason: collision with root package name */
    public static final c f87216n;

    /* renamed from: a  reason: collision with root package name */
    public int f87217a;

    /* renamed from: b  reason: collision with root package name */
    public float f87218b;

    /* renamed from: c  reason: collision with root package name */
    public long f87219c;

    /* renamed from: d  reason: collision with root package name */
    public float f87220d;

    /* renamed from: e  reason: collision with root package name */
    public int f87221e;

    /* renamed from: f  reason: collision with root package name */
    public int f87222f = 20;

    /* renamed from: g  reason: collision with root package name */
    public int f87223g = 150;

    static {
        c cVar = new c(16, 0.3f, 0L, 50, 0.01f);
        f87214l = cVar;
        f87215m = new c(16, 0.5f, -1L, 50, 0.005f);
        f87216n = cVar;
    }

    public c(int i4, float f10, long j4, int i10, float f11) {
        this.f87218b = 0.3f;
        this.f87219c = 0L;
        this.f87220d = 0.01f;
        this.f87221e = 0;
        this.f87217a = i4;
        this.f87217a = 32;
        this.f87218b = f10;
        this.f87219c = j4;
        this.f87221e = i10;
        this.f87220d = f11;
    }
}
