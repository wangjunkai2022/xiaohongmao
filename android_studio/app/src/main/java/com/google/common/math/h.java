package com.google.common.math;

import com.google.common.base.a0;

/* compiled from: PairedStatsAccumulator.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final j f34587a = new j();

    /* renamed from: b  reason: collision with root package name */
    private final j f34588b = new j();

    /* renamed from: c  reason: collision with root package name */
    private double f34589c = 0.0d;

    private static double d(double d4) {
        if (d4 >= 1.0d) {
            return 1.0d;
        }
        if (d4 <= -1.0d) {
            return -1.0d;
        }
        return d4;
    }

    private double e(double d4) {
        if (d4 > 0.0d) {
            return d4;
        }
        return Double.MIN_VALUE;
    }

    public void a(double d4, double d10) {
        this.f34587a.a(d4);
        if (com.google.common.primitives.d.n(d4) && com.google.common.primitives.d.n(d10)) {
            if (this.f34587a.i() > 1) {
                this.f34589c += (d4 - this.f34587a.k()) * (d10 - this.f34588b.k());
            }
        } else {
            this.f34589c = Double.NaN;
        }
        this.f34588b.a(d10);
    }

    public void b(PairedStats pairedStats) {
        if (pairedStats.count() == 0) {
            return;
        }
        this.f34587a.b(pairedStats.xStats());
        if (this.f34588b.i() == 0) {
            this.f34589c = pairedStats.c();
        } else {
            this.f34589c += pairedStats.c() + ((pairedStats.xStats().mean() - this.f34587a.k()) * (pairedStats.yStats().mean() - this.f34588b.k()) * pairedStats.count());
        }
        this.f34588b.b(pairedStats.yStats());
    }

    public long c() {
        return this.f34587a.i();
    }

    public final e f() {
        a0.g0(c() > 1);
        if (Double.isNaN(this.f34589c)) {
            return e.a();
        }
        double s9 = this.f34587a.s();
        if (s9 > 0.0d) {
            if (this.f34588b.s() > 0.0d) {
                return e.f(this.f34587a.k(), this.f34588b.k()).b(this.f34589c / s9);
            }
            return e.b(this.f34588b.k());
        }
        a0.g0(this.f34588b.s() > 0.0d);
        return e.i(this.f34587a.k());
    }

    public final double g() {
        a0.g0(c() > 1);
        if (Double.isNaN(this.f34589c)) {
            return Double.NaN;
        }
        double s9 = this.f34587a.s();
        double s10 = this.f34588b.s();
        a0.g0(s9 > 0.0d);
        a0.g0(s10 > 0.0d);
        return d(this.f34589c / Math.sqrt(e(s9 * s10)));
    }

    public double h() {
        a0.g0(c() != 0);
        return this.f34589c / c();
    }

    public final double i() {
        a0.g0(c() > 1);
        return this.f34589c / (c() - 1);
    }

    public PairedStats j() {
        return new PairedStats(this.f34587a.q(), this.f34588b.q(), this.f34589c);
    }

    public Stats k() {
        return this.f34587a.q();
    }

    public Stats l() {
        return this.f34588b.q();
    }
}
