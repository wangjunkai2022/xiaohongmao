package io.sentry.android.core;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.j2;
import java.io.Closeable;

/* compiled from: EnvelopeFileObserverIntegration.java */
/* loaded from: classes4.dex */
public abstract class u0 implements io.sentry.z0, Closeable {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private t0 f82602a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private io.sentry.o0 f82603b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EnvelopeFileObserverIntegration.java */
    /* loaded from: classes4.dex */
    public static final class b extends u0 {
        private b() {
        }

        @Override // io.sentry.android.core.u0
        @m8.h
        protected String d(@m8.g SentryOptions sentryOptions) {
            return sentryOptions.getOutboxPath();
        }
    }

    @m8.g
    public static u0 b() {
        return new b();
    }

    @Override // io.sentry.z0
    public final void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        io.sentry.util.l.c(sentryOptions, "SentryOptions is required");
        this.f82603b = sentryOptions.getLogger();
        String d4 = d(sentryOptions);
        if (d4 == null) {
            this.f82603b.c(SentryLevel.WARNING, "Null given as a path to EnvelopeFileObserverIntegration. Nothing will be registered.", new Object[0]);
            return;
        }
        io.sentry.o0 o0Var = this.f82603b;
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        o0Var.c(sentryLevel, "Registering EnvelopeFileObserverIntegration for path: %s", d4);
        t0 t0Var = new t0(d4, new j2(n0Var, sentryOptions.getEnvelopeReader(), sentryOptions.getSerializer(), this.f82603b, sentryOptions.getFlushTimeoutMillis()), this.f82603b, sentryOptions.getFlushTimeoutMillis());
        this.f82602a = t0Var;
        try {
            t0Var.startWatching();
            this.f82603b.c(sentryLevel, "EnvelopeFileObserverIntegration installed.", new Object[0]);
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to initialize EnvelopeFileObserverIntegration.", th);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        t0 t0Var = this.f82602a;
        if (t0Var != null) {
            t0Var.stopWatching();
            io.sentry.o0 o0Var = this.f82603b;
            if (o0Var != null) {
                o0Var.c(SentryLevel.DEBUG, "EnvelopeFileObserverIntegration removed.", new Object[0]);
            }
        }
    }

    @m8.h
    @m8.k
    abstract String d(@m8.g SentryOptions sentryOptions);
}
