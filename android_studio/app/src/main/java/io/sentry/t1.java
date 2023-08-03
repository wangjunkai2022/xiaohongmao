package io.sentry;

import java.util.List;

/* compiled from: NoOpHub.java */
/* loaded from: classes4.dex */
public final class t1 implements n0 {

    /* renamed from: b  reason: collision with root package name */
    private static final t1 f83971b = new t1();
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SentryOptions f83972a = SentryOptions.empty();

    private t1() {
    }

    public static t1 d0() {
        return f83971b;
    }

    @Override // io.sentry.n0
    @m8.g
    public SentryOptions A() {
        return this.f83972a;
    }

    @Override // io.sentry.n0
    public void B() {
    }

    @Override // io.sentry.n0
    public /* synthetic */ void C(String str) {
        m0.b(this, str);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n D(String str, s2 s2Var) {
        return m0.j(this, str, s2Var);
    }

    @Override // io.sentry.n0
    @m8.g
    public v4 E() {
        return new v4(io.sentry.protocol.n.f83769b, h5.f83292b, Boolean.TRUE);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n F(String str) {
        return m0.i(this, str);
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 G(String str, String str2, j jVar) {
        return m0.r(this, str, str2, jVar);
    }

    @Override // io.sentry.n0
    public void H() {
    }

    @Override // io.sentry.n0
    public void I(@m8.h SentryLevel sentryLevel) {
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n J() {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n K(h4 h4Var, s2 s2Var) {
        return m0.f(this, h4Var, s2Var);
    }

    @Override // io.sentry.n0
    @m8.g
    public w0 L(@m8.g p5 p5Var) {
        return c2.K();
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 M(String str, String str2) {
        return m0.q(this, str, str2);
    }

    @Override // io.sentry.n0
    @m8.g
    public w0 N(@m8.g p5 p5Var, @m8.g r5 r5Var) {
        return c2.K();
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n O(Throwable th, s2 s2Var) {
        return m0.h(this, th, s2Var);
    }

    @Override // io.sentry.n0
    public void P(@m8.g s0 s0Var) {
    }

    @Override // io.sentry.n0
    @m8.h
    public Boolean Q() {
        return null;
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 R(p5 p5Var, boolean z9) {
        return m0.p(this, p5Var, z9);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n S(@m8.g h4 h4Var, @m8.h b0 b0Var, @m8.g s2 s2Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 T(p5 p5Var, j jVar) {
        return m0.o(this, p5Var, jVar);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n U(io.sentry.protocol.u uVar, b0 b0Var) {
        return m0.k(this, uVar, b0Var);
    }

    @Override // io.sentry.n0
    public void V(@m8.g s2 s2Var) {
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n W(@m8.g String str, @m8.g SentryLevel sentryLevel, @m8.g s2 s2Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    public void X(@m8.h String str) {
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 Y(String str, String str2, j jVar, boolean z9) {
        return m0.s(this, str, str2, jVar, z9);
    }

    @Override // io.sentry.n0
    public /* synthetic */ void Z(String str, String str2) {
        m0.c(this, str, str2);
    }

    @Override // io.sentry.n0
    public void a(@m8.g String str, @m8.g String str2) {
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n a0(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h b0 b0Var, @m8.h m2 m2Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    public void b(@m8.g String str) {
    }

    @Override // io.sentry.n0
    public void b0() {
    }

    @Override // io.sentry.n0
    public void c(@m8.g String str) {
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 c0(String str, String str2, boolean z9) {
        return m0.t(this, str, str2, z9);
    }

    @Override // io.sentry.n0
    public void close() {
    }

    @Override // io.sentry.n0
    public void d(@m8.g String str, @m8.g String str2) {
    }

    @Override // io.sentry.n0
    public void e(long j4) {
    }

    @Override // io.sentry.n0
    public void f(@m8.h io.sentry.protocol.w wVar) {
    }

    @Override // io.sentry.n0
    public /* synthetic */ void g(f fVar) {
        m0.a(this, fVar);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n h(@m8.g String str, @m8.g SentryLevel sentryLevel) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n i(l3 l3Var) {
        return m0.d(this, l3Var);
    }

    @Override // io.sentry.n0
    public boolean isEnabled() {
        return false;
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n j(@m8.g h4 h4Var, @m8.h b0 b0Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n k(h4 h4Var) {
        return m0.e(this, h4Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n l(io.sentry.protocol.u uVar, m5 m5Var) {
        return m0.l(this, uVar, m5Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n m(Throwable th) {
        return m0.g(this, th);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n n(@m8.g Throwable th, @m8.h b0 b0Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n o(@m8.g l3 l3Var, @m8.h b0 b0Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    public void p(@m8.g w5 w5Var) {
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n q(@m8.g Throwable th, @m8.h b0 b0Var, @m8.g s2 s2Var) {
        return io.sentry.protocol.n.f83769b;
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n r(io.sentry.protocol.u uVar, m5 m5Var, b0 b0Var) {
        return m0.m(this, uVar, m5Var, b0Var);
    }

    @Override // io.sentry.n0
    public void s(@m8.g f fVar, @m8.h b0 b0Var) {
    }

    @Override // io.sentry.n0
    public void t(@m8.g s2 s2Var) {
    }

    @Override // io.sentry.n0
    @m8.h
    public v0 u() {
        return null;
    }

    @Override // io.sentry.n0
    @m8.g
    public w0 v(@m8.g p5 p5Var, @m8.h j jVar, boolean z9) {
        return c2.K();
    }

    @Override // io.sentry.n0
    public void w() {
    }

    @Override // io.sentry.n0
    public void x(@m8.g List<String> list) {
    }

    @Override // io.sentry.n0
    public void y(@m8.g Throwable th, @m8.g v0 v0Var, @m8.g String str) {
    }

    @Override // io.sentry.n0
    public void z() {
    }

    @Override // io.sentry.n0
    @m8.g
    public n0 clone() {
        return f83971b;
    }
}
