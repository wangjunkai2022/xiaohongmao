package io.sentry;

import m8.a;

/* compiled from: IHub.java */
/* loaded from: classes4.dex */
public final /* synthetic */ class m0 {
    public static void a(n0 n0Var, @m8.g f fVar) {
        n0Var.s(fVar, new b0());
    }

    public static void b(n0 n0Var, @m8.g String str) {
        n0Var.g(new f(str));
    }

    public static void c(n0 n0Var, @m8.g String str, @m8.g String str2) {
        f fVar = new f(str);
        fVar.u(str2);
        n0Var.g(fVar);
    }

    @m8.g
    public static io.sentry.protocol.n d(n0 n0Var, @m8.g l3 l3Var) {
        return n0Var.o(l3Var, new b0());
    }

    @m8.g
    public static io.sentry.protocol.n e(n0 n0Var, @m8.g h4 h4Var) {
        return n0Var.j(h4Var, new b0());
    }

    @m8.g
    public static io.sentry.protocol.n f(n0 n0Var, @m8.g h4 h4Var, @m8.g s2 s2Var) {
        return n0Var.S(h4Var, new b0(), s2Var);
    }

    @m8.g
    public static io.sentry.protocol.n g(n0 n0Var, @m8.g Throwable th) {
        return n0Var.n(th, new b0());
    }

    @m8.g
    public static io.sentry.protocol.n h(n0 n0Var, @m8.g Throwable th, @m8.g s2 s2Var) {
        return n0Var.q(th, new b0(), s2Var);
    }

    @m8.g
    public static io.sentry.protocol.n i(n0 n0Var, @m8.g String str) {
        return n0Var.h(str, SentryLevel.INFO);
    }

    @m8.g
    public static io.sentry.protocol.n j(n0 n0Var, @m8.g String str, @m8.g s2 s2Var) {
        return n0Var.W(str, SentryLevel.INFO, s2Var);
    }

    @a.c
    @m8.g
    public static io.sentry.protocol.n k(n0 n0Var, @m8.g io.sentry.protocol.u uVar, @m8.h b0 b0Var) {
        return n0Var.r(uVar, null, b0Var);
    }

    @a.c
    @m8.g
    public static io.sentry.protocol.n l(n0 n0Var, @m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var) {
        return n0Var.r(uVar, m5Var, null);
    }

    @a.c
    @m8.g
    public static io.sentry.protocol.n m(n0 n0Var, @m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h b0 b0Var) {
        return n0Var.a0(uVar, m5Var, b0Var, null);
    }

    @m8.g
    public static w0 n(n0 n0Var, @m8.g p5 p5Var) {
        return n0Var.R(p5Var, false);
    }

    @m8.g
    public static w0 o(n0 n0Var, @m8.g p5 p5Var, @m8.h j jVar) {
        return n0Var.v(p5Var, jVar, false);
    }

    @m8.g
    public static w0 p(n0 n0Var, @m8.g p5 p5Var, boolean z9) {
        return n0Var.v(p5Var, null, z9);
    }

    @m8.g
    public static w0 q(n0 n0Var, @m8.g String str, @m8.g String str2) {
        return n0Var.G(str, str2, null);
    }

    @m8.g
    public static w0 r(n0 n0Var, @m8.g String str, @m8.g String str2, @m8.h j jVar) {
        return n0Var.Y(str, str2, jVar, false);
    }

    @m8.g
    public static w0 s(n0 n0Var, @m8.g String str, @m8.g String str2, @m8.h j jVar, boolean z9) {
        return n0Var.v(new p5(str, str2), jVar, z9);
    }

    @m8.g
    public static w0 t(n0 n0Var, @m8.g String str, @m8.g String str2, boolean z9) {
        return n0Var.Y(str, str2, null, z9);
    }
}
