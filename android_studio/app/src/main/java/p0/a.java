package p0;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: FLog.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f93065a = 2;

    /* renamed from: b  reason: collision with root package name */
    public static final int f93066b = 3;

    /* renamed from: c  reason: collision with root package name */
    public static final int f93067c = 4;

    /* renamed from: d  reason: collision with root package name */
    public static final int f93068d = 5;

    /* renamed from: e  reason: collision with root package name */
    public static final int f93069e = 6;

    /* renamed from: f  reason: collision with root package name */
    public static final int f93070f = 7;

    /* renamed from: g  reason: collision with root package name */
    private static c f93071g = b.q();

    private static String A(Class<?> clazz) {
        return clazz.getSimpleName();
    }

    public static void B(Class<?> cls, String msg) {
        if (f93071g.m(4)) {
            f93071g.o(A(cls), msg);
        }
    }

    public static void C(Class<?> cls, String msg, Object arg1) {
        if (f93071g.m(4)) {
            f93071g.o(A(cls), y(msg, arg1));
        }
    }

    public static void D(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (f93071g.m(4)) {
            f93071g.o(A(cls), y(msg, arg1, arg2));
        }
    }

    public static void E(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (f93071g.m(4)) {
            f93071g.o(A(cls), y(msg, arg1, arg2, arg3));
        }
    }

    public static void F(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f93071g.m(4)) {
            f93071g.o(A(cls), y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void G(Class<?> cls, String msg, Throwable tr) {
        if (f93071g.m(4)) {
            f93071g.p(A(cls), msg, tr);
        }
    }

    public static void H(Class<?> cls, String msg, Object... args) {
        if (f93071g.m(4)) {
            f93071g.o(A(cls), y(msg, args));
        }
    }

    public static void I(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (R(4)) {
            f93071g.p(A(cls), y(msg, args), tr);
        }
    }

    public static void J(String tag, String msg) {
        if (f93071g.m(4)) {
            f93071g.o(tag, msg);
        }
    }

    public static void K(String tag, String msg, Object arg1) {
        if (f93071g.m(4)) {
            f93071g.o(tag, y(msg, arg1));
        }
    }

    public static void L(String tag, String msg, Object arg1, Object arg2) {
        if (f93071g.m(4)) {
            f93071g.o(tag, y(msg, arg1, arg2));
        }
    }

    public static void M(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (f93071g.m(4)) {
            f93071g.o(tag, y(msg, arg1, arg2, arg3));
        }
    }

    public static void N(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f93071g.m(4)) {
            f93071g.o(tag, y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void O(String tag, String msg, Throwable tr) {
        if (f93071g.m(4)) {
            f93071g.p(tag, msg, tr);
        }
    }

    public static void P(String tag, String msg, Object... args) {
        if (f93071g.m(4)) {
            f93071g.o(tag, y(msg, args));
        }
    }

    public static void Q(String tag, Throwable tr, String msg, Object... args) {
        if (f93071g.m(4)) {
            f93071g.p(tag, y(msg, args), tr);
        }
    }

    public static boolean R(int level) {
        return f93071g.m(level);
    }

    public static void S(c delegate) {
        if (delegate != null) {
            f93071g = delegate;
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void T(int level) {
        f93071g.n(level);
    }

    public static void U(Class<?> cls, String msg) {
        if (f93071g.m(2)) {
            f93071g.d(A(cls), msg);
        }
    }

    public static void V(Class<?> cls, String msg, Object arg1) {
        if (f93071g.m(2)) {
            f93071g.d(A(cls), y(msg, arg1));
        }
    }

    public static void W(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (f93071g.m(2)) {
            f93071g.d(A(cls), y(msg, arg1, arg2));
        }
    }

    public static void X(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (R(2)) {
            U(cls, y(msg, arg1, arg2, arg3));
        }
    }

    public static void Y(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f93071g.m(2)) {
            f93071g.d(A(cls), y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void Z(Class<?> cls, String msg, Throwable tr) {
        if (f93071g.m(2)) {
            f93071g.l(A(cls), msg, tr);
        }
    }

    public static void a(Class<?> cls, String msg) {
        if (f93071g.m(3)) {
            f93071g.f(A(cls), msg);
        }
    }

    public static void a0(Class<?> cls, String msg, Object... args) {
        if (f93071g.m(2)) {
            f93071g.d(A(cls), y(msg, args));
        }
    }

    public static void b(Class<?> cls, String msg, Object arg1) {
        if (f93071g.m(3)) {
            f93071g.f(A(cls), y(msg, arg1));
        }
    }

    public static void b0(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (f93071g.m(2)) {
            f93071g.l(A(cls), y(msg, args), tr);
        }
    }

    public static void c(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (f93071g.m(3)) {
            f93071g.f(A(cls), y(msg, arg1, arg2));
        }
    }

    public static void c0(String tag, String msg) {
        if (f93071g.m(2)) {
            f93071g.d(tag, msg);
        }
    }

    public static void d(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (f93071g.m(3)) {
            f93071g.f(A(cls), y(msg, arg1, arg2, arg3));
        }
    }

    public static void d0(String tag, String msg, Object arg1) {
        if (f93071g.m(2)) {
            f93071g.d(tag, y(msg, arg1));
        }
    }

    public static void e(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f93071g.m(3)) {
            f93071g.f(A(cls), y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void e0(String tag, String msg, Object arg1, Object arg2) {
        if (f93071g.m(2)) {
            f93071g.d(tag, y(msg, arg1, arg2));
        }
    }

    public static void f(Class<?> cls, String msg, Throwable tr) {
        if (f93071g.m(3)) {
            f93071g.g(A(cls), msg, tr);
        }
    }

    public static void f0(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (f93071g.m(2)) {
            f93071g.d(tag, y(msg, arg1, arg2, arg3));
        }
    }

    public static void g(Class<?> cls, String msg, Object... args) {
        if (f93071g.m(3)) {
            f93071g.f(A(cls), y(msg, args));
        }
    }

    public static void g0(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f93071g.m(2)) {
            f93071g.d(tag, y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void h(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (f93071g.m(3)) {
            f93071g.g(A(cls), y(msg, args), tr);
        }
    }

    public static void h0(String tag, String msg, Throwable tr) {
        if (f93071g.m(2)) {
            f93071g.l(tag, msg, tr);
        }
    }

    public static void i(String tag, String msg) {
        if (f93071g.m(3)) {
            f93071g.f(tag, msg);
        }
    }

    public static void i0(String tag, String msg, Object... args) {
        if (f93071g.m(2)) {
            f93071g.d(tag, y(msg, args));
        }
    }

    public static void j(String tag, String msg, Object arg1) {
        if (f93071g.m(3)) {
            f93071g.f(tag, y(msg, arg1));
        }
    }

    public static void j0(String tag, Throwable tr, String msg, Object... args) {
        if (f93071g.m(2)) {
            f93071g.l(tag, y(msg, args), tr);
        }
    }

    public static void k(String tag, String msg, Object arg1, Object arg2) {
        if (f93071g.m(3)) {
            f93071g.f(tag, y(msg, arg1, arg2));
        }
    }

    public static void k0(Class<?> cls, String msg) {
        if (f93071g.m(5)) {
            f93071g.a(A(cls), msg);
        }
    }

    public static void l(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (f93071g.m(3)) {
            f93071g.f(tag, y(msg, arg1, arg2, arg3));
        }
    }

    public static void l0(Class<?> cls, String msg, Throwable tr) {
        if (f93071g.m(5)) {
            f93071g.j(A(cls), msg, tr);
        }
    }

    public static void m(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f93071g.m(3)) {
            f93071g.f(tag, y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void m0(Class<?> cls, String msg, Object... args) {
        if (f93071g.m(5)) {
            f93071g.a(A(cls), y(msg, args));
        }
    }

    public static void n(String tag, String msg, Throwable tr) {
        if (f93071g.m(3)) {
            f93071g.g(tag, msg, tr);
        }
    }

    public static void n0(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (R(5)) {
            l0(cls, y(msg, args), tr);
        }
    }

    public static void o(String tag, String msg, Object... args) {
        if (f93071g.m(3)) {
            i(tag, y(msg, args));
        }
    }

    public static void o0(String tag, String msg) {
        if (f93071g.m(5)) {
            f93071g.a(tag, msg);
        }
    }

    public static void p(String tag, Throwable tr, String msg, Object... args) {
        if (f93071g.m(3)) {
            n(tag, y(msg, args), tr);
        }
    }

    public static void p0(String tag, String msg, Throwable tr) {
        if (f93071g.m(5)) {
            f93071g.j(tag, msg, tr);
        }
    }

    public static void q(Class<?> cls, String msg) {
        if (f93071g.m(6)) {
            f93071g.c(A(cls), msg);
        }
    }

    public static void q0(String tag, String msg, Object... args) {
        if (f93071g.m(5)) {
            f93071g.a(tag, y(msg, args));
        }
    }

    public static void r(Class<?> cls, String msg, Throwable tr) {
        if (f93071g.m(6)) {
            f93071g.k(A(cls), msg, tr);
        }
    }

    public static void r0(String tag, Throwable tr, String msg, Object... args) {
        if (f93071g.m(5)) {
            f93071g.j(tag, y(msg, args), tr);
        }
    }

    public static void s(Class<?> cls, String msg, Object... args) {
        if (f93071g.m(6)) {
            f93071g.c(A(cls), y(msg, args));
        }
    }

    public static void s0(Class<?> cls, String msg) {
        if (f93071g.m(6)) {
            f93071g.e(A(cls), msg);
        }
    }

    public static void t(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (f93071g.m(6)) {
            f93071g.k(A(cls), y(msg, args), tr);
        }
    }

    public static void t0(Class<?> cls, String msg, Throwable tr) {
        if (f93071g.m(6)) {
            f93071g.i(A(cls), msg, tr);
        }
    }

    public static void u(String tag, String msg) {
        if (f93071g.m(6)) {
            f93071g.c(tag, msg);
        }
    }

    public static void u0(Class<?> cls, String msg, Object... args) {
        if (f93071g.m(6)) {
            f93071g.e(A(cls), y(msg, args));
        }
    }

    public static void v(String tag, String msg, Throwable tr) {
        if (f93071g.m(6)) {
            f93071g.k(tag, msg, tr);
        }
    }

    public static void v0(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (f93071g.m(6)) {
            f93071g.i(A(cls), y(msg, args), tr);
        }
    }

    public static void w(String tag, String msg, Object... args) {
        if (f93071g.m(6)) {
            f93071g.c(tag, y(msg, args));
        }
    }

    public static void w0(String tag, String msg) {
        if (f93071g.m(6)) {
            f93071g.e(tag, msg);
        }
    }

    public static void x(String tag, Throwable tr, String msg, Object... args) {
        if (f93071g.m(6)) {
            f93071g.k(tag, y(msg, args), tr);
        }
    }

    public static void x0(String tag, String msg, Throwable tr) {
        if (f93071g.m(6)) {
            f93071g.i(tag, msg, tr);
        }
    }

    private static String y(String str, Object... args) {
        return String.format(null, str, args);
    }

    public static void y0(String tag, String msg, Object... args) {
        if (f93071g.m(6)) {
            f93071g.e(tag, y(msg, args));
        }
    }

    public static int z() {
        return f93071g.b();
    }

    public static void z0(String tag, Throwable tr, String msg, Object... args) {
        if (f93071g.m(6)) {
            f93071g.i(tag, y(msg, args), tr);
        }
    }
}
