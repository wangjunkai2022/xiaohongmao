package io.sentry;

import io.sentry.protocol.DebugImage;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m8.a;

/* compiled from: MainEventProcessor.java */
@a.c
/* loaded from: classes4.dex */
public final class p1 implements z, Closeable {

    /* renamed from: e  reason: collision with root package name */
    private static final String f83516e = "production";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SentryOptions f83517a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final u4 f83518b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final i4 f83519c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private volatile e0 f83520d = null;

    public p1(@m8.g SentryOptions sentryOptions) {
        SentryOptions sentryOptions2 = (SentryOptions) io.sentry.util.l.c(sentryOptions, "The SentryOptions is required.");
        this.f83517a = sentryOptions2;
        t4 t4Var = new t4(sentryOptions2.getInAppExcludes(), sentryOptions2.getInAppIncludes());
        this.f83519c = new i4(t4Var);
        this.f83518b = new u4(t4Var, sentryOptions2);
    }

    private void A(@m8.g h4 h4Var) {
        Throwable T = h4Var.T();
        if (T != null) {
            h4Var.J0(this.f83519c.c(T));
        }
    }

    private void D(@m8.g h4 h4Var) {
        Map<String, String> a10 = this.f83517a.getModulesLoader().a();
        if (a10 == null) {
            return;
        }
        Map<String, String> C0 = h4Var.C0();
        if (C0 == null) {
            h4Var.P0(a10);
        } else {
            C0.putAll(a10);
        }
    }

    private void E(@m8.g e3 e3Var) {
        if (e3Var.L() == null) {
            e3Var.e0(e3.f83130p);
        }
    }

    private void G(@m8.g e3 e3Var) {
        if (e3Var.M() == null) {
            e3Var.f0(this.f83517a.getRelease());
        }
    }

    private void H(@m8.g e3 e3Var) {
        if (e3Var.O() == null) {
            e3Var.h0(this.f83517a.getSdkVersion());
        }
    }

    private void I(@m8.g e3 e3Var) {
        if (e3Var.P() == null) {
            e3Var.i0(this.f83517a.getServerName());
        }
        if (this.f83517a.isAttachServerName() && e3Var.P() == null) {
            d();
            if (this.f83520d != null) {
                e3Var.i0(this.f83520d.d());
            }
        }
    }

    private void J(@m8.g e3 e3Var) {
        if (e3Var.R() == null) {
            e3Var.k0(new HashMap(this.f83517a.getTags()));
            return;
        }
        for (Map.Entry<String, String> entry : this.f83517a.getTags().entrySet()) {
            if (!e3Var.R().containsKey(entry.getKey())) {
                e3Var.j0(entry.getKey(), entry.getValue());
            }
        }
    }

    private void K(@m8.g h4 h4Var, @m8.g b0 b0Var) {
        if (h4Var.D0() == null) {
            ArrayList arrayList = null;
            List<io.sentry.protocol.m> w02 = h4Var.w0();
            if (w02 != null && !w02.isEmpty()) {
                for (io.sentry.protocol.m mVar : w02) {
                    if (mVar.g() != null && mVar.j() != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(mVar.j());
                    }
                }
            }
            if (!this.f83517a.isAttachThreads() && !io.sentry.util.h.g(b0Var, io.sentry.hints.b.class)) {
                if (this.f83517a.isAttachStacktrace()) {
                    if ((w02 == null || w02.isEmpty()) && !i(b0Var)) {
                        h4Var.Q0(this.f83518b.a());
                        return;
                    }
                    return;
                }
                return;
            }
            Object f10 = io.sentry.util.h.f(b0Var);
            h4Var.Q0(this.f83518b.c(arrayList, f10 instanceof io.sentry.hints.b ? ((io.sentry.hints.b) f10).a() : false));
        }
    }

    private boolean L(@m8.g e3 e3Var, @m8.g b0 b0Var) {
        if (io.sentry.util.h.s(b0Var)) {
            return true;
        }
        this.f83517a.getLogger().c(SentryLevel.DEBUG, "Event was cached so not applying data relevant to the current app execution/version: %s", e3Var.I());
        return false;
    }

    private void d() {
        if (this.f83520d == null) {
            synchronized (this) {
                if (this.f83520d == null) {
                    this.f83520d = e0.e();
                }
            }
        }
    }

    private boolean i(@m8.g b0 b0Var) {
        return io.sentry.util.h.g(b0Var, io.sentry.hints.d.class);
    }

    private void k(@m8.g e3 e3Var) {
        if (this.f83517a.isSendDefaultPii()) {
            if (e3Var.U() == null) {
                io.sentry.protocol.w wVar = new io.sentry.protocol.w();
                wVar.r("{{auto}}");
                e3Var.m0(wVar);
            } else if (e3Var.U().k() == null) {
                e3Var.U().r("{{auto}}");
            }
        }
    }

    private void p(@m8.g e3 e3Var) {
        G(e3Var);
        y(e3Var);
        I(e3Var);
        s(e3Var);
        H(e3Var);
        J(e3Var);
        k(e3Var);
    }

    private void q(@m8.g e3 e3Var) {
        E(e3Var);
    }

    private void r(@m8.g e3 e3Var) {
        if (this.f83517a.getProguardUuid() != null) {
            io.sentry.protocol.c F = e3Var.F();
            if (F == null) {
                F = new io.sentry.protocol.c();
            }
            if (F.c() == null) {
                F.e(new ArrayList());
            }
            List<DebugImage> c10 = F.c();
            if (c10 != null) {
                DebugImage debugImage = new DebugImage();
                debugImage.setType(DebugImage.PROGUARD);
                debugImage.setUuid(this.f83517a.getProguardUuid());
                c10.add(debugImage);
                e3Var.Y(F);
            }
        }
    }

    private void s(@m8.g e3 e3Var) {
        if (e3Var.G() == null) {
            e3Var.Z(this.f83517a.getDist());
        }
    }

    private void y(@m8.g e3 e3Var) {
        if (e3Var.H() == null) {
            e3Var.a0(this.f83517a.getEnvironment() != null ? this.f83517a.getEnvironment() : f83516e);
        }
    }

    @Override // io.sentry.z
    @m8.g
    public h4 a(@m8.g h4 h4Var, @m8.g b0 b0Var) {
        q(h4Var);
        A(h4Var);
        r(h4Var);
        D(h4Var);
        if (L(h4Var, b0Var)) {
            p(h4Var);
            K(h4Var, b0Var);
        }
        return h4Var;
    }

    @Override // io.sentry.z
    @m8.g
    public io.sentry.protocol.u b(@m8.g io.sentry.protocol.u uVar, @m8.g b0 b0Var) {
        q(uVar);
        r(uVar);
        if (L(uVar, b0Var)) {
            p(uVar);
        }
        return uVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f83520d != null) {
            this.f83520d.c();
        }
    }

    @m8.h
    @m8.n
    e0 h() {
        return this.f83520d;
    }

    boolean isClosed() {
        if (this.f83520d != null) {
            return this.f83520d.g();
        }
        return true;
    }

    p1(@m8.g SentryOptions sentryOptions, @m8.g u4 u4Var, @m8.g i4 i4Var) {
        this.f83517a = (SentryOptions) io.sentry.util.l.c(sentryOptions, "The SentryOptions is required.");
        this.f83518b = (u4) io.sentry.util.l.c(u4Var, "The SentryThreadFactory is required.");
        this.f83519c = (i4) io.sentry.util.l.c(i4Var, "The SentryExceptionFactory is required.");
    }
}
