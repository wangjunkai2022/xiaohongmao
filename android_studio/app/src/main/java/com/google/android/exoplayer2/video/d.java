package com.google.android.exoplayer2.video;

import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* compiled from: FixedFrameRateEstimator.java */
/* loaded from: classes2.dex */
final class d {

    /* renamed from: g  reason: collision with root package name */
    public static final int f27892g = 15;
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    static final long f27893h = 1000000;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27896c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27897d;

    /* renamed from: f  reason: collision with root package name */
    private int f27899f;

    /* renamed from: a  reason: collision with root package name */
    private a f27894a = new a();

    /* renamed from: b  reason: collision with root package name */
    private a f27895b = new a();

    /* renamed from: e  reason: collision with root package name */
    private long f27898e = com.google.android.exoplayer2.i.f23649b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FixedFrameRateEstimator.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f27900a;

        /* renamed from: b  reason: collision with root package name */
        private long f27901b;

        /* renamed from: c  reason: collision with root package name */
        private long f27902c;

        /* renamed from: d  reason: collision with root package name */
        private long f27903d;

        /* renamed from: e  reason: collision with root package name */
        private long f27904e;

        /* renamed from: f  reason: collision with root package name */
        private long f27905f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean[] f27906g = new boolean[15];

        /* renamed from: h  reason: collision with root package name */
        private int f27907h;

        private static int c(long j4) {
            return (int) (j4 % 15);
        }

        public long a() {
            long j4 = this.f27904e;
            if (j4 == 0) {
                return 0L;
            }
            return this.f27905f / j4;
        }

        public long b() {
            return this.f27905f;
        }

        public boolean d() {
            long j4 = this.f27903d;
            if (j4 == 0) {
                return false;
            }
            return this.f27906g[c(j4 - 1)];
        }

        public boolean e() {
            return this.f27903d > 15 && this.f27907h == 0;
        }

        public void f(long j4) {
            long j10 = this.f27903d;
            if (j10 == 0) {
                this.f27900a = j4;
            } else if (j10 == 1) {
                long j11 = j4 - this.f27900a;
                this.f27901b = j11;
                this.f27905f = j11;
                this.f27904e = 1L;
            } else {
                long j12 = j4 - this.f27902c;
                int c10 = c(j10);
                if (Math.abs(j12 - this.f27901b) <= 1000000) {
                    this.f27904e++;
                    this.f27905f += j12;
                    boolean[] zArr = this.f27906g;
                    if (zArr[c10]) {
                        zArr[c10] = false;
                        this.f27907h--;
                    }
                } else {
                    boolean[] zArr2 = this.f27906g;
                    if (!zArr2[c10]) {
                        zArr2[c10] = true;
                        this.f27907h++;
                    }
                }
            }
            this.f27903d++;
            this.f27902c = j4;
        }

        public void g() {
            this.f27903d = 0L;
            this.f27904e = 0L;
            this.f27905f = 0L;
            this.f27907h = 0;
            Arrays.fill(this.f27906g, false);
        }
    }

    public long a() {
        return e() ? this.f27894a.a() : com.google.android.exoplayer2.i.f23649b;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f27894a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f27899f;
    }

    public long d() {
        return e() ? this.f27894a.b() : com.google.android.exoplayer2.i.f23649b;
    }

    public boolean e() {
        return this.f27894a.e();
    }

    public void f(long j4) {
        this.f27894a.f(j4);
        if (this.f27894a.e() && !this.f27897d) {
            this.f27896c = false;
        } else if (this.f27898e != com.google.android.exoplayer2.i.f23649b) {
            if (!this.f27896c || this.f27895b.d()) {
                this.f27895b.g();
                this.f27895b.f(this.f27898e);
            }
            this.f27896c = true;
            this.f27895b.f(j4);
        }
        if (this.f27896c && this.f27895b.e()) {
            a aVar = this.f27894a;
            this.f27894a = this.f27895b;
            this.f27895b = aVar;
            this.f27896c = false;
            this.f27897d = false;
        }
        this.f27898e = j4;
        this.f27899f = this.f27894a.e() ? 0 : this.f27899f + 1;
    }

    public void g() {
        this.f27894a.g();
        this.f27895b.g();
        this.f27896c = false;
        this.f27898e = com.google.android.exoplayer2.i.f23649b;
        this.f27899f = 0;
    }
}
