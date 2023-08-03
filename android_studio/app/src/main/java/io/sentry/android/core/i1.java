package io.sentry.android.core;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.u2;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SendCachedEnvelopeIntegration.java */
/* loaded from: classes4.dex */
public final class i1 implements io.sentry.z0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final u2.c f82430a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f82431b;

    public i1(@m8.g u2.c cVar, boolean z9) {
        this.f82430a = (u2.c) io.sentry.util.l.c(cVar, "SendFireAndForgetFactory is required");
        this.f82431b = z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(u2.a aVar, SentryAndroidOptions sentryAndroidOptions) {
        try {
            aVar.a();
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed trying to send cached events.", th);
        }
    }

    @Override // io.sentry.z0
    public void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        final SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        if (!this.f82430a.c(sentryOptions.getCacheDirPath(), sentryOptions.getLogger())) {
            sentryOptions.getLogger().c(SentryLevel.ERROR, "No cache dir path is defined in options.", new Object[0]);
            return;
        }
        final u2.a b10 = this.f82430a.b(n0Var, sentryAndroidOptions);
        if (b10 == null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.ERROR, "SendFireAndForget factory is null.", new Object[0]);
            return;
        }
        try {
            Future<?> submit = sentryAndroidOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.h1
                @Override // java.lang.Runnable
                public final void run() {
                    i1.c(u2.a.this, sentryAndroidOptions);
                }
            });
            if (this.f82431b) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Startup Crash marker exists, blocking flush.", new Object[0]);
                try {
                    submit.get(sentryAndroidOptions.getStartupCrashFlushTimeoutMillis(), TimeUnit.MILLISECONDS);
                } catch (TimeoutException unused) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Synchronous send timed out, continuing in the background.", new Object[0]);
                }
            }
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "SendCachedEnvelopeIntegration installed.", new Object[0]);
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to call the executor. Cached events will not be sent", th);
        }
    }
}
