package com.google.common.math;

import com.google.common.base.a0;
import com.google.common.base.v;
import com.google.common.base.w;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class Stats implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    static final int f34528f = 40;

    /* renamed from: g  reason: collision with root package name */
    private static final long f34529g = 0;

    /* renamed from: a  reason: collision with root package name */
    private final long f34530a;

    /* renamed from: b  reason: collision with root package name */
    private final double f34531b;

    /* renamed from: c  reason: collision with root package name */
    private final double f34532c;

    /* renamed from: d  reason: collision with root package name */
    private final double f34533d;

    /* renamed from: e  reason: collision with root package name */
    private final double f34534e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Stats(long j4, double d4, double d10, double d11, double d12) {
        this.f34530a = j4;
        this.f34531b = d4;
        this.f34532c = d10;
        this.f34533d = d11;
        this.f34534e = d12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Stats a(ByteBuffer byteBuffer) {
        a0.E(byteBuffer);
        a0.m(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    public static Stats fromByteArray(byte[] bArr) {
        a0.E(bArr);
        a0.m(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return a(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static Stats of(Iterable<? extends Number> iterable) {
        j jVar = new j();
        jVar.c(iterable);
        return jVar.q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double b() {
        return this.f34532c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(ByteBuffer byteBuffer) {
        a0.E(byteBuffer);
        a0.m(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.f34530a).putDouble(this.f34531b).putDouble(this.f34532c).putDouble(this.f34533d).putDouble(this.f34534e);
    }

    public long count() {
        return this.f34530a;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj != null && Stats.class == obj.getClass()) {
            Stats stats = (Stats) obj;
            return this.f34530a == stats.f34530a && Double.doubleToLongBits(this.f34531b) == Double.doubleToLongBits(stats.f34531b) && Double.doubleToLongBits(this.f34532c) == Double.doubleToLongBits(stats.f34532c) && Double.doubleToLongBits(this.f34533d) == Double.doubleToLongBits(stats.f34533d) && Double.doubleToLongBits(this.f34534e) == Double.doubleToLongBits(stats.f34534e);
        }
        return false;
    }

    public int hashCode() {
        return w.b(Long.valueOf(this.f34530a), Double.valueOf(this.f34531b), Double.valueOf(this.f34532c), Double.valueOf(this.f34533d), Double.valueOf(this.f34534e));
    }

    public double max() {
        a0.g0(this.f34530a != 0);
        return this.f34534e;
    }

    public double mean() {
        a0.g0(this.f34530a != 0);
        return this.f34531b;
    }

    public double min() {
        a0.g0(this.f34530a != 0);
        return this.f34533d;
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double populationVariance() {
        a0.g0(this.f34530a > 0);
        if (Double.isNaN(this.f34532c)) {
            return Double.NaN;
        }
        if (this.f34530a == 1) {
            return 0.0d;
        }
        return c.b(this.f34532c) / count();
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double sampleVariance() {
        a0.g0(this.f34530a > 1);
        if (Double.isNaN(this.f34532c)) {
            return Double.NaN;
        }
        return c.b(this.f34532c) / (this.f34530a - 1);
    }

    public double sum() {
        return this.f34531b * this.f34530a;
    }

    public byte[] toByteArray() {
        ByteBuffer order = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        c(order);
        return order.array();
    }

    public String toString() {
        if (count() > 0) {
            return v.c(this).e("count", this.f34530a).b("mean", this.f34531b).b("populationStandardDeviation", populationStandardDeviation()).b("min", this.f34533d).b("max", this.f34534e).toString();
        }
        return v.c(this).e("count", this.f34530a).toString();
    }

    public static double meanOf(Iterator<? extends Number> it) {
        a0.d(it.hasNext());
        double doubleValue = it.next().doubleValue();
        long j4 = 1;
        while (it.hasNext()) {
            double doubleValue2 = it.next().doubleValue();
            j4++;
            doubleValue = (com.google.common.primitives.d.n(doubleValue2) && com.google.common.primitives.d.n(doubleValue)) ? doubleValue + ((doubleValue2 - doubleValue) / j4) : j.h(doubleValue, doubleValue2);
        }
        return doubleValue;
    }

    public static Stats of(Iterator<? extends Number> it) {
        j jVar = new j();
        jVar.d(it);
        return jVar.q();
    }

    public static Stats of(double... dArr) {
        j jVar = new j();
        jVar.e(dArr);
        return jVar.q();
    }

    public static double meanOf(double... dArr) {
        a0.d(dArr.length > 0);
        double d4 = dArr[0];
        for (int i4 = 1; i4 < dArr.length; i4++) {
            double d10 = dArr[i4];
            d4 = (com.google.common.primitives.d.n(d10) && com.google.common.primitives.d.n(d4)) ? d4 + ((d10 - d4) / (i4 + 1)) : j.h(d4, d10);
        }
        return d4;
    }

    public static Stats of(int... iArr) {
        j jVar = new j();
        jVar.f(iArr);
        return jVar.q();
    }

    public static Stats of(long... jArr) {
        j jVar = new j();
        jVar.g(jArr);
        return jVar.q();
    }

    public static double meanOf(int... iArr) {
        a0.d(iArr.length > 0);
        double d4 = iArr[0];
        for (int i4 = 1; i4 < iArr.length; i4++) {
            double d10 = iArr[i4];
            d4 = (com.google.common.primitives.d.n(d10) && com.google.common.primitives.d.n(d4)) ? d4 + ((d10 - d4) / (i4 + 1)) : j.h(d4, d10);
        }
        return d4;
    }

    public static double meanOf(long... jArr) {
        a0.d(jArr.length > 0);
        double d4 = jArr[0];
        for (int i4 = 1; i4 < jArr.length; i4++) {
            double d10 = jArr[i4];
            d4 = (com.google.common.primitives.d.n(d10) && com.google.common.primitives.d.n(d4)) ? d4 + ((d10 - d4) / (i4 + 1)) : j.h(d4, d10);
        }
        return d4;
    }
}
