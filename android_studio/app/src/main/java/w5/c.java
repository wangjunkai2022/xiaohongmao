package w5;

/* compiled from: IConfig.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: e  reason: collision with root package name */
    public static final String f94459e = "tlog.log";

    /* renamed from: f  reason: collision with root package name */
    private static c f94460f;

    /* renamed from: a  reason: collision with root package name */
    private boolean f94461a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f94462b = false;

    /* renamed from: c  reason: collision with root package name */
    private long f94463c = 100000;

    /* renamed from: d  reason: collision with root package name */
    private String f94464d = "TLOG";

    public static c c() {
        if (f94460f == null) {
            synchronized (c.class) {
                if (f94460f == null) {
                    f94460f = new c();
                }
            }
        }
        return f94460f;
    }

    public c a(long j4) {
        this.f94463c = j4;
        return this;
    }

    public long b() {
        return this.f94463c;
    }

    public boolean d() {
        return this.f94461a;
    }

    public boolean e() {
        return this.f94462b;
    }

    public String f() {
        return this.f94464d;
    }

    public c g(boolean z9) {
        this.f94461a = z9;
        return this;
    }

    public c h(boolean z9) {
        this.f94462b = z9;
        return this;
    }

    public c i(String str) {
        this.f94464d = str;
        return this;
    }
}
