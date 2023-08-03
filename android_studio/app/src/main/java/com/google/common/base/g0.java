package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.TimeUnit;

/* compiled from: Stopwatch.java */
@h3.b
/* loaded from: classes2.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private final l0 f32224a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f32225b;

    /* renamed from: c  reason: collision with root package name */
    private long f32226c;

    /* renamed from: d  reason: collision with root package name */
    private long f32227d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Stopwatch.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32228a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f32228a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32228a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32228a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32228a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32228a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32228a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32228a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    g0() {
        this.f32224a = l0.b();
    }

    private static String a(TimeUnit timeUnit) {
        switch (a.f32228a[timeUnit.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "μs";
            case 3:
                return "ms";
            case 4:
                return "s";
            case 5:
                return "min";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new AssertionError();
        }
    }

    private static TimeUnit b(long j4) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j4, timeUnit2) > 0) {
            return timeUnit;
        }
        TimeUnit timeUnit3 = TimeUnit.HOURS;
        if (timeUnit3.convert(j4, timeUnit2) > 0) {
            return timeUnit3;
        }
        TimeUnit timeUnit4 = TimeUnit.MINUTES;
        if (timeUnit4.convert(j4, timeUnit2) > 0) {
            return timeUnit4;
        }
        TimeUnit timeUnit5 = TimeUnit.SECONDS;
        if (timeUnit5.convert(j4, timeUnit2) > 0) {
            return timeUnit5;
        }
        TimeUnit timeUnit6 = TimeUnit.MILLISECONDS;
        if (timeUnit6.convert(j4, timeUnit2) > 0) {
            return timeUnit6;
        }
        TimeUnit timeUnit7 = TimeUnit.MICROSECONDS;
        return timeUnit7.convert(j4, timeUnit2) > 0 ? timeUnit7 : timeUnit2;
    }

    public static g0 c() {
        return new g0().k();
    }

    public static g0 d(l0 l0Var) {
        return new g0(l0Var).k();
    }

    public static g0 e() {
        return new g0();
    }

    public static g0 f(l0 l0Var) {
        return new g0(l0Var);
    }

    private long h() {
        return this.f32225b ? (this.f32224a.a() - this.f32227d) + this.f32226c : this.f32226c;
    }

    public long g(TimeUnit timeUnit) {
        return timeUnit.convert(h(), TimeUnit.NANOSECONDS);
    }

    public boolean i() {
        return this.f32225b;
    }

    @CanIgnoreReturnValue
    public g0 j() {
        this.f32226c = 0L;
        this.f32225b = false;
        return this;
    }

    @CanIgnoreReturnValue
    public g0 k() {
        a0.h0(!this.f32225b, "This stopwatch is already running.");
        this.f32225b = true;
        this.f32227d = this.f32224a.a();
        return this;
    }

    @CanIgnoreReturnValue
    public g0 l() {
        long a10 = this.f32224a.a();
        a0.h0(this.f32225b, "This stopwatch is already stopped.");
        this.f32225b = false;
        this.f32226c += a10 - this.f32227d;
        return this;
    }

    public String toString() {
        long h4 = h();
        TimeUnit b10 = b(h4);
        double convert = h4 / TimeUnit.NANOSECONDS.convert(1L, b10);
        return z.c(convert) + " " + a(b10);
    }

    g0(l0 l0Var) {
        this.f32224a = (l0) a0.F(l0Var, "ticker");
    }
}
