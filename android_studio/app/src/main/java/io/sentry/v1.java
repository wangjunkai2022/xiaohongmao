package io.sentry;

/* compiled from: NoOpSentryClient.java */
/* loaded from: classes4.dex */
final class v1 implements s0 {

    /* renamed from: a  reason: collision with root package name */
    private static final v1 f84081a = new v1();

    private v1() {
    }

    public static v1 v() {
        return f84081a;
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n a(io.sentry.protocol.u uVar, m5 m5Var, r2 r2Var, b0 b0Var) {
        return r0.o(this, uVar, m5Var, r2Var, b0Var);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n b(h4 h4Var, r2 r2Var) {
        return r0.d(this, h4Var, r2Var);
    }

    @Override // io.sentry.s0
    @m8.g
    public io.sentry.protocol.n c(@m8.g h4 h4Var, @m8.h r2 r2Var, @m8.h b0 b0Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.s0
    public void close() {
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n d(Throwable th, r2 r2Var, b0 b0Var) {
        return r0.h(this, th, r2Var, b0Var);
    }

    @Override // io.sentry.s0
    public void e(long j4) {
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n f(io.sentry.protocol.u uVar) {
        return r0.l(this, uVar);
    }

    @Override // io.sentry.s0
    public /* synthetic */ void g(Session session) {
        r0.k(this, session);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n h(String str, SentryLevel sentryLevel) {
        return r0.i(this, str, sentryLevel);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n i(l3 l3Var) {
        return r0.a(this, l3Var);
    }

    @Override // io.sentry.s0
    public boolean isEnabled() {
        return false;
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n j(h4 h4Var, b0 b0Var) {
        return r0.c(this, h4Var, b0Var);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n k(h4 h4Var) {
        return r0.b(this, h4Var);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n l(io.sentry.protocol.u uVar, m5 m5Var) {
        return r0.n(this, uVar, m5Var);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n m(Throwable th) {
        return r0.e(this, th);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n n(Throwable th, b0 b0Var) {
        return r0.f(this, th, b0Var);
    }

    @Override // io.sentry.s0
    public io.sentry.protocol.n o(@m8.g l3 l3Var, @m8.h b0 b0Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.s0
    public void p(@m8.g w5 w5Var) {
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n q(io.sentry.protocol.u uVar, r2 r2Var, b0 b0Var) {
        return r0.m(this, uVar, r2Var, b0Var);
    }

    @Override // io.sentry.s0
    public void r(@m8.g Session session, @m8.h b0 b0Var) {
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n s(Throwable th, r2 r2Var) {
        return r0.g(this, th, r2Var);
    }

    @Override // io.sentry.s0
    @m8.g
    public io.sentry.protocol.n t(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h r2 r2Var, @m8.h b0 b0Var, @m8.h m2 m2Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n u(String str, SentryLevel sentryLevel, r2 r2Var) {
        return r0.j(this, str, sentryLevel, r2Var);
    }
}
