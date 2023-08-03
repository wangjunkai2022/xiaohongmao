package io.sentry;

import io.sentry.u2;

/* compiled from: SendCachedEnvelopeFireAndForgetIntegration.java */
/* loaded from: classes4.dex */
public final class u2 implements z0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final c f84058a;

    /* compiled from: SendCachedEnvelopeFireAndForgetIntegration.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a();
    }

    /* compiled from: SendCachedEnvelopeFireAndForgetIntegration.java */
    /* loaded from: classes4.dex */
    public interface b {
        @m8.h
        String a();
    }

    /* compiled from: SendCachedEnvelopeFireAndForgetIntegration.java */
    /* loaded from: classes4.dex */
    public interface c {
        @m8.g
        a a(@m8.g p pVar, @m8.g String str, @m8.g o0 o0Var);

        @m8.h
        a b(@m8.g n0 n0Var, @m8.g SentryOptions sentryOptions);

        boolean c(@m8.h String str, @m8.g o0 o0Var);
    }

    public u2(@m8.g c cVar) {
        this.f84058a = (c) io.sentry.util.l.c(cVar, "SendFireAndForgetFactory is required");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(a aVar, SentryOptions sentryOptions) {
        try {
            aVar.a();
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed trying to send cached events.", th);
        }
    }

    @Override // io.sentry.z0
    public final void a(@m8.g n0 n0Var, @m8.g final SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        io.sentry.util.l.c(sentryOptions, "SentryOptions is required");
        if (!this.f84058a.c(sentryOptions.getCacheDirPath(), sentryOptions.getLogger())) {
            sentryOptions.getLogger().c(SentryLevel.ERROR, "No cache dir path is defined in options.", new Object[0]);
            return;
        }
        final a b10 = this.f84058a.b(n0Var, sentryOptions);
        if (b10 == null) {
            sentryOptions.getLogger().c(SentryLevel.ERROR, "SendFireAndForget factory is null.", new Object[0]);
            return;
        }
        try {
            sentryOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.t2
                @Override // java.lang.Runnable
                public final void run() {
                    u2.c(u2.a.this, sentryOptions);
                }
            });
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "SendCachedEventFireAndForgetIntegration installed.", new Object[0]);
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to call the executor. Cached events will not be sent", th);
        }
    }
}
