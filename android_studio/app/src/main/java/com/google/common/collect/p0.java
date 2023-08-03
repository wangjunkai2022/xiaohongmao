package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;

/* compiled from: DiscreteDomain.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class p0<C extends Comparable> {

    /* renamed from: a  reason: collision with root package name */
    final boolean f33814a;

    /* compiled from: DiscreteDomain.java */
    /* loaded from: classes2.dex */
    private static final class b extends p0<BigInteger> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final b f33815b = new b();

        /* renamed from: c  reason: collision with root package name */
        private static final BigInteger f33816c = BigInteger.valueOf(Long.MIN_VALUE);

        /* renamed from: d  reason: collision with root package name */
        private static final BigInteger f33817d = BigInteger.valueOf(Long.MAX_VALUE);

        /* renamed from: e  reason: collision with root package name */
        private static final long f33818e = 0;

        b() {
            super(true);
        }

        private Object q() {
            return f33815b;
        }

        @Override // com.google.common.collect.p0
        /* renamed from: m */
        public long b(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(f33816c).min(f33817d).longValue();
        }

        @Override // com.google.common.collect.p0
        /* renamed from: n */
        public BigInteger i(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.p0
        /* renamed from: o */
        public BigInteger j(BigInteger bigInteger, long j4) {
            y.c(j4, "distance");
            return bigInteger.add(BigInteger.valueOf(j4));
        }

        @Override // com.google.common.collect.p0
        /* renamed from: p */
        public BigInteger k(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }
    }

    /* compiled from: DiscreteDomain.java */
    /* loaded from: classes2.dex */
    private static final class c extends p0<Integer> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final c f33819b = new c();

        /* renamed from: c  reason: collision with root package name */
        private static final long f33820c = 0;

        c() {
            super(true);
        }

        private Object s() {
            return f33819b;
        }

        @Override // com.google.common.collect.p0
        /* renamed from: m */
        public long b(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }

        @Override // com.google.common.collect.p0
        /* renamed from: n */
        public Integer e() {
            return Integer.MAX_VALUE;
        }

        @Override // com.google.common.collect.p0
        /* renamed from: o */
        public Integer h() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.p0
        /* renamed from: p */
        public Integer i(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue + 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.p0
        /* renamed from: q */
        public Integer j(Integer num, long j4) {
            y.c(j4, "distance");
            return Integer.valueOf(com.google.common.primitives.f.d(num.longValue() + j4));
        }

        @Override // com.google.common.collect.p0
        /* renamed from: r */
        public Integer k(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    /* compiled from: DiscreteDomain.java */
    /* loaded from: classes2.dex */
    private static final class d extends p0<Long> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final d f33821b = new d();

        /* renamed from: c  reason: collision with root package name */
        private static final long f33822c = 0;

        d() {
            super(true);
        }

        private Object s() {
            return f33821b;
        }

        @Override // com.google.common.collect.p0
        /* renamed from: m */
        public long b(Long l10, Long l11) {
            long longValue = l11.longValue() - l10.longValue();
            if (l11.longValue() <= l10.longValue() || longValue >= 0) {
                if (l11.longValue() >= l10.longValue() || longValue <= 0) {
                    return longValue;
                }
                return Long.MIN_VALUE;
            }
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.p0
        /* renamed from: n */
        public Long e() {
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.p0
        /* renamed from: o */
        public Long h() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.p0
        /* renamed from: p */
        public Long i(Long l10) {
            long longValue = l10.longValue();
            if (longValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(longValue + 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.p0
        /* renamed from: q */
        public Long j(Long l10, long j4) {
            y.c(j4, "distance");
            long longValue = l10.longValue() + j4;
            if (longValue < 0) {
                com.google.common.base.a0.e(l10.longValue() < 0, "overflow");
            }
            return Long.valueOf(longValue);
        }

        @Override // com.google.common.collect.p0
        /* renamed from: r */
        public Long k(Long l10) {
            long longValue = l10.longValue();
            if (longValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(longValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }
    }

    public static p0<BigInteger> a() {
        return b.f33815b;
    }

    public static p0<Integer> c() {
        return c.f33819b;
    }

    public static p0<Long> d() {
        return d.f33821b;
    }

    public abstract long b(C c10, C c11);

    @CanIgnoreReturnValue
    public C e() {
        throw new NoSuchElementException();
    }

    @CanIgnoreReturnValue
    public C h() {
        throw new NoSuchElementException();
    }

    public abstract C i(C c10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public C j(C c10, long j4) {
        y.c(j4, "distance");
        for (long j10 = 0; j10 < j4; j10++) {
            c10 = i(c10);
        }
        return c10;
    }

    public abstract C k(C c10);

    protected p0() {
        this(false);
    }

    private p0(boolean z9) {
        this.f33814a = z9;
    }
}
