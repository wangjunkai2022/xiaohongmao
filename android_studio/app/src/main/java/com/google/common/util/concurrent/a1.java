package com.google.common.util.concurrent;

import com.google.common.util.concurrent.g1;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* compiled from: RateLimiter.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public abstract class a1 {

    /* renamed from: a  reason: collision with root package name */
    private final a f35036a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f35037b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RateLimiter.java */
    /* loaded from: classes2.dex */
    public static abstract class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RateLimiter.java */
        /* renamed from: com.google.common.util.concurrent.a1$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0267a extends a {

            /* renamed from: a  reason: collision with root package name */
            final com.google.common.base.g0 f35038a = com.google.common.base.g0.c();

            C0267a() {
            }

            @Override // com.google.common.util.concurrent.a1.a
            protected long b() {
                return this.f35038a.g(TimeUnit.MICROSECONDS);
            }

            @Override // com.google.common.util.concurrent.a1.a
            protected void c(long j4) {
                if (j4 > 0) {
                    n1.i(j4, TimeUnit.MICROSECONDS);
                }
            }
        }

        protected a() {
        }

        public static a a() {
            return new C0267a();
        }

        protected abstract long b();

        protected abstract void c(long j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(a aVar) {
        this.f35036a = (a) com.google.common.base.a0.E(aVar);
    }

    private boolean c(long j4, long j10) {
        return m(j4) - j10 <= j4;
    }

    private static void d(int i4) {
        com.google.common.base.a0.k(i4 > 0, "Requested permits (%s) must be positive", i4);
    }

    public static a1 e(double d4) {
        return h(d4, a.a());
    }

    public static a1 f(double d4, long j4, TimeUnit timeUnit) {
        com.google.common.base.a0.p(j4 >= 0, "warmupPeriod must not be negative: %s", j4);
        return g(d4, j4, timeUnit, 3.0d, a.a());
    }

    @h3.d
    static a1 g(double d4, long j4, TimeUnit timeUnit, double d10, a aVar) {
        g1.c cVar = new g1.c(aVar, j4, timeUnit, d10);
        cVar.q(d4);
        return cVar;
    }

    @h3.d
    static a1 h(double d4, a aVar) {
        g1.b bVar = new g1.b(aVar, 1.0d);
        bVar.q(d4);
        return bVar;
    }

    private Object l() {
        Object obj = this.f35037b;
        if (obj == null) {
            synchronized (this) {
                obj = this.f35037b;
                if (obj == null) {
                    obj = new Object();
                    this.f35037b = obj;
                }
            }
        }
        return obj;
    }

    @CanIgnoreReturnValue
    public double a() {
        return b(1);
    }

    @CanIgnoreReturnValue
    public double b(int i4) {
        long n9 = n(i4);
        this.f35036a.c(n9);
        return (n9 * 1.0d) / TimeUnit.SECONDS.toMicros(1L);
    }

    abstract double i();

    abstract void j(double d4, long j4);

    public final double k() {
        double i4;
        synchronized (l()) {
            i4 = i();
        }
        return i4;
    }

    abstract long m(long j4);

    final long n(int i4) {
        long o9;
        d(i4);
        synchronized (l()) {
            o9 = o(i4, this.f35036a.b());
        }
        return o9;
    }

    final long o(int i4, long j4) {
        return Math.max(p(i4, j4) - j4, 0L);
    }

    abstract long p(int i4, long j4);

    public final void q(double d4) {
        com.google.common.base.a0.e(d4 > 0.0d && !Double.isNaN(d4), "rate must be positive");
        synchronized (l()) {
            j(d4, this.f35036a.b());
        }
    }

    public boolean r() {
        return t(1, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean s(int i4) {
        return t(i4, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean t(int i4, long j4, TimeUnit timeUnit) {
        long max = Math.max(timeUnit.toMicros(j4), 0L);
        d(i4);
        synchronized (l()) {
            long b10 = this.f35036a.b();
            if (c(b10, max)) {
                this.f35036a.c(o(i4, b10));
                return true;
            }
            return false;
        }
    }

    public String toString() {
        return String.format(Locale.ROOT, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(k()));
    }

    public boolean u(long j4, TimeUnit timeUnit) {
        return t(1, j4, timeUnit);
    }
}
