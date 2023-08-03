package io.sentry;

import java.util.List;
import m8.a;

/* compiled from: IHub.java */
/* loaded from: classes4.dex */
public interface n0 {
    @m8.g
    SentryOptions A();

    void B();

    void C(@m8.g String str);

    @m8.g
    io.sentry.protocol.n D(@m8.g String str, @m8.g s2 s2Var);

    @m8.h
    v4 E();

    @m8.g
    io.sentry.protocol.n F(@m8.g String str);

    @m8.g
    w0 G(@m8.g String str, @m8.g String str2, @m8.h j jVar);

    void H();

    void I(@m8.h SentryLevel sentryLevel);

    @m8.g
    io.sentry.protocol.n J();

    @m8.g
    io.sentry.protocol.n K(@m8.g h4 h4Var, @m8.g s2 s2Var);

    @m8.g
    w0 L(@m8.g p5 p5Var);

    @m8.g
    w0 M(@m8.g String str, @m8.g String str2);

    @a.c
    @m8.g
    w0 N(@m8.g p5 p5Var, @m8.g r5 r5Var);

    @m8.g
    io.sentry.protocol.n O(@m8.g Throwable th, @m8.g s2 s2Var);

    void P(@m8.g s0 s0Var);

    @m8.h
    Boolean Q();

    @m8.g
    w0 R(@m8.g p5 p5Var, boolean z9);

    @m8.g
    io.sentry.protocol.n S(@m8.g h4 h4Var, @m8.h b0 b0Var, @m8.g s2 s2Var);

    @m8.g
    w0 T(@m8.g p5 p5Var, @m8.h j jVar);

    @a.c
    @m8.g
    io.sentry.protocol.n U(@m8.g io.sentry.protocol.u uVar, @m8.h b0 b0Var);

    void V(@m8.g s2 s2Var);

    @m8.g
    io.sentry.protocol.n W(@m8.g String str, @m8.g SentryLevel sentryLevel, @m8.g s2 s2Var);

    void X(@m8.h String str);

    @m8.g
    w0 Y(@m8.g String str, @m8.g String str2, @m8.h j jVar, boolean z9);

    void Z(@m8.g String str, @m8.g String str2);

    void a(@m8.g String str, @m8.g String str2);

    @a.c
    @m8.g
    io.sentry.protocol.n a0(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h b0 b0Var, @m8.h m2 m2Var);

    void b(@m8.g String str);

    void b0();

    void c(@m8.g String str);

    @m8.g
    w0 c0(@m8.g String str, @m8.g String str2, boolean z9);

    @m8.g
    n0 clone();

    void close();

    void d(@m8.g String str, @m8.g String str2);

    void e(long j4);

    void f(@m8.h io.sentry.protocol.w wVar);

    void g(@m8.g f fVar);

    @m8.g
    io.sentry.protocol.n h(@m8.g String str, @m8.g SentryLevel sentryLevel);

    @m8.g
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

    @m8.g
    io.sentry.protocol.n o(@m8.g l3 l3Var, @m8.h b0 b0Var);

    void p(@m8.g w5 w5Var);

    @m8.g
    io.sentry.protocol.n q(@m8.g Throwable th, @m8.h b0 b0Var, @m8.g s2 s2Var);

    @a.c
    @m8.g
    io.sentry.protocol.n r(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h b0 b0Var);

    void s(@m8.g f fVar, @m8.h b0 b0Var);

    void t(@m8.g s2 s2Var);

    @m8.h
    v0 u();

    @m8.g
    w0 v(@m8.g p5 p5Var, @m8.h j jVar, boolean z9);

    void w();

    void x(@m8.g List<String> list);

    @a.c
    void y(@m8.g Throwable th, @m8.g v0 v0Var, @m8.g String str);

    void z();
}
