package com.google.common.primitives;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.math.BigInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class UnsignedLong extends Number implements Comparable<UnsignedLong>, Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f34798b = Long.MAX_VALUE;

    /* renamed from: a  reason: collision with root package name */
    private final long f34799a;
    public static final UnsignedLong ZERO = new UnsignedLong(0);
    public static final UnsignedLong ONE = new UnsignedLong(1);
    public static final UnsignedLong MAX_VALUE = new UnsignedLong(-1);

    private UnsignedLong(long j4) {
        this.f34799a = j4;
    }

    public static UnsignedLong fromLongBits(long j4) {
        return new UnsignedLong(j4);
    }

    @CanIgnoreReturnValue
    public static UnsignedLong valueOf(long j4) {
        a0.p(j4 >= 0, "value (%s) is outside the range for an unsigned long value", j4);
        return fromLongBits(j4);
    }

    public BigInteger bigIntegerValue() {
        BigInteger valueOf = BigInteger.valueOf(this.f34799a & Long.MAX_VALUE);
        return this.f34799a < 0 ? valueOf.setBit(63) : valueOf;
    }

    public UnsignedLong dividedBy(UnsignedLong unsignedLong) {
        return fromLongBits(n.c(this.f34799a, ((UnsignedLong) a0.E(unsignedLong)).f34799a));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        long j4 = this.f34799a;
        double d4 = Long.MAX_VALUE & j4;
        return j4 < 0 ? d4 + 9.223372036854776E18d : d4;
    }

    public boolean equals(@NullableDecl Object obj) {
        return (obj instanceof UnsignedLong) && this.f34799a == ((UnsignedLong) obj).f34799a;
    }

    @Override // java.lang.Number
    public float floatValue() {
        long j4 = this.f34799a;
        float f10 = (float) (Long.MAX_VALUE & j4);
        return j4 < 0 ? f10 + 9.223372E18f : f10;
    }

    public int hashCode() {
        return g.k(this.f34799a);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.f34799a;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.f34799a;
    }

    public UnsignedLong minus(UnsignedLong unsignedLong) {
        return fromLongBits(this.f34799a - ((UnsignedLong) a0.E(unsignedLong)).f34799a);
    }

    public UnsignedLong mod(UnsignedLong unsignedLong) {
        return fromLongBits(n.k(this.f34799a, ((UnsignedLong) a0.E(unsignedLong)).f34799a));
    }

    public UnsignedLong plus(UnsignedLong unsignedLong) {
        return fromLongBits(this.f34799a + ((UnsignedLong) a0.E(unsignedLong)).f34799a);
    }

    public UnsignedLong times(UnsignedLong unsignedLong) {
        return fromLongBits(this.f34799a * ((UnsignedLong) a0.E(unsignedLong)).f34799a);
    }

    public String toString() {
        return n.p(this.f34799a);
    }

    @Override // java.lang.Comparable
    public int compareTo(UnsignedLong unsignedLong) {
        a0.E(unsignedLong);
        return n.a(this.f34799a, unsignedLong.f34799a);
    }

    public String toString(int i4) {
        return n.q(this.f34799a, i4);
    }

    @CanIgnoreReturnValue
    public static UnsignedLong valueOf(BigInteger bigInteger) {
        a0.E(bigInteger);
        a0.u(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 64, "value (%s) is outside the range for an unsigned long value", bigInteger);
        return fromLongBits(bigInteger.longValue());
    }

    @CanIgnoreReturnValue
    public static UnsignedLong valueOf(String str) {
        return valueOf(str, 10);
    }

    @CanIgnoreReturnValue
    public static UnsignedLong valueOf(String str, int i4) {
        return fromLongBits(n.j(str, i4));
    }
}
