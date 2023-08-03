package com.google.common.util.concurrent;

import com.google.common.util.concurrent.a1;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SmoothRateLimiter.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class g1 extends a1 {

    /* renamed from: c  reason: collision with root package name */
    double f35135c;

    /* renamed from: d  reason: collision with root package name */
    double f35136d;

    /* renamed from: e  reason: collision with root package name */
    double f35137e;

    /* renamed from: f  reason: collision with root package name */
    private long f35138f;

    /* compiled from: SmoothRateLimiter.java */
    /* loaded from: classes2.dex */
    static final class b extends g1 {

        /* renamed from: g  reason: collision with root package name */
        final double f35139g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(a1.a aVar, double d4) {
            super(aVar);
            this.f35139g = d4;
        }

        @Override // com.google.common.util.concurrent.g1
        double v() {
            return this.f35137e;
        }

        @Override // com.google.common.util.concurrent.g1
        void w(double d4, double d10) {
            double d11 = this.f35136d;
            double d12 = this.f35139g * d4;
            this.f35136d = d12;
            if (d11 == Double.POSITIVE_INFINITY) {
                this.f35135c = d12;
            } else {
                this.f35135c = d11 != 0.0d ? (this.f35135c * d12) / d11 : 0.0d;
            }
        }

        @Override // com.google.common.util.concurrent.g1
        long y(double d4, double d10) {
            return 0L;
        }
    }

    /* compiled from: SmoothRateLimiter.java */
    /* loaded from: classes2.dex */
    static final class c extends g1 {

        /* renamed from: g  reason: collision with root package name */
        private final long f35140g;

        /* renamed from: h  reason: collision with root package name */
        private double f35141h;

        /* renamed from: i  reason: collision with root package name */
        private double f35142i;

        /* renamed from: j  reason: collision with root package name */
        private double f35143j;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(a1.a aVar, long j4, TimeUnit timeUnit, double d4) {
            super(aVar);
            this.f35140g = timeUnit.toMicros(j4);
            this.f35143j = d4;
        }

        private double z(double d4) {
            return this.f35137e + (d4 * this.f35141h);
        }

        @Override // com.google.common.util.concurrent.g1
        double v() {
            return this.f35140g / this.f35136d;
        }

        @Override // com.google.common.util.concurrent.g1
        void w(double d4, double d10) {
            double d11 = this.f35136d;
            double d12 = this.f35143j * d10;
            long j4 = this.f35140g;
            double d13 = (j4 * 0.5d) / d10;
            this.f35142i = d13;
            double d14 = ((j4 * 2.0d) / (d10 + d12)) + d13;
            this.f35136d = d14;
            this.f35141h = (d12 - d10) / (d14 - d13);
            if (d11 == Double.POSITIVE_INFINITY) {
                this.f35135c = 0.0d;
                return;
            }
            if (d11 != 0.0d) {
                d14 = (this.f35135c * d14) / d11;
            }
            this.f35135c = d14;
        }

        @Override // com.google.common.util.concurrent.g1
        long y(double d4, double d10) {
            long j4;
            double d11 = d4 - this.f35142i;
            if (d11 > 0.0d) {
                double min = Math.min(d11, d10);
                j4 = (long) (((z(d11) + z(d11 - min)) * min) / 2.0d);
                d10 -= min;
            } else {
                j4 = 0;
            }
            return j4 + ((long) (this.f35137e * d10));
        }
    }

    @Override // com.google.common.util.concurrent.a1
    final double i() {
        return TimeUnit.SECONDS.toMicros(1L) / this.f35137e;
    }

    @Override // com.google.common.util.concurrent.a1
    final void j(double d4, long j4) {
        x(j4);
        double micros = TimeUnit.SECONDS.toMicros(1L) / d4;
        this.f35137e = micros;
        w(d4, micros);
    }

    @Override // com.google.common.util.concurrent.a1
    final long m(long j4) {
        return this.f35138f;
    }

    @Override // com.google.common.util.concurrent.a1
    final long p(int i4, long j4) {
        x(j4);
        long j10 = this.f35138f;
        double d4 = i4;
        double min = Math.min(d4, this.f35135c);
        this.f35138f = com.google.common.math.f.w(this.f35138f, y(this.f35135c, min) + ((long) ((d4 - min) * this.f35137e)));
        this.f35135c -= min;
        return j10;
    }

    abstract double v();

    abstract void w(double d4, double d10);

    void x(long j4) {
        long j10 = this.f35138f;
        if (j4 > j10) {
            this.f35135c = Math.min(this.f35136d, this.f35135c + ((j4 - j10) / v()));
            this.f35138f = j4;
        }
    }

    abstract long y(double d4, double d10);

    private g1(a1.a aVar) {
        super(aVar);
        this.f35138f = 0L;
    }
}
