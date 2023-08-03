package io.reactivex.rxjava3.internal.util;

import java.util.concurrent.atomic.AtomicLong;

/* compiled from: BackpressureHelper.java */
/* loaded from: classes4.dex */
public final class b {
    private b() {
        throw new IllegalStateException("No instances!");
    }

    public static long a(@p7.e AtomicLong requested, long n9) {
        long j4;
        do {
            j4 = requested.get();
            if (j4 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!requested.compareAndSet(j4, c(j4, n9)));
        return j4;
    }

    public static long b(@p7.e AtomicLong requested, long n9) {
        long j4;
        do {
            j4 = requested.get();
            if (j4 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j4 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!requested.compareAndSet(j4, c(j4, n9)));
        return j4;
    }

    public static long c(long a10, long b10) {
        long j4 = a10 + b10;
        if (j4 < 0) {
            return Long.MAX_VALUE;
        }
        return j4;
    }

    public static long d(long a10, long b10) {
        long j4 = a10 * b10;
        if (((a10 | b10) >>> 31) == 0 || j4 / a10 == b10) {
            return j4;
        }
        return Long.MAX_VALUE;
    }

    public static long e(@p7.e AtomicLong requested, long n9) {
        long j4;
        long j10;
        do {
            j4 = requested.get();
            if (j4 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j10 = j4 - n9;
            if (j10 < 0) {
                io.reactivex.rxjava3.plugins.a.Y(new IllegalStateException("More produced than requested: " + j10));
                j10 = 0L;
            }
        } while (!requested.compareAndSet(j4, j10));
        return j10;
    }

    public static long f(@p7.e AtomicLong requested, long n9) {
        long j4;
        long j10;
        do {
            j4 = requested.get();
            if (j4 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j4 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j10 = j4 - n9;
            if (j10 < 0) {
                io.reactivex.rxjava3.plugins.a.Y(new IllegalStateException("More produced than requested: " + j10));
                j10 = 0L;
            }
        } while (!requested.compareAndSet(j4, j10));
        return j10;
    }
}
