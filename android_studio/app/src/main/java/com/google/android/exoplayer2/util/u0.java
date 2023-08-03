package com.google.android.exoplayer2.util;

import androidx.annotation.GuardedBy;
import com.ksyun.media.player.KSYMediaMeta;

/* compiled from: TimestampAdjuster.java */
/* loaded from: classes2.dex */
public final class u0 {

    /* renamed from: e  reason: collision with root package name */
    public static final long f27705e = Long.MAX_VALUE;

    /* renamed from: f  reason: collision with root package name */
    private static final long f27706f = 8589934592L;
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private boolean f27707a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private long f27708b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private long f27709c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private long f27710d = com.google.android.exoplayer2.i.f23649b;

    public u0(long j4) {
        this.f27708b = j4;
    }

    public static long f(long j4) {
        return (j4 * 1000000) / 90000;
    }

    public static long i(long j4) {
        return (j4 * 90000) / 1000000;
    }

    public static long j(long j4) {
        return i(j4) % 8589934592L;
    }

    public synchronized long a(long j4) {
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            return com.google.android.exoplayer2.i.f23649b;
        }
        if (this.f27710d != com.google.android.exoplayer2.i.f23649b) {
            this.f27710d = j4;
        } else {
            long j10 = this.f27708b;
            if (j10 != Long.MAX_VALUE) {
                this.f27709c = j10 - j4;
            }
            this.f27710d = j4;
            notifyAll();
        }
        return j4 + this.f27709c;
    }

    public synchronized long b(long j4) {
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            return com.google.android.exoplayer2.i.f23649b;
        }
        long j10 = this.f27710d;
        if (j10 != com.google.android.exoplayer2.i.f23649b) {
            long i4 = i(j10);
            long j11 = (KSYMediaMeta.AV_CH_WIDE_RIGHT + i4) / 8589934592L;
            long j12 = ((j11 - 1) * 8589934592L) + j4;
            j4 += j11 * 8589934592L;
            if (Math.abs(j12 - i4) < Math.abs(j4 - i4)) {
                j4 = j12;
            }
        }
        return a(f(j4));
    }

    public synchronized long c() {
        return this.f27708b;
    }

    public synchronized long d() {
        long j4;
        long j10 = this.f27710d;
        j4 = com.google.android.exoplayer2.i.f23649b;
        if (j10 != com.google.android.exoplayer2.i.f23649b) {
            j4 = this.f27709c + j10;
        } else {
            long j11 = this.f27708b;
            if (j11 != Long.MAX_VALUE) {
                j4 = j11;
            }
        }
        return j4;
    }

    public synchronized long e() {
        long j4;
        long j10 = this.f27708b;
        j4 = com.google.android.exoplayer2.i.f23649b;
        if (j10 == Long.MAX_VALUE) {
            j4 = 0;
        } else if (this.f27710d != com.google.android.exoplayer2.i.f23649b) {
            j4 = this.f27709c;
        }
        return j4;
    }

    public synchronized void g(long j4) {
        this.f27708b = j4;
        this.f27710d = com.google.android.exoplayer2.i.f23649b;
        this.f27707a = false;
    }

    public synchronized void h(boolean z9, long j4) throws InterruptedException {
        if (z9) {
            try {
                if (!this.f27707a) {
                    this.f27708b = j4;
                    this.f27707a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z9 || j4 != this.f27708b) {
            while (this.f27710d == com.google.android.exoplayer2.i.f23649b) {
                wait();
            }
        }
    }
}
