package com.google.android.exoplayer2;

import android.os.SystemClock;
import com.google.android.exoplayer2.b1;

/* compiled from: DefaultLivePlaybackSpeedControl.java */
/* loaded from: classes2.dex */
public final class l implements y0 {

    /* renamed from: t  reason: collision with root package name */
    public static final float f23837t = 0.97f;

    /* renamed from: u  reason: collision with root package name */
    public static final float f23838u = 1.03f;

    /* renamed from: v  reason: collision with root package name */
    public static final long f23839v = 1000;

    /* renamed from: w  reason: collision with root package name */
    public static final float f23840w = 0.1f;

    /* renamed from: x  reason: collision with root package name */
    public static final long f23841x = 500;

    /* renamed from: y  reason: collision with root package name */
    public static final float f23842y = 0.999f;

    /* renamed from: z  reason: collision with root package name */
    public static final long f23843z = 20;

    /* renamed from: a  reason: collision with root package name */
    private final float f23844a;

    /* renamed from: b  reason: collision with root package name */
    private final float f23845b;

    /* renamed from: c  reason: collision with root package name */
    private final long f23846c;

    /* renamed from: d  reason: collision with root package name */
    private final float f23847d;

    /* renamed from: e  reason: collision with root package name */
    private final long f23848e;

    /* renamed from: f  reason: collision with root package name */
    private final long f23849f;

    /* renamed from: g  reason: collision with root package name */
    private final float f23850g;

    /* renamed from: h  reason: collision with root package name */
    private long f23851h;

    /* renamed from: i  reason: collision with root package name */
    private long f23852i;

    /* renamed from: j  reason: collision with root package name */
    private long f23853j;

    /* renamed from: k  reason: collision with root package name */
    private long f23854k;

    /* renamed from: l  reason: collision with root package name */
    private long f23855l;

    /* renamed from: m  reason: collision with root package name */
    private long f23856m;

    /* renamed from: n  reason: collision with root package name */
    private float f23857n;

    /* renamed from: o  reason: collision with root package name */
    private float f23858o;

    /* renamed from: p  reason: collision with root package name */
    private float f23859p;

    /* renamed from: q  reason: collision with root package name */
    private long f23860q;

    /* renamed from: r  reason: collision with root package name */
    private long f23861r;

    /* renamed from: s  reason: collision with root package name */
    private long f23862s;

    /* compiled from: DefaultLivePlaybackSpeedControl.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private float f23863a = 0.97f;

        /* renamed from: b  reason: collision with root package name */
        private float f23864b = 1.03f;

        /* renamed from: c  reason: collision with root package name */
        private long f23865c = 1000;

        /* renamed from: d  reason: collision with root package name */
        private float f23866d = 1.0E-7f;

        /* renamed from: e  reason: collision with root package name */
        private long f23867e = i.c(20);

        /* renamed from: f  reason: collision with root package name */
        private long f23868f = i.c(500);

        /* renamed from: g  reason: collision with root package name */
        private float f23869g = 0.999f;

        public l a() {
            return new l(this.f23863a, this.f23864b, this.f23865c, this.f23866d, this.f23867e, this.f23868f, this.f23869g);
        }

        public b b(float f10) {
            com.google.android.exoplayer2.util.a.a(f10 >= 1.0f);
            this.f23864b = f10;
            return this;
        }

        public b c(float f10) {
            com.google.android.exoplayer2.util.a.a(0.0f < f10 && f10 <= 1.0f);
            this.f23863a = f10;
            return this;
        }

        public b d(long j4) {
            com.google.android.exoplayer2.util.a.a(j4 > 0);
            this.f23867e = i.c(j4);
            return this;
        }

        public b e(float f10) {
            com.google.android.exoplayer2.util.a.a(f10 >= 0.0f && f10 < 1.0f);
            this.f23869g = f10;
            return this;
        }

        public b f(long j4) {
            com.google.android.exoplayer2.util.a.a(j4 > 0);
            this.f23865c = j4;
            return this;
        }

        public b g(float f10) {
            com.google.android.exoplayer2.util.a.a(f10 > 0.0f);
            this.f23866d = f10 / 1000000.0f;
            return this;
        }

        public b h(long j4) {
            com.google.android.exoplayer2.util.a.a(j4 >= 0);
            this.f23868f = i.c(j4);
            return this;
        }
    }

    private void f(long j4) {
        long j10 = this.f23861r + (this.f23862s * 3);
        if (this.f23856m > j10) {
            float c10 = (float) i.c(this.f23846c);
            this.f23856m = com.google.common.primitives.g.s(j10, this.f23853j, this.f23856m - (((this.f23859p - 1.0f) * c10) + ((this.f23857n - 1.0f) * c10)));
            return;
        }
        long u9 = com.google.android.exoplayer2.util.z0.u(j4 - (Math.max(0.0f, this.f23859p - 1.0f) / this.f23847d), this.f23856m, j10);
        this.f23856m = u9;
        long j11 = this.f23855l;
        if (j11 == i.f23649b || u9 <= j11) {
            return;
        }
        this.f23856m = j11;
    }

    private void g() {
        long j4 = this.f23851h;
        if (j4 != i.f23649b) {
            long j10 = this.f23852i;
            if (j10 != i.f23649b) {
                j4 = j10;
            }
            long j11 = this.f23854k;
            if (j11 != i.f23649b && j4 < j11) {
                j4 = j11;
            }
            long j12 = this.f23855l;
            if (j12 != i.f23649b && j4 > j12) {
                j4 = j12;
            }
        } else {
            j4 = -9223372036854775807L;
        }
        if (this.f23853j == j4) {
            return;
        }
        this.f23853j = j4;
        this.f23856m = j4;
        this.f23861r = i.f23649b;
        this.f23862s = i.f23649b;
        this.f23860q = i.f23649b;
    }

    private static long h(long j4, long j10, float f10) {
        return (((float) j4) * f10) + ((1.0f - f10) * ((float) j10));
    }

    private void i(long j4, long j10) {
        long j11 = j4 - j10;
        long j12 = this.f23861r;
        if (j12 == i.f23649b) {
            this.f23861r = j11;
            this.f23862s = 0L;
            return;
        }
        long max = Math.max(j11, h(j12, j11, this.f23850g));
        this.f23861r = max;
        this.f23862s = h(this.f23862s, Math.abs(j11 - max), this.f23850g);
    }

    @Override // com.google.android.exoplayer2.y0
    public void a(b1.f fVar) {
        this.f23851h = i.c(fVar.f21497a);
        this.f23854k = i.c(fVar.f21498b);
        this.f23855l = i.c(fVar.f21499c);
        float f10 = fVar.f21500d;
        if (f10 == -3.4028235E38f) {
            f10 = this.f23844a;
        }
        this.f23858o = f10;
        float f11 = fVar.f21501e;
        if (f11 == -3.4028235E38f) {
            f11 = this.f23845b;
        }
        this.f23857n = f11;
        g();
    }

    @Override // com.google.android.exoplayer2.y0
    public float b(long j4, long j10) {
        if (this.f23851h == i.f23649b) {
            return 1.0f;
        }
        i(j4, j10);
        if (this.f23860q != i.f23649b && SystemClock.elapsedRealtime() - this.f23860q < this.f23846c) {
            return this.f23859p;
        }
        this.f23860q = SystemClock.elapsedRealtime();
        f(j4);
        long j11 = j4 - this.f23856m;
        if (Math.abs(j11) < this.f23848e) {
            this.f23859p = 1.0f;
        } else {
            this.f23859p = com.google.android.exoplayer2.util.z0.s((this.f23847d * ((float) j11)) + 1.0f, this.f23858o, this.f23857n);
        }
        return this.f23859p;
    }

    @Override // com.google.android.exoplayer2.y0
    public long c() {
        return this.f23856m;
    }

    @Override // com.google.android.exoplayer2.y0
    public void d() {
        long j4 = this.f23856m;
        if (j4 == i.f23649b) {
            return;
        }
        long j10 = j4 + this.f23849f;
        this.f23856m = j10;
        long j11 = this.f23855l;
        if (j11 != i.f23649b && j10 > j11) {
            this.f23856m = j11;
        }
        this.f23860q = i.f23649b;
    }

    @Override // com.google.android.exoplayer2.y0
    public void e(long j4) {
        this.f23852i = j4;
        g();
    }

    private l(float f10, float f11, long j4, float f12, long j10, long j11, float f13) {
        this.f23844a = f10;
        this.f23845b = f11;
        this.f23846c = j4;
        this.f23847d = f12;
        this.f23848e = j10;
        this.f23849f = j11;
        this.f23850g = f13;
        this.f23851h = i.f23649b;
        this.f23852i = i.f23649b;
        this.f23854k = i.f23649b;
        this.f23855l = i.f23649b;
        this.f23858o = f10;
        this.f23857n = f11;
        this.f23859p = 1.0f;
        this.f23860q = i.f23649b;
        this.f23853j = i.f23649b;
        this.f23856m = i.f23649b;
        this.f23861r = i.f23649b;
        this.f23862s = i.f23649b;
    }
}
