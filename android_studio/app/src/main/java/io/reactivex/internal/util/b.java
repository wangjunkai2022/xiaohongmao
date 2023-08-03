package io.reactivex.internal.util;

import java.util.concurrent.atomic.AtomicLong;

/* compiled from: BackpressureHelper.java */
/* loaded from: classes4.dex */
public final class b {
    private b() {
        throw new IllegalStateException("No instances!");
    }

    public static long a(AtomicLong atomicLong, long j4) {
        long j10;
        do {
            j10 = atomicLong.get();
            if (j10 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j10, c(j10, j4)));
        return j10;
    }

    public static long b(AtomicLong atomicLong, long j4) {
        long j10;
        do {
            j10 = atomicLong.get();
            if (j10 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j10 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j10, c(j10, j4)));
        return j10;
    }

    public static long c(long j4, long j10) {
        long j11 = j4 + j10;
        if (j11 < 0) {
            return Long.MAX_VALUE;
        }
        return j11;
    }

    public static long d(long j4, long j10) {
        long j11 = j4 * j10;
        if (((j4 | j10) >>> 31) == 0 || j11 / j4 == j10) {
            return j11;
        }
        return Long.MAX_VALUE;
    }

    public static long e(AtomicLong atomicLong, long j4) {
        long j10;
        long j11;
        do {
            j10 = atomicLong.get();
            if (j10 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j11 = j10 - j4;
            if (j11 < 0) {
                io.reactivex.plugins.a.Y(new IllegalStateException("More produced than requested: " + j11));
                j11 = 0L;
            }
        } while (!atomicLong.compareAndSet(j10, j11));
        return j11;
    }

    public static long f(AtomicLong atomicLong, long j4) {
        long j10;
        long j11;
        do {
            j10 = atomicLong.get();
            if (j10 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j10 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j11 = j10 - j4;
            if (j11 < 0) {
                io.reactivex.plugins.a.Y(new IllegalStateException("More produced than requested: " + j11));
                j11 = 0L;
            }
        } while (!atomicLong.compareAndSet(j10, j11));
        return j11;
    }
}
