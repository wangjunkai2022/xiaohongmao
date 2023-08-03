package com.google.common.math;

import com.google.common.base.a0;
import com.google.common.base.v;
import com.google.common.base.w;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class PairedStats implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final int f34523d = 88;

    /* renamed from: e  reason: collision with root package name */
    private static final long f34524e = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Stats f34525a;

    /* renamed from: b  reason: collision with root package name */
    private final Stats f34526b;

    /* renamed from: c  reason: collision with root package name */
    private final double f34527c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PairedStats(Stats stats, Stats stats2, double d4) {
        this.f34525a = stats;
        this.f34526b = stats2;
        this.f34527c = d4;
    }

    private static double a(double d4) {
        if (d4 >= 1.0d) {
            return 1.0d;
        }
        if (d4 <= -1.0d) {
            return -1.0d;
        }
        return d4;
    }

    private static double b(double d4) {
        if (d4 > 0.0d) {
            return d4;
        }
        return Double.MIN_VALUE;
    }

    public static PairedStats fromByteArray(byte[] bArr) {
        a0.E(bArr);
        a0.m(bArr.length == 88, "Expected PairedStats.BYTES = %s, got %s", 88, bArr.length);
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        return new PairedStats(Stats.a(order), Stats.a(order), order.getDouble());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double c() {
        return this.f34527c;
    }

    public long count() {
        return this.f34525a.count();
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj != null && PairedStats.class == obj.getClass()) {
            PairedStats pairedStats = (PairedStats) obj;
            return this.f34525a.equals(pairedStats.f34525a) && this.f34526b.equals(pairedStats.f34526b) && Double.doubleToLongBits(this.f34527c) == Double.doubleToLongBits(pairedStats.f34527c);
        }
        return false;
    }

    public int hashCode() {
        return w.b(this.f34525a, this.f34526b, Double.valueOf(this.f34527c));
    }

    public e leastSquaresFit() {
        a0.g0(count() > 1);
        if (Double.isNaN(this.f34527c)) {
            return e.a();
        }
        double b10 = this.f34525a.b();
        if (b10 > 0.0d) {
            if (this.f34526b.b() > 0.0d) {
                return e.f(this.f34525a.mean(), this.f34526b.mean()).b(this.f34527c / b10);
            }
            return e.b(this.f34526b.mean());
        }
        a0.g0(this.f34526b.b() > 0.0d);
        return e.i(this.f34525a.mean());
    }

    public double pearsonsCorrelationCoefficient() {
        a0.g0(count() > 1);
        if (Double.isNaN(this.f34527c)) {
            return Double.NaN;
        }
        double b10 = xStats().b();
        double b11 = yStats().b();
        a0.g0(b10 > 0.0d);
        a0.g0(b11 > 0.0d);
        return a(this.f34527c / Math.sqrt(b(b10 * b11)));
    }

    public double populationCovariance() {
        a0.g0(count() != 0);
        return this.f34527c / count();
    }

    public double sampleCovariance() {
        a0.g0(count() > 1);
        return this.f34527c / (count() - 1);
    }

    public byte[] toByteArray() {
        ByteBuffer order = ByteBuffer.allocate(88).order(ByteOrder.LITTLE_ENDIAN);
        this.f34525a.c(order);
        this.f34526b.c(order);
        order.putDouble(this.f34527c);
        return order.array();
    }

    public String toString() {
        if (count() > 0) {
            return v.c(this).f("xStats", this.f34525a).f("yStats", this.f34526b).b("populationCovariance", populationCovariance()).toString();
        }
        return v.c(this).f("xStats", this.f34525a).f("yStats", this.f34526b).toString();
    }

    public Stats xStats() {
        return this.f34525a;
    }

    public Stats yStats() {
        return this.f34526b;
    }
}
