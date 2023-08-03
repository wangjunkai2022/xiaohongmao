package io.sentry;

import io.sentry.u2;
import m8.a;

/* compiled from: SendFireAndForgetEnvelopeSender.java */
@a.c
/* loaded from: classes4.dex */
public final class x2 implements u2.c {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final u2.b f84198a;

    public x2(@m8.g u2.b bVar) {
        this.f84198a = (u2.b) io.sentry.util.l.c(bVar, "SendFireAndForgetDirPath is required");
    }

    @Override // io.sentry.u2.c
    public /* synthetic */ u2.a a(p pVar, String str, o0 o0Var) {
        return w2.b(this, pVar, str, o0Var);
    }

    @Override // io.sentry.u2.c
    @m8.h
    public u2.a b(@m8.g n0 n0Var, @m8.g SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        io.sentry.util.l.c(sentryOptions, "SentryOptions is required");
        String a10 = this.f84198a.a();
        if (a10 != null && c(a10, sentryOptions.getLogger())) {
            return a(new x(n0Var, sentryOptions.getSerializer(), sentryOptions.getLogger(), sentryOptions.getFlushTimeoutMillis()), a10, sentryOptions.getLogger());
        }
        sentryOptions.getLogger().c(SentryLevel.ERROR, "No cache dir path is defined in options.", new Object[0]);
        return null;
    }

    @Override // io.sentry.u2.c
    public /* synthetic */ boolean c(String str, o0 o0Var) {
        return w2.a(this, str, o0Var);
    }
}
