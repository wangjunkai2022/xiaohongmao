package com.google.common.math;

import com.google.common.base.a0;
import java.util.Iterator;

/* compiled from: StatsAccumulator.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private long f34595a = 0;

    /* renamed from: b  reason: collision with root package name */
    private double f34596b = 0.0d;

    /* renamed from: c  reason: collision with root package name */
    private double f34597c = 0.0d;

    /* renamed from: d  reason: collision with root package name */
    private double f34598d = Double.NaN;

    /* renamed from: e  reason: collision with root package name */
    private double f34599e = Double.NaN;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double h(double d4, double d10) {
        if (com.google.common.primitives.d.n(d4)) {
            return d10;
        }
        if (com.google.common.primitives.d.n(d10) || d4 == d10) {
            return d4;
        }
        return Double.NaN;
    }

    public void a(double d4) {
        long j4 = this.f34595a;
        if (j4 == 0) {
            this.f34595a = 1L;
            this.f34596b = d4;
            this.f34598d = d4;
            this.f34599e = d4;
            if (com.google.common.primitives.d.n(d4)) {
                return;
            }
            this.f34597c = Double.NaN;
            return;
        }
        this.f34595a = j4 + 1;
        if (com.google.common.primitives.d.n(d4) && com.google.common.primitives.d.n(this.f34596b)) {
            double d10 = this.f34596b;
            double d11 = d4 - d10;
            double d12 = d10 + (d11 / this.f34595a);
            this.f34596b = d12;
            this.f34597c += d11 * (d4 - d12);
        } else {
            this.f34596b = h(this.f34596b, d4);
            this.f34597c = Double.NaN;
        }
        this.f34598d = Math.min(this.f34598d, d4);
        this.f34599e = Math.max(this.f34599e, d4);
    }

    public void b(Stats stats) {
        if (stats.count() == 0) {
            return;
        }
        long j4 = this.f34595a;
        if (j4 == 0) {
            this.f34595a = stats.count();
            this.f34596b = stats.mean();
            this.f34597c = stats.b();
            this.f34598d = stats.min();
            this.f34599e = stats.max();
            return;
        }
        this.f34595a = j4 + stats.count();
        if (com.google.common.primitives.d.n(this.f34596b) && com.google.common.primitives.d.n(stats.mean())) {
            double mean = stats.mean();
            double d4 = this.f34596b;
            double d10 = mean - d4;
            this.f34596b = d4 + ((stats.count() * d10) / this.f34595a);
            this.f34597c += stats.b() + (d10 * (stats.mean() - this.f34596b) * stats.count());
        } else {
            this.f34596b = h(this.f34596b, stats.mean());
            this.f34597c = Double.NaN;
        }
        this.f34598d = Math.min(this.f34598d, stats.min());
        this.f34599e = Math.max(this.f34599e, stats.max());
    }

    public void c(Iterable<? extends Number> iterable) {
        for (Number number : iterable) {
            a(number.doubleValue());
        }
    }

    public void d(Iterator<? extends Number> it) {
        while (it.hasNext()) {
            a(it.next().doubleValue());
        }
    }

    public void e(double... dArr) {
        for (double d4 : dArr) {
            a(d4);
        }
    }

    public void f(int... iArr) {
        for (int i4 : iArr) {
            a(i4);
        }
    }

    public void g(long... jArr) {
        for (long j4 : jArr) {
            a(j4);
        }
    }

    public long i() {
        return this.f34595a;
    }

    public double j() {
        a0.g0(this.f34595a != 0);
        return this.f34599e;
    }

    public double k() {
        a0.g0(this.f34595a != 0);
        return this.f34596b;
    }

    public double l() {
        a0.g0(this.f34595a != 0);
        return this.f34598d;
    }

    public final double m() {
        return Math.sqrt(n());
    }

    public final double n() {
        a0.g0(this.f34595a != 0);
        if (Double.isNaN(this.f34597c)) {
            return Double.NaN;
        }
        if (this.f34595a == 1) {
            return 0.0d;
        }
        return c.b(this.f34597c) / this.f34595a;
    }

    public final double o() {
        return Math.sqrt(p());
    }

    public final double p() {
        a0.g0(this.f34595a > 1);
        if (Double.isNaN(this.f34597c)) {
            return Double.NaN;
        }
        return c.b(this.f34597c) / (this.f34595a - 1);
    }

    public Stats q() {
        return new Stats(this.f34595a, this.f34596b, this.f34597c, this.f34598d, this.f34599e);
    }

    public final double r() {
        return this.f34596b * this.f34595a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double s() {
        return this.f34597c;
    }
}
