package io.sentry;

import java.io.Closeable;
import java.io.IOException;

/* compiled from: ShutdownHookIntegration.java */
/* loaded from: classes4.dex */
public final class d5 implements z0, Closeable {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Runtime f83114a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Thread f83115b;

    @m8.k
    public d5(@m8.g Runtime runtime) {
        this.f83114a = (Runtime) io.sentry.util.l.c(runtime, "Runtime is required");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(n0 n0Var, SentryOptions sentryOptions) {
        n0Var.e(sentryOptions.getFlushTimeoutMillis());
    }

    @Override // io.sentry.z0
    public void a(@m8.g final n0 n0Var, @m8.g final SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        io.sentry.util.l.c(sentryOptions, "SentryOptions is required");
        if (sentryOptions.isEnableShutdownHook()) {
            Thread thread = new Thread(new Runnable() { // from class: io.sentry.c5
                @Override // java.lang.Runnable
                public final void run() {
                    d5.h(n0.this, sentryOptions);
                }
            });
            this.f83115b = thread;
            this.f83114a.addShutdownHook(thread);
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "ShutdownHookIntegration installed.", new Object[0]);
            return;
        }
        sentryOptions.getLogger().c(SentryLevel.INFO, "enableShutdownHook is disabled.", new Object[0]);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Thread thread = this.f83115b;
        if (thread != null) {
            this.f83114a.removeShutdownHook(thread);
        }
    }

    @m8.h
    @m8.n
    Thread d() {
        return this.f83115b;
    }

    public d5() {
        this(Runtime.getRuntime());
    }
}
