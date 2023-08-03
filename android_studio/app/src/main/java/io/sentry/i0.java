package io.sentry;

import java.util.List;
import m8.a;

/* compiled from: HubAdapter.java */
/* loaded from: classes4.dex */
public final class i0 implements n0 {

    /* renamed from: a  reason: collision with root package name */
    private static final i0 f83296a = new i0();

    private i0() {
    }

    public static i0 d0() {
        return f83296a;
    }

    @Override // io.sentry.n0
    @m8.g
    public SentryOptions A() {
        return c3.B().A();
    }

    @Override // io.sentry.n0
    public void B() {
        c3.w();
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
    @m8.h
    public v4 E() {
        return c3.p0();
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
        c3.z();
    }

    @Override // io.sentry.n0
    public void I(@m8.h SentryLevel sentryLevel) {
        c3.Z(sentryLevel);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n J() {
        return c3.C();
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n K(h4 h4Var, s2 s2Var) {
        return m0.f(this, h4Var, s2Var);
    }

    @Override // io.sentry.n0
    @m8.g
    public w0 L(@m8.g p5 p5Var) {
        return c3.e0(p5Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 M(String str, String str2) {
        return m0.q(this, str, str2);
    }

    @Override // io.sentry.n0
    @m8.g
    public w0 N(@m8.g p5 p5Var, @m8.g r5 r5Var) {
        return c3.h0(p5Var, r5Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n O(Throwable th, s2 s2Var) {
        return m0.h(this, th, s2Var);
    }

    @Override // io.sentry.n0
    public void P(@m8.g s0 s0Var) {
        c3.i(s0Var);
    }

    @Override // io.sentry.n0
    @m8.h
    public Boolean Q() {
        return c3.N();
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 R(p5 p5Var, boolean z9) {
        return m0.p(this, p5Var, z9);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n S(@m8.g h4 h4Var, @m8.h b0 b0Var, @m8.g s2 s2Var) {
        return c3.l(h4Var, b0Var, s2Var);
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
        c3.q0(s2Var);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n W(@m8.g String str, @m8.g SentryLevel sentryLevel, @m8.g s2 s2Var) {
        return c3.u(str, sentryLevel, s2Var);
    }

    @Override // io.sentry.n0
    public void X(@m8.h String str) {
        c3.b0(str);
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
        c3.a0(str, str2);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n a0(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h b0 b0Var, @m8.h m2 m2Var) {
        return c3.B().a0(uVar, m5Var, b0Var, m2Var);
    }

    @Override // io.sentry.n0
    public void b(@m8.g String str) {
        c3.U(str);
    }

    @Override // io.sentry.n0
    public void b0() {
        c3.d0();
    }

    @Override // io.sentry.n0
    public void c(@m8.g String str) {
        c3.V(str);
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 c0(String str, String str2, boolean z9) {
        return m0.t(this, str, str2, z9);
    }

    @Override // io.sentry.n0
    public void close() {
        c3.x();
    }

    @Override // io.sentry.n0
    public void d(@m8.g String str, @m8.g String str2) {
        c3.X(str, str2);
    }

    @Override // io.sentry.n0
    public void e(long j4) {
        c3.A(j4);
    }

    @Override // io.sentry.n0
    public void f(@m8.h io.sentry.protocol.w wVar) {
        c3.c0(wVar);
    }

    @Override // io.sentry.n0
    public /* synthetic */ void g(f fVar) {
        m0.a(this, fVar);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n h(@m8.g String str, @m8.g SentryLevel sentryLevel) {
        return c3.t(str, sentryLevel);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n i(l3 l3Var) {
        return m0.d(this, l3Var);
    }

    @Override // io.sentry.n0
    public boolean isEnabled() {
        return c3.O();
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n j(@m8.g h4 h4Var, @m8.h b0 b0Var) {
        return c3.k(h4Var, b0Var);
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
        return c3.o(th, b0Var);
    }

    @Override // io.sentry.n0
    @a.c
    @m8.g
    public io.sentry.protocol.n o(@m8.g l3 l3Var, @m8.h b0 b0Var) {
        return c3.B().o(l3Var, b0Var);
    }

    @Override // io.sentry.n0
    public void p(@m8.g w5 w5Var) {
        c3.v(w5Var);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n q(@m8.g Throwable th, @m8.h b0 b0Var, @m8.g s2 s2Var) {
        return c3.p(th, b0Var, s2Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n r(io.sentry.protocol.u uVar, m5 m5Var, b0 b0Var) {
        return m0.m(this, uVar, m5Var, b0Var);
    }

    @Override // io.sentry.n0
    public void s(@m8.g f fVar, @m8.h b0 b0Var) {
        c3.e(fVar, b0Var);
    }

    @Override // io.sentry.n0
    public void t(@m8.g s2 s2Var) {
        c3.y(s2Var);
    }

    @Override // io.sentry.n0
    @m8.h
    public v0 u() {
        return c3.B().u();
    }

    @Override // io.sentry.n0
    @m8.g
    public w0 v(@m8.g p5 p5Var, @m8.h j jVar, boolean z9) {
        return c3.g0(p5Var, jVar, z9);
    }

    @Override // io.sentry.n0
    public void w() {
        c3.T();
    }

    @Override // io.sentry.n0
    public void x(@m8.g List<String> list) {
        c3.Y(list);
    }

    @Override // io.sentry.n0
    public void y(@m8.g Throwable th, @m8.g v0 v0Var, @m8.g String str) {
        c3.B().y(th, v0Var, str);
    }

    @Override // io.sentry.n0
    public void z() {
        c3.S();
    }

    @Override // io.sentry.n0
    @m8.g
    public n0 clone() {
        return c3.B().clone();
    }
}
