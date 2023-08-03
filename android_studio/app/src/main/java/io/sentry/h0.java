package io.sentry;

import io.sentry.clientreport.DiscardReason;
import io.sentry.i5;
import io.sentry.r2;
import java.io.Closeable;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import m8.a;

/* compiled from: Hub.java */
/* loaded from: classes4.dex */
public final class h0 implements n0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private volatile io.sentry.protocol.n f83252a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final SentryOptions f83253b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f83254c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final i5 f83255d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final n5 f83256e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Map<Throwable, io.sentry.util.m<WeakReference<v0>, String>> f83257f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final s5 f83258g;

    public h0(@m8.g SentryOptions sentryOptions) {
        this(sentryOptions, j0(sentryOptions));
    }

    private void e0(@m8.g h4 h4Var) {
        io.sentry.util.m<WeakReference<v0>, String> mVar;
        v0 v0Var;
        if (!this.f83253b.isTracingEnabled() || h4Var.S() == null || (mVar = this.f83257f.get(io.sentry.util.b.a(h4Var.S()))) == null) {
            return;
        }
        WeakReference<v0> a10 = mVar.a();
        if (h4Var.E().getTrace() == null && a10 != null && (v0Var = a10.get()) != null) {
            h4Var.E().setTrace(v0Var.E());
        }
        String b10 = mVar.b();
        if (h4Var.F0() != null || b10 == null) {
            return;
        }
        h4Var.R0(b10);
    }

    private r2 f0(@m8.g r2 r2Var, @m8.h s2 s2Var) {
        if (s2Var != null) {
            try {
                r2 r2Var2 = new r2(r2Var);
                s2Var.a(r2Var2);
                return r2Var2;
            } catch (Throwable th) {
                this.f83253b.getLogger().b(SentryLevel.ERROR, "Error in the 'ScopeCallback' callback.", th);
            }
        }
        return r2Var;
    }

    @m8.g
    private io.sentry.protocol.n g0(@m8.g h4 h4Var, @m8.h b0 b0Var, @m8.h s2 s2Var) {
        io.sentry.protocol.n nVar = io.sentry.protocol.n.f83769b;
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureEvent' call is a no-op.", new Object[0]);
            return nVar;
        } else if (h4Var == null) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "captureEvent called with null parameter.", new Object[0]);
            return nVar;
        } else {
            try {
                e0(h4Var);
                i5.a a10 = this.f83255d.a();
                nVar = a10.a().c(h4Var, f0(a10.c(), s2Var), b0Var);
                this.f83252a = nVar;
                return nVar;
            } catch (Throwable th) {
                o0 logger = this.f83253b.getLogger();
                SentryLevel sentryLevel = SentryLevel.ERROR;
                logger.b(sentryLevel, "Error while capturing event with id: " + h4Var.I(), th);
                return nVar;
            }
        }
    }

    @m8.g
    private io.sentry.protocol.n h0(@m8.g Throwable th, @m8.h b0 b0Var, @m8.h s2 s2Var) {
        io.sentry.protocol.n nVar = io.sentry.protocol.n.f83769b;
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureException' call is a no-op.", new Object[0]);
        } else if (th == null) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "captureException called with null parameter.", new Object[0]);
        } else {
            try {
                i5.a a10 = this.f83255d.a();
                h4 h4Var = new h4(th);
                e0(h4Var);
                nVar = a10.a().c(h4Var, f0(a10.c(), s2Var), b0Var);
            } catch (Throwable th2) {
                o0 logger = this.f83253b.getLogger();
                SentryLevel sentryLevel = SentryLevel.ERROR;
                logger.b(sentryLevel, "Error while capturing exception: " + th.getMessage(), th2);
            }
        }
        this.f83252a = nVar;
        return nVar;
    }

    @m8.g
    private io.sentry.protocol.n i0(@m8.g String str, @m8.g SentryLevel sentryLevel, @m8.h s2 s2Var) {
        io.sentry.protocol.n nVar = io.sentry.protocol.n.f83769b;
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureMessage' call is a no-op.", new Object[0]);
        } else if (str == null) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "captureMessage called with null parameter.", new Object[0]);
        } else {
            try {
                i5.a a10 = this.f83255d.a();
                nVar = a10.a().u(str, sentryLevel, f0(a10.c(), s2Var));
            } catch (Throwable th) {
                o0 logger = this.f83253b.getLogger();
                SentryLevel sentryLevel2 = SentryLevel.ERROR;
                logger.b(sentryLevel2, "Error while capturing message: " + str, th);
            }
        }
        this.f83252a = nVar;
        return nVar;
    }

    private static i5.a j0(@m8.g SentryOptions sentryOptions) {
        n0(sentryOptions);
        return new i5.a(sentryOptions, new h3(sentryOptions), new r2(sentryOptions));
    }

    @m8.g
    private w0 k0(@m8.g p5 p5Var, @m8.h j jVar, boolean z9, @m8.h j3 j3Var, boolean z10, @m8.h Long l10, boolean z11, @m8.h q5 q5Var) {
        final w0 w0Var;
        io.sentry.util.l.c(p5Var, "transactionContext is required");
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'startTransaction' returns a no-op.", new Object[0]);
            w0Var = c2.K();
        } else if (!this.f83253b.getInstrumenter().equals(p5Var.v())) {
            this.f83253b.getLogger().c(SentryLevel.DEBUG, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s", p5Var.v(), this.f83253b.getInstrumenter());
            w0Var = c2.K();
        } else if (!this.f83253b.isTracingEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.INFO, "Tracing is disabled and this 'startTransaction' returns a no-op.", new Object[0]);
            w0Var = c2.K();
        } else {
            o5 a10 = this.f83256e.a(new q2(p5Var, jVar));
            p5Var.o(a10);
            a5 a5Var = new a5(p5Var, this, j3Var, z10, l10, z11, q5Var, this.f83258g);
            if (a10.d().booleanValue() && a10.b().booleanValue()) {
                this.f83253b.getTransactionProfiler().b(a5Var);
            }
            w0Var = a5Var;
        }
        if (z9) {
            t(new s2() { // from class: io.sentry.g0
                @Override // io.sentry.s2
                public final void a(r2 r2Var) {
                    r2Var.O(w0.this);
                }
            });
        }
        return w0Var;
    }

    private static void n0(@m8.g SentryOptions sentryOptions) {
        io.sentry.util.l.c(sentryOptions, "SentryOptions is required.");
        if (sentryOptions.getDsn() == null || sentryOptions.getDsn().isEmpty()) {
            throw new IllegalArgumentException("Hub requires a DSN to be instantiated. Considering using the NoOpHub if no DSN is available.");
        }
    }

    @Override // io.sentry.n0
    @m8.g
    public SentryOptions A() {
        return this.f83255d.a().b();
    }

    @Override // io.sentry.n0
    public void B() {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'clearBreadcrumbs' call is a no-op.", new Object[0]);
        } else {
            this.f83255d.a().c().g();
        }
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
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'traceHeaders' call is a no-op.", new Object[0]);
        } else {
            v0 u9 = this.f83255d.a().c().u();
            if (u9 != null && !u9.e()) {
                return u9.d();
            }
        }
        return null;
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
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'endSession' call is a no-op.", new Object[0]);
            return;
        }
        i5.a a10 = this.f83255d.a();
        Session j4 = a10.c().j();
        if (j4 != null) {
            a10.a().r(j4, io.sentry.util.h.e(new io.sentry.hints.j()));
        }
    }

    @Override // io.sentry.n0
    public void I(@m8.h SentryLevel sentryLevel) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'setLevel' call is a no-op.", new Object[0]);
        } else {
            this.f83255d.a().c().L(sentryLevel);
        }
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n J() {
        return this.f83252a;
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n K(h4 h4Var, s2 s2Var) {
        return m0.f(this, h4Var, s2Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 L(p5 p5Var) {
        return m0.n(this, p5Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 M(String str, String str2) {
        return m0.q(this, str, str2);
    }

    @Override // io.sentry.n0
    @a.c
    @m8.g
    public w0 N(@m8.g p5 p5Var, @m8.g r5 r5Var) {
        return k0(p5Var, r5Var.a(), r5Var.e(), r5Var.c(), r5Var.g(), r5Var.b(), r5Var.f(), r5Var.d());
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n O(Throwable th, s2 s2Var) {
        return m0.h(this, th, s2Var);
    }

    @Override // io.sentry.n0
    public void P(@m8.g s0 s0Var) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'bindClient' call is a no-op.", new Object[0]);
            return;
        }
        i5.a a10 = this.f83255d.a();
        if (s0Var != null) {
            this.f83253b.getLogger().c(SentryLevel.DEBUG, "New client bound to scope.", new Object[0]);
            a10.d(s0Var);
            return;
        }
        this.f83253b.getLogger().c(SentryLevel.DEBUG, "NoOp client bound to scope.", new Object[0]);
        a10.d(v1.v());
    }

    @Override // io.sentry.n0
    @m8.h
    public Boolean Q() {
        return i3.a().b(this.f83253b.getCacheDirPath(), !this.f83253b.isEnableAutoSessionTracking());
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 R(p5 p5Var, boolean z9) {
        return m0.p(this, p5Var, z9);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n S(@m8.g h4 h4Var, @m8.h b0 b0Var, @m8.g s2 s2Var) {
        return g0(h4Var, b0Var, s2Var);
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
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'withScope' call is a no-op.", new Object[0]);
            return;
        }
        w();
        try {
            s2Var.a(this.f83255d.a().c());
        } catch (Throwable th) {
            this.f83253b.getLogger().b(SentryLevel.ERROR, "Error in the 'withScope' callback.", th);
        }
        z();
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n W(@m8.g String str, @m8.g SentryLevel sentryLevel, @m8.g s2 s2Var) {
        return i0(str, sentryLevel, s2Var);
    }

    @Override // io.sentry.n0
    public void X(@m8.h String str) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'setTransaction' call is a no-op.", new Object[0]);
        } else if (str != null) {
            this.f83255d.a().c().P(str);
        } else {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Transaction cannot be null", new Object[0]);
        }
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
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'setTag' call is a no-op.", new Object[0]);
        } else if (str != null && str2 != null) {
            this.f83255d.a().c().N(str, str2);
        } else {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "setTag called with null parameter.", new Object[0]);
        }
    }

    @Override // io.sentry.n0
    @a.c
    @m8.g
    public io.sentry.protocol.n a0(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h b0 b0Var, @m8.h m2 m2Var) {
        io.sentry.util.l.c(uVar, "transaction is required");
        io.sentry.protocol.n nVar = io.sentry.protocol.n.f83769b;
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureTransaction' call is a no-op.", new Object[0]);
            return nVar;
        } else if (!uVar.C0()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Transaction: %s is not finished and this 'captureTransaction' call is a no-op.", uVar.I());
            return nVar;
        } else if (!Boolean.TRUE.equals(Boolean.valueOf(uVar.D0()))) {
            this.f83253b.getLogger().c(SentryLevel.DEBUG, "Transaction %s was dropped due to sampling decision.", uVar.I());
            this.f83253b.getClientReportRecorder().a(DiscardReason.SAMPLE_RATE, DataCategory.Transaction);
            return nVar;
        } else {
            try {
                i5.a a10 = this.f83255d.a();
                return a10.a().t(uVar, m5Var, a10.c(), b0Var, m2Var);
            } catch (Throwable th) {
                o0 logger = this.f83253b.getLogger();
                SentryLevel sentryLevel = SentryLevel.ERROR;
                logger.b(sentryLevel, "Error while capturing transaction with id: " + uVar.I(), th);
                return nVar;
            }
        }
    }

    @Override // io.sentry.n0
    public void b(@m8.g String str) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'removeExtra' call is a no-op.", new Object[0]);
        } else if (str == null) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "removeExtra called with null parameter.", new Object[0]);
        } else {
            this.f83255d.a().c().A(str);
        }
    }

    @Override // io.sentry.n0
    public void b0() {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'startSession' call is a no-op.", new Object[0]);
            return;
        }
        i5.a a10 = this.f83255d.a();
        r2.c R = a10.c().R();
        if (R != null) {
            if (R.b() != null) {
                a10.a().r(R.b(), io.sentry.util.h.e(new io.sentry.hints.j()));
            }
            a10.a().r(R.a(), io.sentry.util.h.e(new io.sentry.hints.l()));
            return;
        }
        this.f83253b.getLogger().c(SentryLevel.WARNING, "Session could not be started.", new Object[0]);
    }

    @Override // io.sentry.n0
    public void c(@m8.g String str) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'removeTag' call is a no-op.", new Object[0]);
        } else if (str == null) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "removeTag called with null parameter.", new Object[0]);
        } else {
            this.f83255d.a().c().B(str);
        }
    }

    @Override // io.sentry.n0
    public /* synthetic */ w0 c0(String str, String str2, boolean z9) {
        return m0.t(this, str, str2, z9);
    }

    @Override // io.sentry.n0
    public void close() {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'close' call is a no-op.", new Object[0]);
            return;
        }
        try {
            for (z0 z0Var : this.f83253b.getIntegrations()) {
                if (z0Var instanceof Closeable) {
                    ((Closeable) z0Var).close();
                }
            }
            this.f83253b.getExecutorService().a(this.f83253b.getShutdownTimeoutMillis());
            this.f83255d.a().a().close();
        } catch (Throwable th) {
            this.f83253b.getLogger().b(SentryLevel.ERROR, "Error while closing the Hub.", th);
        }
        this.f83254c = false;
    }

    @Override // io.sentry.n0
    public void d(@m8.g String str, @m8.g String str2) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'setExtra' call is a no-op.", new Object[0]);
        } else if (str != null && str2 != null) {
            this.f83255d.a().c().J(str, str2);
        } else {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "setExtra called with null parameter.", new Object[0]);
        }
    }

    @Override // io.sentry.n0
    public void e(long j4) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'flush' call is a no-op.", new Object[0]);
            return;
        }
        try {
            this.f83255d.a().a().e(j4);
        } catch (Throwable th) {
            this.f83253b.getLogger().b(SentryLevel.ERROR, "Error in the 'client.flush'.", th);
        }
    }

    @Override // io.sentry.n0
    public void f(@m8.h io.sentry.protocol.w wVar) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'setUser' call is a no-op.", new Object[0]);
        } else {
            this.f83255d.a().c().Q(wVar);
        }
    }

    @Override // io.sentry.n0
    public /* synthetic */ void g(f fVar) {
        m0.a(this, fVar);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n h(@m8.g String str, @m8.g SentryLevel sentryLevel) {
        return i0(str, sentryLevel, null);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n i(l3 l3Var) {
        return m0.d(this, l3Var);
    }

    @Override // io.sentry.n0
    public boolean isEnabled() {
        return this.f83254c;
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n j(@m8.g h4 h4Var, @m8.h b0 b0Var) {
        return g0(h4Var, b0Var, null);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n k(h4 h4Var) {
        return m0.e(this, h4Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n l(io.sentry.protocol.u uVar, m5 m5Var) {
        return m0.l(this, uVar, m5Var);
    }

    @m8.h
    f5 l0(@m8.g Throwable th) {
        WeakReference<v0> a10;
        v0 v0Var;
        io.sentry.util.l.c(th, "throwable is required");
        io.sentry.util.m<WeakReference<v0>, String> mVar = this.f83257f.get(io.sentry.util.b.a(th));
        if (mVar == null || (a10 = mVar.a()) == null || (v0Var = a10.get()) == null) {
            return null;
        }
        return v0Var.E();
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n m(Throwable th) {
        return m0.g(this, th);
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n n(@m8.g Throwable th, @m8.h b0 b0Var) {
        return h0(th, b0Var, null);
    }

    @Override // io.sentry.n0
    @a.c
    @m8.g
    public io.sentry.protocol.n o(@m8.g l3 l3Var, @m8.h b0 b0Var) {
        io.sentry.util.l.c(l3Var, "SentryEnvelope is required.");
        io.sentry.protocol.n nVar = io.sentry.protocol.n.f83769b;
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureEnvelope' call is a no-op.", new Object[0]);
            return nVar;
        }
        try {
            io.sentry.protocol.n o9 = this.f83255d.a().a().o(l3Var, b0Var);
            return o9 != null ? o9 : nVar;
        } catch (Throwable th) {
            this.f83253b.getLogger().b(SentryLevel.ERROR, "Error while capturing envelope.", th);
            return nVar;
        }
    }

    @Override // io.sentry.n0
    public void p(@m8.g w5 w5Var) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureUserFeedback' call is a no-op.", new Object[0]);
            return;
        }
        try {
            this.f83255d.a().a().p(w5Var);
        } catch (Throwable th) {
            o0 logger = this.f83253b.getLogger();
            SentryLevel sentryLevel = SentryLevel.ERROR;
            logger.b(sentryLevel, "Error while capturing captureUserFeedback: " + w5Var.toString(), th);
        }
    }

    @Override // io.sentry.n0
    @m8.g
    public io.sentry.protocol.n q(@m8.g Throwable th, @m8.h b0 b0Var, @m8.g s2 s2Var) {
        return h0(th, b0Var, s2Var);
    }

    @Override // io.sentry.n0
    public /* synthetic */ io.sentry.protocol.n r(io.sentry.protocol.u uVar, m5 m5Var, b0 b0Var) {
        return m0.m(this, uVar, m5Var, b0Var);
    }

    @Override // io.sentry.n0
    public void s(@m8.g f fVar, @m8.h b0 b0Var) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'addBreadcrumb' call is a no-op.", new Object[0]);
        } else if (fVar == null) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "addBreadcrumb called with null parameter.", new Object[0]);
        } else {
            this.f83255d.a().c().c(fVar, b0Var);
        }
    }

    @Override // io.sentry.n0
    public void t(@m8.g s2 s2Var) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            return;
        }
        try {
            s2Var.a(this.f83255d.a().c());
        } catch (Throwable th) {
            this.f83253b.getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th);
        }
    }

    @Override // io.sentry.n0
    @m8.h
    public v0 u() {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'getSpan' call is a no-op.", new Object[0]);
            return null;
        }
        return this.f83255d.a().c().u();
    }

    @Override // io.sentry.n0
    @m8.g
    public w0 v(@m8.g p5 p5Var, @m8.h j jVar, boolean z9) {
        return k0(p5Var, jVar, z9, null, false, null, false, null);
    }

    @Override // io.sentry.n0
    public void w() {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'pushScope' call is a no-op.", new Object[0]);
            return;
        }
        i5.a a10 = this.f83255d.a();
        this.f83255d.c(new i5.a(this.f83253b, a10.a(), new r2(a10.c())));
    }

    @Override // io.sentry.n0
    public void x(@m8.g List<String> list) {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'setFingerprint' call is a no-op.", new Object[0]);
        } else if (list == null) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "setFingerprint called with null parameter.", new Object[0]);
        } else {
            this.f83255d.a().c().K(list);
        }
    }

    @Override // io.sentry.n0
    @a.c
    public void y(@m8.g Throwable th, @m8.g v0 v0Var, @m8.g String str) {
        io.sentry.util.l.c(th, "throwable is required");
        io.sentry.util.l.c(v0Var, "span is required");
        io.sentry.util.l.c(str, "transactionName is required");
        Throwable a10 = io.sentry.util.b.a(th);
        if (this.f83257f.containsKey(a10)) {
            return;
        }
        this.f83257f.put(a10, new io.sentry.util.m<>(new WeakReference(v0Var), str));
    }

    @Override // io.sentry.n0
    public void z() {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'popScope' call is a no-op.", new Object[0]);
        } else {
            this.f83255d.b();
        }
    }

    private h0(@m8.g SentryOptions sentryOptions, @m8.g i5 i5Var) {
        this.f83257f = Collections.synchronizedMap(new WeakHashMap());
        n0(sentryOptions);
        this.f83253b = sentryOptions;
        this.f83256e = new n5(sentryOptions);
        this.f83255d = i5Var;
        this.f83252a = io.sentry.protocol.n.f83769b;
        this.f83258g = sentryOptions.getTransactionPerformanceCollector();
        this.f83254c = true;
    }

    @Override // io.sentry.n0
    @m8.g
    public n0 clone() {
        if (!isEnabled()) {
            this.f83253b.getLogger().c(SentryLevel.WARNING, "Disabled Hub cloned.", new Object[0]);
        }
        return new h0(this.f83253b, new i5(this.f83255d));
    }

    private h0(@m8.g SentryOptions sentryOptions, @m8.g i5.a aVar) {
        this(sentryOptions, new i5(sentryOptions.getLogger(), aVar));
    }
}
