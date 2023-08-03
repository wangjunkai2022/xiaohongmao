package io.sentry;

import m8.a;

/* compiled from: ISentryClient.java */
/* loaded from: classes4.dex */
public final /* synthetic */ class r0 {
    @m8.h
    public static io.sentry.protocol.n a(s0 s0Var, @m8.g l3 l3Var) {
        return s0Var.o(l3Var, null);
    }

    @m8.g
    public static io.sentry.protocol.n b(s0 s0Var, @m8.g h4 h4Var) {
        return s0Var.c(h4Var, null, null);
    }

    @m8.g
    public static io.sentry.protocol.n c(s0 s0Var, @m8.g h4 h4Var, @m8.h b0 b0Var) {
        return s0Var.c(h4Var, null, b0Var);
    }

    @m8.g
    public static io.sentry.protocol.n d(s0 s0Var, @m8.g h4 h4Var, @m8.h r2 r2Var) {
        return s0Var.c(h4Var, r2Var, null);
    }

    @m8.g
    public static io.sentry.protocol.n e(s0 s0Var, @m8.g Throwable th) {
        return s0Var.d(th, null, null);
    }

    @m8.g
    public static io.sentry.protocol.n f(s0 s0Var, @m8.g Throwable th, @m8.h b0 b0Var) {
        return s0Var.d(th, null, b0Var);
    }

    @m8.g
    public static io.sentry.protocol.n g(s0 s0Var, @m8.g Throwable th, @m8.h r2 r2Var) {
        return s0Var.d(th, r2Var, null);
    }

    @m8.g
    public static io.sentry.protocol.n h(s0 s0Var, @m8.g Throwable th, @m8.h r2 r2Var, @m8.h b0 b0Var) {
        return s0Var.c(new h4(th), r2Var, b0Var);
    }

    @m8.g
    public static io.sentry.protocol.n i(s0 s0Var, @m8.g String str, @m8.g SentryLevel sentryLevel) {
        return s0Var.u(str, sentryLevel, null);
    }

    @m8.g
    public static io.sentry.protocol.n j(s0 s0Var, @m8.g String str, @m8.g SentryLevel sentryLevel, @m8.h r2 r2Var) {
        h4 h4Var = new h4();
        io.sentry.protocol.g gVar = new io.sentry.protocol.g();
        gVar.g(str);
        h4Var.N0(gVar);
        h4Var.L0(sentryLevel);
        return s0Var.b(h4Var, r2Var);
    }

    public static void k(s0 s0Var, @m8.g Session session) {
        s0Var.r(session, null);
    }

    @m8.g
    public static io.sentry.protocol.n l(s0 s0Var, @m8.g io.sentry.protocol.u uVar) {
        return s0Var.a(uVar, null, null, null);
    }

    @m8.g
    public static io.sentry.protocol.n m(s0 s0Var, @m8.g io.sentry.protocol.u uVar, @m8.h r2 r2Var, @m8.h b0 b0Var) {
        return s0Var.a(uVar, null, r2Var, b0Var);
    }

    @a.c
    @m8.g
    public static io.sentry.protocol.n n(s0 s0Var, @m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var) {
        return s0Var.a(uVar, m5Var, null, null);
    }

    @m8.g
    public static io.sentry.protocol.n o(s0 s0Var, @m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h r2 r2Var, @m8.h b0 b0Var) {
        return s0Var.t(uVar, m5Var, r2Var, b0Var, null);
    }
}
