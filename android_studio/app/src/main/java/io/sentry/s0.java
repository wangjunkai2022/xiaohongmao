package io.sentry;

import m8.a;

/* compiled from: ISentryClient.java */
/* loaded from: classes4.dex */
public interface s0 {
    @m8.g
    io.sentry.protocol.n a(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h r2 r2Var, @m8.h b0 b0Var);

    @m8.g
    io.sentry.protocol.n b(@m8.g h4 h4Var, @m8.h r2 r2Var);

    @m8.g
    io.sentry.protocol.n c(@m8.g h4 h4Var, @m8.h r2 r2Var, @m8.h b0 b0Var);

    void close();

    @m8.g
    io.sentry.protocol.n d(@m8.g Throwable th, @m8.h r2 r2Var, @m8.h b0 b0Var);

    void e(long j4);

    @m8.g
    io.sentry.protocol.n f(@m8.g io.sentry.protocol.u uVar);

    void g(@m8.g Session session);

    @m8.g
    io.sentry.protocol.n h(@m8.g String str, @m8.g SentryLevel sentryLevel);

    @m8.h
    io.sentry.protocol.n i(@m8.g l3 l3Var);

    boolean isEnabled();

    @m8.g
    io.sentry.protocol.n j(@m8.g h4 h4Var, @m8.h b0 b0Var);

    @m8.g
    io.sentry.protocol.n k(@m8.g h4 h4Var);

    @a.c
    @m8.g
    io.sentry.protocol.n l(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var);

    @m8.g
    io.sentry.protocol.n m(@m8.g Throwable th);

    @m8.g
    io.sentry.protocol.n n(@m8.g Throwable th, @m8.h b0 b0Var);

    @m8.h
    io.sentry.protocol.n o(@m8.g l3 l3Var, @m8.h b0 b0Var);

    void p(@m8.g w5 w5Var);

    @m8.g
    io.sentry.protocol.n q(@m8.g io.sentry.protocol.u uVar, @m8.h r2 r2Var, @m8.h b0 b0Var);

    void r(@m8.g Session session, @m8.h b0 b0Var);

    @m8.g
    io.sentry.protocol.n s(@m8.g Throwable th, @m8.h r2 r2Var);

    @a.c
    @m8.g
    io.sentry.protocol.n t(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h r2 r2Var, @m8.h b0 b0Var, @m8.h m2 m2Var);

    @m8.g
    io.sentry.protocol.n u(@m8.g String str, @m8.g SentryLevel sentryLevel, @m8.h r2 r2Var);
}
