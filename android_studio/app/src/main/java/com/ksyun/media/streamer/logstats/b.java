package com.ksyun.media.streamer.logstats;

/* compiled from: StatsTimer.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: o  reason: collision with root package name */
    private static b f46592o;

    /* renamed from: a  reason: collision with root package name */
    public volatile int f46593a;

    /* renamed from: b  reason: collision with root package name */
    public volatile int f46594b;

    /* renamed from: c  reason: collision with root package name */
    public volatile int f46595c;

    /* renamed from: d  reason: collision with root package name */
    public volatile int f46596d;

    /* renamed from: e  reason: collision with root package name */
    public volatile long f46597e;

    /* renamed from: f  reason: collision with root package name */
    public volatile int f46598f;

    /* renamed from: g  reason: collision with root package name */
    public volatile int f46599g;

    /* renamed from: h  reason: collision with root package name */
    public volatile int f46600h;

    /* renamed from: i  reason: collision with root package name */
    public volatile int f46601i;

    /* renamed from: j  reason: collision with root package name */
    public volatile float f46602j;

    /* renamed from: k  reason: collision with root package name */
    public volatile long f46603k;

    /* renamed from: l  reason: collision with root package name */
    public volatile long f46604l;

    /* renamed from: m  reason: collision with root package name */
    public volatile int f46605m;

    /* renamed from: n  reason: collision with root package name */
    public volatile long f46606n;

    private void A() {
        this.f46600h = 0;
    }

    private void B() {
        this.f46601i = 0;
    }

    private void C() {
        this.f46602j = 0.0f;
    }

    private void D() {
        this.f46603k = 0L;
    }

    private void E() {
        this.f46604l = 0L;
    }

    private void F() {
        this.f46605m = 0;
    }

    private void G() {
        this.f46606n = 0L;
    }

    public static b a() {
        b bVar;
        synchronized (b.class) {
            if (f46592o == null) {
                f46592o = new b();
            }
            bVar = f46592o;
        }
        return bVar;
    }

    public static void b() {
        f46592o = null;
    }

    private void w() {
        this.f46596d = 0;
    }

    private void x() {
        this.f46597e = 0L;
    }

    private void y() {
        this.f46598f = 0;
    }

    private void z() {
        this.f46599g = 0;
    }

    public void c() {
        synchronized (b.class) {
            this.f46593a++;
        }
    }

    public void d() {
        this.f46593a = 0;
    }

    public void e() {
        synchronized (b.class) {
            this.f46594b++;
        }
    }

    public int f() {
        return this.f46594b;
    }

    public void g() {
        this.f46594b = 0;
    }

    public void h() {
        synchronized (b.class) {
            this.f46595c++;
        }
    }

    public int i() {
        return this.f46595c;
    }

    public void j() {
        this.f46597e = 0L;
    }

    public int k() {
        return this.f46596d;
    }

    public long l() {
        return this.f46597e;
    }

    public int m() {
        return this.f46598f;
    }

    public int n() {
        return this.f46599g;
    }

    public int o() {
        return this.f46600h;
    }

    public int p() {
        return this.f46601i;
    }

    public float q() {
        return this.f46602j;
    }

    public long r() {
        return this.f46603k;
    }

    public long s() {
        return this.f46604l;
    }

    public int t() {
        return this.f46605m;
    }

    public long u() {
        return this.f46606n;
    }

    public void v() {
        g();
        d();
        w();
        x();
        j();
        B();
        y();
        z();
        A();
        C();
        D();
        E();
        F();
        G();
    }

    public void b(int i4) {
        synchronized (b.class) {
            this.f46598f = i4;
        }
    }

    public void d(int i4) {
        synchronized (b.class) {
            this.f46600h = i4;
        }
    }

    public void f(int i4) {
        this.f46605m = i4;
    }

    public void c(int i4) {
        synchronized (b.class) {
            this.f46599g = i4;
        }
    }

    public void e(int i4) {
        synchronized (b.class) {
            this.f46601i = i4;
        }
    }

    public void b(long j4) {
        this.f46603k = j4;
    }

    public void d(long j4) {
        this.f46606n = j4;
    }

    public void a(int i4) {
        synchronized (b.class) {
            this.f46596d = i4;
        }
    }

    public void c(long j4) {
        this.f46604l = j4;
    }

    public void a(long j4) {
        synchronized (b.class) {
            this.f46597e = j4;
        }
    }

    public void a(float f10) {
        this.f46602j = f10;
    }
}
