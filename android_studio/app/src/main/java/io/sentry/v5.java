package io.sentry;

import io.sentry.exception.ExceptionMechanismException;
import io.sentry.u5;
import java.io.Closeable;
import java.lang.Thread;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: UncaughtExceptionHandlerIntegration.java */
/* loaded from: classes4.dex */
public final class v5 implements z0, Thread.UncaughtExceptionHandler, Closeable {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f84094a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private n0 f84095b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private SentryOptions f84096c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f84097d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final u5 f84098e;

    /* compiled from: UncaughtExceptionHandlerIntegration.java */
    /* loaded from: classes4.dex */
    private static final class a implements io.sentry.hints.e, io.sentry.hints.f, io.sentry.hints.i {

        /* renamed from: a  reason: collision with root package name */
        private final CountDownLatch f84099a = new CountDownLatch(1);

        /* renamed from: b  reason: collision with root package name */
        private final long f84100b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final o0 f84101c;

        a(long j4, @m8.g o0 o0Var) {
            this.f84100b = j4;
            this.f84101c = o0Var;
        }

        @Override // io.sentry.hints.e
        public void a() {
            this.f84099a.countDown();
        }

        @Override // io.sentry.hints.f
        public boolean d() {
            try {
                return this.f84099a.await(this.f84100b, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e4) {
                Thread.currentThread().interrupt();
                this.f84101c.b(SentryLevel.ERROR, "Exception while awaiting for flush in UncaughtExceptionHint", e4);
                return false;
            }
        }
    }

    public v5() {
        this(u5.a.c());
    }

    @m8.g
    @m8.k
    static Throwable b(@m8.g Thread thread, @m8.g Throwable th) {
        io.sentry.protocol.f fVar = new io.sentry.protocol.f();
        fVar.r(Boolean.FALSE);
        fVar.v("UncaughtExceptionHandler");
        return new ExceptionMechanismException(fVar, th, thread);
    }

    @Override // io.sentry.z0
    public final void a(@m8.g n0 n0Var, @m8.g SentryOptions sentryOptions) {
        if (this.f84097d) {
            sentryOptions.getLogger().c(SentryLevel.ERROR, "Attempt to register a UncaughtExceptionHandlerIntegration twice.", new Object[0]);
            return;
        }
        this.f84097d = true;
        this.f84095b = (n0) io.sentry.util.l.c(n0Var, "Hub is required");
        SentryOptions sentryOptions2 = (SentryOptions) io.sentry.util.l.c(sentryOptions, "SentryOptions is required");
        this.f84096c = sentryOptions2;
        o0 logger = sentryOptions2.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "UncaughtExceptionHandlerIntegration enabled: %s", Boolean.valueOf(this.f84096c.isEnableUncaughtExceptionHandler()));
        if (this.f84096c.isEnableUncaughtExceptionHandler()) {
            Thread.UncaughtExceptionHandler b10 = this.f84098e.b();
            if (b10 != null) {
                o0 logger2 = this.f84096c.getLogger();
                logger2.c(sentryLevel, "default UncaughtExceptionHandler class='" + b10.getClass().getName() + "'", new Object[0]);
                this.f84094a = b10;
            }
            this.f84098e.a(this);
            this.f84096c.getLogger().c(sentryLevel, "UncaughtExceptionHandlerIntegration installed.", new Object[0]);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this == this.f84098e.b()) {
            this.f84098e.a(this.f84094a);
            SentryOptions sentryOptions = this.f84096c;
            if (sentryOptions != null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "UncaughtExceptionHandlerIntegration removed.", new Object[0]);
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        SentryOptions sentryOptions = this.f84096c;
        if (sentryOptions == null || this.f84095b == null) {
            return;
        }
        sentryOptions.getLogger().c(SentryLevel.INFO, "Uncaught exception received.", new Object[0]);
        try {
            a aVar = new a(this.f84096c.getFlushTimeoutMillis(), this.f84096c.getLogger());
            h4 h4Var = new h4(b(thread, th));
            h4Var.L0(SentryLevel.FATAL);
            if (!this.f84095b.j(h4Var, io.sentry.util.h.e(aVar)).equals(io.sentry.protocol.n.f83769b) && !aVar.d()) {
                this.f84096c.getLogger().c(SentryLevel.WARNING, "Timed out waiting to flush event to disk before crashing. Event: %s", h4Var.I());
            }
        } catch (Throwable th2) {
            this.f84096c.getLogger().b(SentryLevel.ERROR, "Error sending uncaught exception to Sentry.", th2);
        }
        if (this.f84094a != null) {
            this.f84096c.getLogger().c(SentryLevel.INFO, "Invoking inner uncaught exception handler.", new Object[0]);
            this.f84094a.uncaughtException(thread, th);
        } else if (this.f84096c.isPrintUncaughtStackTrace()) {
            th.printStackTrace();
        }
    }

    v5(@m8.g u5 u5Var) {
        this.f84097d = false;
        this.f84098e = (u5) io.sentry.util.l.c(u5Var, "threadAdapter is required.");
    }
}
