package io.sentry.android.core;

import android.annotation.SuppressLint;
import android.os.SystemClock;
import android.system.Os;
import android.system.OsConstants;
import io.sentry.SentryLevel;
import io.sentry.k2;
import java.io.File;
import java.io.IOException;
import m8.a;

/* compiled from: AndroidCpuCollector.java */
@a.c
/* loaded from: classes4.dex */
public final class p implements io.sentry.j0 {
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final io.sentry.o0 f82557h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final m0 f82558i;

    /* renamed from: a  reason: collision with root package name */
    private long f82550a = 0;

    /* renamed from: b  reason: collision with root package name */
    private long f82551b = 0;

    /* renamed from: c  reason: collision with root package name */
    private long f82552c = 1;

    /* renamed from: d  reason: collision with root package name */
    private long f82553d = 1;

    /* renamed from: e  reason: collision with root package name */
    private final long f82554e = com.google.android.exoplayer2.i.f23681j;

    /* renamed from: f  reason: collision with root package name */
    private double f82555f = 1.0E9d / 1;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final File f82556g = new File("/proc/self/stat");

    /* renamed from: j  reason: collision with root package name */
    private boolean f82559j = false;

    public p(@m8.g io.sentry.o0 o0Var, @m8.g m0 m0Var) {
        this.f82557h = (io.sentry.o0) io.sentry.util.l.c(o0Var, "Logger is required.");
        this.f82558i = (m0) io.sentry.util.l.c(m0Var, "BuildInfoProvider is required.");
    }

    private long c() {
        String str;
        try {
            str = io.sentry.util.c.b(this.f82556g);
        } catch (IOException e4) {
            this.f82559j = false;
            this.f82557h.b(SentryLevel.WARNING, "Unable to read /proc/self/stat file. Disabling cpu collection.", e4);
            str = null;
        }
        if (str != null) {
            String[] split = str.trim().split("[\n\t\r ]");
            try {
                long parseLong = Long.parseLong(split[13]);
                long parseLong2 = Long.parseLong(split[14]);
                return (long) ((parseLong + parseLong2 + Long.parseLong(split[15]) + Long.parseLong(split[16])) * this.f82555f);
            } catch (NumberFormatException e10) {
                this.f82557h.b(SentryLevel.ERROR, "Error parsing /proc/self/stat file.", e10);
            }
        }
        return 0L;
    }

    @Override // io.sentry.j0
    @SuppressLint({"NewApi"})
    public void a() {
        if (this.f82558i.d() < 21) {
            this.f82559j = false;
            return;
        }
        this.f82559j = true;
        this.f82552c = Os.sysconf(OsConstants._SC_CLK_TCK);
        this.f82553d = Os.sysconf(OsConstants._SC_NPROCESSORS_CONF);
        this.f82555f = 1.0E9d / this.f82552c;
        this.f82551b = c();
    }

    @Override // io.sentry.j0
    @SuppressLint({"NewApi"})
    public void b(@m8.g Iterable<k2> iterable) {
        if (this.f82558i.d() < 21 || !this.f82559j) {
            return;
        }
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        long j4 = elapsedRealtimeNanos - this.f82550a;
        this.f82550a = elapsedRealtimeNanos;
        long c10 = c();
        this.f82551b = c10;
        io.sentry.i iVar = new io.sentry.i(System.currentTimeMillis(), (((c10 - this.f82551b) / j4) / this.f82553d) * 100.0d);
        for (k2 k2Var : iterable) {
            k2Var.a(iVar);
        }
    }
}
