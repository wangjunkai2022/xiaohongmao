package io.sentry;

import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.clientreport.DiscardReason;
import io.sentry.exception.SentryEnvelopeException;
import io.sentry.protocol.Contexts;
import io.sentry.r2;
import java.io.Closeable;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import m8.a;

/* compiled from: SentryClient.java */
/* loaded from: classes4.dex */
public final class h3 implements s0 {

    /* renamed from: f  reason: collision with root package name */
    static final String f83267f = "7";
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final SentryOptions f83269b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final io.sentry.transport.q f83270c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private final SecureRandom f83271d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final b f83272e = new b();

    /* renamed from: a  reason: collision with root package name */
    private boolean f83268a = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SentryClient.java */
    /* loaded from: classes4.dex */
    public static final class b implements Comparator<f> {
        private b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(@m8.g f fVar, @m8.g f fVar2) {
            return fVar.m().compareTo(fVar2.m());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h3(@m8.g SentryOptions sentryOptions) {
        this.f83269b = (SentryOptions) io.sentry.util.l.c(sentryOptions, "SentryOptions is required.");
        y0 transportFactory = sentryOptions.getTransportFactory();
        if (transportFactory instanceof f2) {
            transportFactory = new io.sentry.a();
            sentryOptions.setTransportFactory(transportFactory);
        }
        this.f83270c = transportFactory.a(sentryOptions, new p2(sentryOptions).a());
        this.f83271d = sentryOptions.getSampleRate() != null ? new SecureRandom() : null;
    }

    @m8.h
    private l3 A(@m8.h e3 e3Var, @m8.h List<io.sentry.b> list, @m8.h Session session, @m8.h m5 m5Var, @m8.h m2 m2Var) throws IOException, SentryEnvelopeException {
        io.sentry.protocol.n nVar;
        ArrayList arrayList = new ArrayList();
        if (e3Var != null) {
            arrayList.add(f4.v(this.f83269b.getSerializer(), e3Var));
            nVar = e3Var.I();
        } else {
            nVar = null;
        }
        if (session != null) {
            arrayList.add(f4.x(this.f83269b.getSerializer(), session));
        }
        if (m2Var != null) {
            arrayList.add(f4.w(m2Var, this.f83269b.getMaxTraceFileSize(), this.f83269b.getSerializer()));
            if (nVar == null) {
                nVar = new io.sentry.protocol.n(m2Var.P());
            }
        }
        if (list != null) {
            for (io.sentry.b bVar : list) {
                arrayList.add(f4.t(this.f83269b.getSerializer(), this.f83269b.getLogger(), bVar, this.f83269b.getMaxAttachmentSize()));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new l3(new m3(nVar, this.f83269b.getSdkVersion(), m5Var), arrayList);
    }

    @m8.g
    private l3 B(@m8.g w5 w5Var) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(f4.y(this.f83269b.getSerializer(), w5Var));
        return new l3(new m3(w5Var.c(), this.f83269b.getSdkVersion()), arrayList);
    }

    @m8.h
    private h4 C(@m8.g h4 h4Var, @m8.g b0 b0Var) {
        SentryOptions.b beforeSend = this.f83269b.getBeforeSend();
        if (beforeSend != null) {
            try {
                return beforeSend.a(h4Var, b0Var);
            } catch (Throwable th) {
                this.f83269b.getLogger().b(SentryLevel.ERROR, "The BeforeSend callback threw an exception. It will be added as breadcrumb and continue.", th);
                f fVar = new f();
                fVar.x("BeforeSend callback failed.");
                fVar.u("SentryClient");
                fVar.w(SentryLevel.ERROR);
                if (th.getMessage() != null) {
                    fVar.v("sentry:message", th.getMessage());
                }
                h4Var.B(fVar);
                return h4Var;
            }
        }
        return h4Var;
    }

    @m8.h
    private io.sentry.protocol.u D(@m8.g io.sentry.protocol.u uVar, @m8.g b0 b0Var) {
        SentryOptions.c beforeSendTransaction = this.f83269b.getBeforeSendTransaction();
        if (beforeSendTransaction != null) {
            try {
                return beforeSendTransaction.a(uVar, b0Var);
            } catch (Throwable th) {
                this.f83269b.getLogger().b(SentryLevel.ERROR, "The BeforeSendTransaction callback threw an exception. It will be added as breadcrumb and continue.", th);
                f fVar = new f();
                fVar.x("BeforeSendTransaction callback failed.");
                fVar.u("SentryClient");
                fVar.w(SentryLevel.ERROR);
                if (th.getMessage() != null) {
                    fVar.v("sentry:message", th.getMessage());
                }
                uVar.B(fVar);
                return uVar;
            }
        }
        return uVar;
    }

    @m8.h
    private List<io.sentry.b> E(@m8.h List<io.sentry.b> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (io.sentry.b bVar : list) {
            if (bVar.i()) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    @m8.h
    private List<io.sentry.b> F(@m8.g b0 b0Var) {
        List<io.sentry.b> g4 = b0Var.g();
        io.sentry.b h4 = b0Var.h();
        if (h4 != null) {
            g4.add(h4);
        }
        io.sentry.b i4 = b0Var.i();
        if (i4 != null) {
            g4.add(i4);
        }
        return g4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G(Session session) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(h4 h4Var, b0 b0Var, Session session) {
        boolean z9 = false;
        if (session != null) {
            String str = null;
            Session.State state = h4Var.G0() ? Session.State.Crashed : null;
            z9 = (Session.State.Crashed == state || h4Var.H0()) ? true : true;
            String str2 = (h4Var.N() == null || h4Var.N().p() == null || !h4Var.N().p().containsKey("user-agent")) ? null : h4Var.N().p().get("user-agent");
            Object f10 = io.sentry.util.h.f(b0Var);
            if (f10 instanceof io.sentry.hints.b) {
                str = ((io.sentry.hints.b) f10).b();
                state = Session.State.Abnormal;
            }
            if (session.v(state, str2, z9, str) && io.sentry.util.h.g(b0Var, io.sentry.hints.e.class)) {
                session.c();
                return;
            }
            return;
        }
        this.f83269b.getLogger().c(SentryLevel.INFO, "Session is null on scope.withSession", new Object[0]);
    }

    @m8.h
    private h4 I(@m8.g h4 h4Var, @m8.g b0 b0Var, @m8.g List<z> list) {
        Iterator<z> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            z next = it.next();
            try {
                h4Var = next.a(h4Var, b0Var);
                continue;
            } catch (Throwable th) {
                this.f83269b.getLogger().a(SentryLevel.ERROR, th, "An exception occurred while processing event by processor: %s", next.getClass().getName());
                continue;
            }
            if (h4Var == null) {
                this.f83269b.getLogger().c(SentryLevel.DEBUG, "Event was dropped by a processor: %s", next.getClass().getName());
                this.f83269b.getClientReportRecorder().a(DiscardReason.EVENT_PROCESSOR, DataCategory.Error);
                break;
            }
        }
        return h4Var;
    }

    @m8.h
    private io.sentry.protocol.u J(@m8.g io.sentry.protocol.u uVar, @m8.g b0 b0Var, @m8.g List<z> list) {
        Iterator<z> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            z next = it.next();
            try {
                uVar = next.b(uVar, b0Var);
                continue;
            } catch (Throwable th) {
                this.f83269b.getLogger().a(SentryLevel.ERROR, th, "An exception occurred while processing transaction by processor: %s", next.getClass().getName());
                continue;
            }
            if (uVar == null) {
                this.f83269b.getLogger().c(SentryLevel.DEBUG, "Transaction was dropped by a processor: %s", next.getClass().getName());
                this.f83269b.getClientReportRecorder().a(DiscardReason.EVENT_PROCESSOR, DataCategory.Transaction);
                break;
            }
        }
        return uVar;
    }

    private boolean K() {
        return this.f83269b.getSampleRate() == null || this.f83271d == null || this.f83269b.getSampleRate().doubleValue() >= this.f83271d.nextDouble();
    }

    private boolean L(@m8.g e3 e3Var, @m8.g b0 b0Var) {
        if (io.sentry.util.h.s(b0Var)) {
            return true;
        }
        this.f83269b.getLogger().c(SentryLevel.DEBUG, "Event was cached so not applying scope: %s", e3Var.I());
        return false;
    }

    private boolean M(@m8.h Session session, @m8.h Session session2) {
        if (session2 == null) {
            return false;
        }
        if (session == null) {
            return true;
        }
        Session.State q9 = session2.q();
        Session.State state = Session.State.Crashed;
        if (q9 == state && session.q() != state) {
            return true;
        }
        return session2.e() > 0 && session.e() <= 0;
    }

    private void N(@m8.g e3 e3Var, @m8.g Collection<f> collection) {
        List<f> D = e3Var.D();
        if (D == null || collection.isEmpty()) {
            return;
        }
        D.addAll(collection);
        Collections.sort(D, this.f83272e);
    }

    private void x(@m8.h r2 r2Var, @m8.g b0 b0Var) {
        if (r2Var != null) {
            b0Var.b(r2Var.l());
        }
    }

    @m8.g
    private <T extends e3> T y(@m8.g T t9, @m8.h r2 r2Var) {
        if (r2Var != null) {
            if (t9.N() == null) {
                t9.g0(r2Var.s());
            }
            if (t9.U() == null) {
                t9.m0(r2Var.y());
            }
            if (t9.R() == null) {
                t9.k0(new HashMap(r2Var.v()));
            } else {
                for (Map.Entry<String, String> entry : r2Var.v().entrySet()) {
                    if (!t9.R().containsKey(entry.getKey())) {
                        t9.R().put(entry.getKey(), entry.getValue());
                    }
                }
            }
            if (t9.D() == null) {
                t9.X(new ArrayList(r2Var.m()));
            } else {
                N(t9, r2Var.m());
            }
            if (t9.K() == null) {
                t9.d0(new HashMap(r2Var.p()));
            } else {
                for (Map.Entry<String, Object> entry2 : r2Var.p().entrySet()) {
                    if (!t9.K().containsKey(entry2.getKey())) {
                        t9.K().put(entry2.getKey(), entry2.getValue());
                    }
                }
            }
            Contexts E = t9.E();
            for (Map.Entry<String, Object> entry3 : new Contexts(r2Var.n()).entrySet()) {
                if (!E.containsKey(entry3.getKey())) {
                    E.put(entry3.getKey(), entry3.getValue());
                }
            }
        }
        return t9;
    }

    @m8.h
    private h4 z(@m8.g h4 h4Var, @m8.h r2 r2Var, @m8.g b0 b0Var) {
        if (r2Var != null) {
            y(h4Var, r2Var);
            if (h4Var.F0() == null) {
                h4Var.R0(r2Var.x());
            }
            if (h4Var.x0() == null) {
                h4Var.K0(r2Var.q());
            }
            if (r2Var.r() != null) {
                h4Var.L0(r2Var.r());
            }
            v0 u9 = r2Var.u();
            if (h4Var.E().getTrace() == null && u9 != null) {
                h4Var.E().setTrace(u9.E());
            }
            return I(h4Var, b0Var, r2Var.o());
        }
        return h4Var;
    }

    @m8.h
    @m8.k
    Session O(@m8.g final h4 h4Var, @m8.g final b0 b0Var, @m8.h r2 r2Var) {
        if (io.sentry.util.h.s(b0Var)) {
            if (r2Var != null) {
                return r2Var.S(new r2.a() { // from class: io.sentry.f3
                    @Override // io.sentry.r2.a
                    public final void a(Session session) {
                        h3.this.H(h4Var, b0Var, session);
                    }
                });
            }
            this.f83269b.getLogger().c(SentryLevel.INFO, "Scope is null on client.captureEvent", new Object[0]);
        }
        return null;
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n a(io.sentry.protocol.u uVar, m5 m5Var, r2 r2Var, b0 b0Var) {
        return r0.o(this, uVar, m5Var, r2Var, b0Var);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n b(h4 h4Var, r2 r2Var) {
        return r0.d(this, h4Var, r2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0126 A[Catch: SentryEnvelopeException -> 0x011a, IOException -> 0x011c, TryCatch #2 {SentryEnvelopeException -> 0x011a, IOException -> 0x011c, blocks: (B:47:0x010a, B:49:0x0110, B:59:0x0126, B:60:0x012a, B:62:0x0136), top: B:66:0x010a }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0136 A[Catch: SentryEnvelopeException -> 0x011a, IOException -> 0x011c, TRY_LEAVE, TryCatch #2 {SentryEnvelopeException -> 0x011a, IOException -> 0x011c, blocks: (B:47:0x010a, B:49:0x0110, B:59:0x0126, B:60:0x012a, B:62:0x0136), top: B:66:0x010a }] */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    @Override // io.sentry.s0
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public io.sentry.protocol.n c(@m8.g io.sentry.h4 r13, @m8.h io.sentry.r2 r14, @m8.h io.sentry.b0 r15) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.h3.c(io.sentry.h4, io.sentry.r2, io.sentry.b0):io.sentry.protocol.n");
    }

    @Override // io.sentry.s0
    public void close() {
        this.f83269b.getLogger().c(SentryLevel.INFO, "Closing SentryClient.", new Object[0]);
        try {
            e(this.f83269b.getShutdownTimeoutMillis());
            this.f83270c.close();
        } catch (IOException e4) {
            this.f83269b.getLogger().b(SentryLevel.WARNING, "Failed to close the connection to the Sentry Server.", e4);
        }
        for (z zVar : this.f83269b.getEventProcessors()) {
            if (zVar instanceof Closeable) {
                try {
                    ((Closeable) zVar).close();
                } catch (IOException e10) {
                    this.f83269b.getLogger().c(SentryLevel.WARNING, "Failed to close the event processor {}.", zVar, e10);
                }
            }
        }
        this.f83268a = false;
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n d(Throwable th, r2 r2Var, b0 b0Var) {
        return r0.h(this, th, r2Var, b0Var);
    }

    @Override // io.sentry.s0
    public void e(long j4) {
        this.f83270c.e(j4);
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
        return this.f83268a;
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
    @a.c
    @m8.g
    public io.sentry.protocol.n o(@m8.g l3 l3Var, @m8.h b0 b0Var) {
        io.sentry.util.l.c(l3Var, "SentryEnvelope is required.");
        if (b0Var == null) {
            b0Var = new b0();
        }
        try {
            b0Var.c();
            this.f83270c.w(l3Var, b0Var);
            io.sentry.protocol.n a10 = l3Var.d().a();
            return a10 != null ? a10 : io.sentry.protocol.n.f83769b;
        } catch (IOException e4) {
            this.f83269b.getLogger().b(SentryLevel.ERROR, "Failed to capture envelope.", e4);
            return io.sentry.protocol.n.f83769b;
        }
    }

    @Override // io.sentry.s0
    public void p(@m8.g w5 w5Var) {
        io.sentry.util.l.c(w5Var, "SentryEvent is required.");
        if (io.sentry.protocol.n.f83769b.equals(w5Var.c())) {
            this.f83269b.getLogger().c(SentryLevel.WARNING, "Capturing userFeedback without a Sentry Id.", new Object[0]);
            return;
        }
        this.f83269b.getLogger().c(SentryLevel.DEBUG, "Capturing userFeedback: %s", w5Var.c());
        try {
            this.f83270c.j0(B(w5Var));
        } catch (IOException e4) {
            this.f83269b.getLogger().a(SentryLevel.WARNING, e4, "Capturing user feedback %s failed.", w5Var.c());
        }
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n q(io.sentry.protocol.u uVar, r2 r2Var, b0 b0Var) {
        return r0.m(this, uVar, r2Var, b0Var);
    }

    @Override // io.sentry.s0
    @a.c
    public void r(@m8.g Session session, @m8.h b0 b0Var) {
        io.sentry.util.l.c(session, "Session is required.");
        if (session.l() != null && !session.l().isEmpty()) {
            try {
                o(l3.c(this.f83269b.getSerializer(), session, this.f83269b.getSdkVersion()), b0Var);
                return;
            } catch (IOException e4) {
                this.f83269b.getLogger().b(SentryLevel.ERROR, "Failed to capture session.", e4);
                return;
            }
        }
        this.f83269b.getLogger().c(SentryLevel.WARNING, "Sessions can't be captured without setting a release.", new Object[0]);
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n s(Throwable th, r2 r2Var) {
        return r0.g(this, th, r2Var);
    }

    @Override // io.sentry.s0
    @m8.g
    public io.sentry.protocol.n t(@m8.g io.sentry.protocol.u uVar, @m8.h m5 m5Var, @m8.h r2 r2Var, @m8.h b0 b0Var, @m8.h m2 m2Var) {
        io.sentry.protocol.u uVar2 = uVar;
        io.sentry.util.l.c(uVar, "Transaction is required.");
        b0 b0Var2 = b0Var == null ? new b0() : b0Var;
        if (L(uVar, b0Var2)) {
            x(r2Var, b0Var2);
        }
        o0 logger = this.f83269b.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "Capturing transaction: %s", uVar.I());
        io.sentry.protocol.n nVar = io.sentry.protocol.n.f83769b;
        io.sentry.protocol.n I = uVar.I() != null ? uVar.I() : nVar;
        if (L(uVar, b0Var2)) {
            uVar2 = (io.sentry.protocol.u) y(uVar, r2Var);
            if (uVar2 != null && r2Var != null) {
                uVar2 = J(uVar2, b0Var2, r2Var.o());
            }
            if (uVar2 == null) {
                this.f83269b.getLogger().c(sentryLevel, "Transaction was dropped by applyScope", new Object[0]);
            }
        }
        if (uVar2 != null) {
            uVar2 = J(uVar2, b0Var2, this.f83269b.getEventProcessors());
        }
        if (uVar2 == null) {
            this.f83269b.getLogger().c(sentryLevel, "Transaction was dropped by Event processors.", new Object[0]);
            return nVar;
        }
        io.sentry.protocol.u D = D(uVar2, b0Var2);
        if (D == null) {
            this.f83269b.getLogger().c(sentryLevel, "Transaction was dropped by beforeSendTransaction.", new Object[0]);
            this.f83269b.getClientReportRecorder().a(DiscardReason.BEFORE_SEND, DataCategory.Transaction);
            return nVar;
        }
        try {
            l3 A = A(D, E(F(b0Var2)), null, m5Var, m2Var);
            b0Var2.c();
            if (A != null) {
                this.f83270c.w(A, b0Var2);
                return I;
            }
            return nVar;
        } catch (SentryEnvelopeException | IOException e4) {
            this.f83269b.getLogger().a(SentryLevel.WARNING, e4, "Capturing transaction %s failed.", I);
            return io.sentry.protocol.n.f83769b;
        }
    }

    @Override // io.sentry.s0
    public /* synthetic */ io.sentry.protocol.n u(String str, SentryLevel sentryLevel, r2 r2Var) {
        return r0.j(this, str, sentryLevel, r2Var);
    }
}
