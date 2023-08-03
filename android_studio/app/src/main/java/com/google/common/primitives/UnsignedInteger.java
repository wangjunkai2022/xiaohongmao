package com.google.common.primitives;

import com.google.common.base.a0;
import java.math.BigInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class UnsignedInteger extends Number implements Comparable<UnsignedInteger> {

    /* renamed from: a  reason: collision with root package name */
    private final int f34797a;
    public static final UnsignedInteger ZERO = fromIntBits(0);
    public static final UnsignedInteger ONE = fromIntBits(1);
    public static final UnsignedInteger MAX_VALUE = fromIntBits(-1);

    private UnsignedInteger(int i4) {
        this.f34797a = i4 & (-1);
    }

    public static UnsignedInteger fromIntBits(int i4) {
        return new UnsignedInteger(i4);
    }

    public static UnsignedInteger valueOf(long j4) {
        a0.p((4294967295L & j4) == j4, "value (%s) is outside the range for an unsigned integer value", j4);
        return fromIntBits((int) j4);
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf(longValue());
    }

    public UnsignedInteger dividedBy(UnsignedInteger unsignedInteger) {
        return fromIntBits(m.d(this.f34797a, ((UnsignedInteger) a0.E(unsignedInteger)).f34797a));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return longValue();
    }

    public boolean equals(@NullableDecl Object obj) {
        return (obj instanceof UnsignedInteger) && this.f34797a == ((UnsignedInteger) obj).f34797a;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) longValue();
    }

    public int hashCode() {
        return this.f34797a;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.f34797a;
    }

    @Override // java.lang.Number
    public long longValue() {
        return m.r(this.f34797a);
    }

    public UnsignedInteger minus(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.f34797a - ((UnsignedInteger) a0.E(unsignedInteger)).f34797a);
    }

    public UnsignedInteger mod(UnsignedInteger unsignedInteger) {
        return fromIntBits(m.l(this.f34797a, ((UnsignedInteger) a0.E(unsignedInteger)).f34797a));
    }

    public UnsignedInteger plus(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.f34797a + ((UnsignedInteger) a0.E(unsignedInteger)).f34797a);
    }

    @h3.c
    public UnsignedInteger times(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.f34797a * ((UnsignedInteger) a0.E(unsignedInteger)).f34797a);
    }

    public String toString() {
        return toString(10);
    }

    @Override // java.lang.Comparable
    public int compareTo(UnsignedInteger unsignedInteger) {
        a0.E(unsignedInteger);
        return m.b(this.f34797a, unsignedInteger.f34797a);
    }

    public String toString(int i4) {
        return m.t(this.f34797a, i4);
    }

    public static UnsignedInteger valueOf(BigInteger bigInteger) {
        a0.E(bigInteger);
        a0.u(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 32, "value (%s) is outside the range for an unsigned integer value", bigInteger);
        return fromIntBits(bigInteger.intValue());
    }

    public static UnsignedInteger valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedInteger valueOf(String str, int i4) {
        return fromIntBits(m.k(str, i4));
    }
}
