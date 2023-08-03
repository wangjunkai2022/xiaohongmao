package io.sentry;

import m8.a;

/* compiled from: AsyncHttpTransportFactory.java */
@a.c
/* loaded from: classes4.dex */
public final class a implements y0 {
    @Override // io.sentry.y0
    @m8.g
    public io.sentry.transport.q a(@m8.g SentryOptions sentryOptions, @m8.g o2 o2Var) {
        io.sentry.util.l.c(sentryOptions, "options is required");
        io.sentry.util.l.c(o2Var, "requestDetails is required");
        return new io.sentry.transport.d(sentryOptions, new io.sentry.transport.z(sentryOptions), sentryOptions.getTransportGate(), o2Var);
    }
}
