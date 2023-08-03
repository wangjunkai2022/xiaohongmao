package io.sentry;

import io.sentry.protocol.Contexts;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.r2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import m8.a;

/* compiled from: SentryTracer.java */
@a.c
/* loaded from: classes4.dex */
public final class a5 implements w0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.n f81883a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final e5 f81884b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final List<e5> f81885c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final n0 f81886d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private String f81887e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f81888f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private b f81889g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private final q5 f81890h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f81891i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private final Long f81892j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private volatile TimerTask f81893k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private volatile Timer f81894l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final Object f81895m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final c f81896n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final AtomicBoolean f81897o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final d f81898p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private TransactionNameSource f81899q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final Map<String, io.sentry.protocol.e> f81900r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final Instrumenter f81901s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final Contexts f81902t;
    @m8.h

    /* renamed from: u  reason: collision with root package name */
    private final s5 f81903u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SentryTracer.java */
    /* loaded from: classes4.dex */
    public class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            SpanStatus status = a5.this.getStatus();
            a5 a5Var = a5.this;
            if (status == null) {
                status = SpanStatus.OK;
            }
            a5Var.t(status);
            a5.this.f81897o.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SentryTracer.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: c  reason: collision with root package name */
        static final b f81905c = d();

        /* renamed from: a  reason: collision with root package name */
        private final boolean f81906a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private final SpanStatus f81907b;

        private b(boolean z9, @m8.h SpanStatus spanStatus) {
            this.f81906a = z9;
            this.f81907b = spanStatus;
        }

        @m8.g
        static b c(@m8.h SpanStatus spanStatus) {
            return new b(true, spanStatus);
        }

        @m8.g
        private static b d() {
            return new b(false, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SentryTracer.java */
    /* loaded from: classes4.dex */
    public static final class c implements Comparator<e5> {
        private c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(@m8.g e5 e5Var, @m8.g e5 e5Var2) {
            j3 L = e5Var.L();
            j3 L2 = e5Var2.L();
            if (L == null) {
                return -1;
            }
            if (L2 == null) {
                return 1;
            }
            return L.compareTo(L2);
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    public a5(@m8.g p5 p5Var, @m8.g n0 n0Var) {
        this(p5Var, n0Var, null, false, null, false, null);
    }

    private void P() {
        synchronized (this.f81895m) {
            if (this.f81893k != null) {
                this.f81893k.cancel();
                this.f81897o.set(false);
                this.f81893k = null;
            }
        }
    }

    @m8.g
    private v0 Q(@m8.g h5 h5Var, @m8.g String str) {
        return R(h5Var, str, null, null, Instrumenter.SENTRY);
    }

    @m8.g
    private v0 R(@m8.g h5 h5Var, @m8.g String str, @m8.h String str2, @m8.h j3 j3Var, @m8.g Instrumenter instrumenter) {
        if (this.f81884b.b()) {
            return b2.K();
        }
        if (!this.f81901s.equals(instrumenter)) {
            return b2.K();
        }
        io.sentry.util.l.c(h5Var, "parentSpanId is required");
        io.sentry.util.l.c(str, "operation is required");
        P();
        e5 e5Var = new e5(this.f81884b.Q(), h5Var, this, str, this.f81886d, j3Var, new g5() { // from class: io.sentry.z4
            @Override // io.sentry.g5
            public final void a(e5 e5Var2) {
                a5.this.d0(e5Var2);
            }
        });
        e5Var.k(str2);
        this.f81885c.add(e5Var);
        return e5Var;
    }

    @m8.g
    private v0 S(@m8.g String str, @m8.h String str2, @m8.h j3 j3Var, @m8.g Instrumenter instrumenter) {
        if (this.f81884b.b()) {
            return b2.K();
        }
        if (!this.f81901s.equals(instrumenter)) {
            return b2.K();
        }
        if (this.f81885c.size() < this.f81886d.A().getMaxSpans()) {
            return this.f81884b.w(str, str2, j3Var, instrumenter);
        }
        this.f81886d.A().getLogger().c(SentryLevel.WARNING, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan.", str, str2);
        return b2.K();
    }

    private boolean b0() {
        ArrayList<e5> arrayList = new ArrayList(this.f81885c);
        if (arrayList.isEmpty()) {
            return true;
        }
        for (e5 e5Var : arrayList) {
            if (!e5Var.b()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(e5 e5Var) {
        b bVar = this.f81889g;
        if (this.f81892j != null) {
            if (!this.f81888f || b0()) {
                C();
            }
        } else if (bVar.f81906a) {
            t(bVar.f81907b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0(r2 r2Var, w0 w0Var) {
        if (w0Var == this) {
            r2Var.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(final r2 r2Var) {
        r2Var.T(new r2.b() { // from class: io.sentry.w4
            @Override // io.sentry.r2.b
            public final void a(w0 w0Var) {
                a5.this.e0(r2Var, w0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g0(AtomicReference atomicReference, r2 r2Var) {
        atomicReference.set(r2Var.y());
    }

    private void j0() {
        synchronized (this) {
            if (this.f81898p.w()) {
                final AtomicReference atomicReference = new AtomicReference();
                this.f81886d.t(new s2() { // from class: io.sentry.y4
                    @Override // io.sentry.s2
                    public final void a(r2 r2Var) {
                        a5.g0(atomicReference, r2Var);
                    }
                });
                this.f81898p.I(this, (io.sentry.protocol.w) atomicReference.get(), this.f81886d.A(), I());
                this.f81898p.c();
            }
        }
    }

    @Override // io.sentry.v0
    @m8.h
    public Object A(@m8.g String str) {
        return this.f81884b.A(str);
    }

    @Override // io.sentry.w0
    @a.c
    public void B(@m8.g String str, @m8.g Object obj) {
        this.f81902t.put(str, obj);
    }

    @Override // io.sentry.w0
    public void C() {
        synchronized (this.f81895m) {
            P();
            if (this.f81894l != null) {
                this.f81897o.set(true);
                this.f81893k = new a();
                this.f81894l.schedule(this.f81893k, this.f81892j.longValue());
            }
        }
    }

    @Override // io.sentry.w0
    public void D(@m8.g String str) {
        f(str, TransactionNameSource.CUSTOM);
    }

    @Override // io.sentry.v0
    @m8.g
    public f5 E() {
        return this.f81884b.E();
    }

    @Override // io.sentry.v0
    @m8.h
    public Throwable F() {
        return this.f81884b.F();
    }

    @Override // io.sentry.v0
    @a.c
    public void G(@m8.h SpanStatus spanStatus, @m8.h j3 j3Var) {
        j3 L;
        this.f81889g = b.c(spanStatus);
        if (this.f81884b.b()) {
            return;
        }
        if (!this.f81888f || b0()) {
            s5 s5Var = this.f81903u;
            k2 a10 = s5Var != null ? s5Var.a(this) : null;
            Boolean bool = Boolean.TRUE;
            m2 a11 = (bool.equals(g()) && bool.equals(j())) ? this.f81886d.A().getTransactionProfiler().a(this, a10) : null;
            j3 L2 = this.f81884b.L();
            if (j3Var == null) {
                j3Var = L2;
            }
            if (j3Var == null) {
                j3Var = this.f81886d.A().getDateProvider().now();
            }
            for (e5 e5Var : this.f81885c) {
                if (!e5Var.b()) {
                    e5Var.R(null);
                    e5Var.G(SpanStatus.DEADLINE_EXCEEDED, j3Var);
                }
            }
            if (!this.f81885c.isEmpty() && this.f81891i && (L = ((e5) Collections.max(this.f81885c, this.f81896n)).L()) != null && j3Var.compareTo(L) > 0) {
                j3Var = L;
            }
            this.f81884b.G(this.f81889g.f81907b, j3Var);
            this.f81886d.t(new s2() { // from class: io.sentry.x4
                @Override // io.sentry.s2
                public final void a(r2 r2Var) {
                    a5.this.f0(r2Var);
                }
            });
            io.sentry.protocol.u uVar = new io.sentry.protocol.u(this);
            q5 q5Var = this.f81890h;
            if (q5Var != null) {
                q5Var.a(this);
            }
            if (this.f81894l != null) {
                synchronized (this.f81895m) {
                    if (this.f81894l != null) {
                        this.f81894l.cancel();
                        this.f81894l = null;
                    }
                }
            }
            if (!this.f81885c.isEmpty() || this.f81892j == null) {
                uVar.u0().putAll(this.f81900r);
                this.f81886d.a0(uVar, q(), null, a11);
            }
        }
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 H(@m8.g String str, @m8.h String str2) {
        return S(str, str2, null, Instrumenter.SENTRY);
    }

    @Override // io.sentry.w0
    @m8.h
    public o5 I() {
        return this.f81884b.I();
    }

    @Override // io.sentry.v0
    public void J(@m8.g String str) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81884b.J(str);
    }

    @m8.g
    public List<e5> T() {
        return this.f81885c;
    }

    @m8.h
    public Map<String, Object> U() {
        return this.f81884b.K();
    }

    @m8.h
    public j3 V() {
        return this.f81884b.L();
    }

    @m8.g
    @m8.k
    Map<String, io.sentry.protocol.e> W() {
        return this.f81900r;
    }

    @m8.g
    e5 X() {
        return this.f81884b;
    }

    @m8.g
    public j3 Y() {
        return this.f81884b.O();
    }

    @m8.h
    @m8.k
    Timer Z() {
        return this.f81894l;
    }

    @Override // io.sentry.v0
    public void a(@m8.g String str, @m8.g String str2) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81884b.a(str, str2);
    }

    @m8.h
    @m8.k
    TimerTask a0() {
        return this.f81893k;
    }

    @Override // io.sentry.v0
    public boolean b() {
        return this.f81884b.b();
    }

    @Override // io.sentry.v0
    public void c(@m8.h SpanStatus spanStatus) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81884b.c(spanStatus);
    }

    @m8.g
    @m8.k
    AtomicBoolean c0() {
        return this.f81897o;
    }

    @Override // io.sentry.v0
    @m8.g
    public v4 d() {
        return this.f81884b.d();
    }

    @Override // io.sentry.v0
    public boolean e() {
        return false;
    }

    @Override // io.sentry.w0
    @a.c
    public void f(@m8.g String str, @m8.g TransactionNameSource transactionNameSource) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81887e = str;
        this.f81899q = transactionNameSource;
    }

    @Override // io.sentry.w0
    @m8.h
    public Boolean g() {
        return this.f81884b.g();
    }

    @Override // io.sentry.v0
    @m8.h
    public String getDescription() {
        return this.f81884b.getDescription();
    }

    @Override // io.sentry.w0
    @m8.g
    public String getName() {
        return this.f81887e;
    }

    @Override // io.sentry.v0
    @m8.h
    public SpanStatus getStatus() {
        return this.f81884b.getStatus();
    }

    @Override // io.sentry.v0
    public void h() {
        t(getStatus());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public v0 h0(@m8.g h5 h5Var, @m8.g String str, @m8.h String str2) {
        v0 Q = Q(h5Var, str);
        Q.k(str2);
        return Q;
    }

    @Override // io.sentry.v0
    @m8.h
    public String i(@m8.g String str) {
        return this.f81884b.i(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public v0 i0(@m8.g h5 h5Var, @m8.g String str, @m8.h String str2, @m8.h j3 j3Var, @m8.g Instrumenter instrumenter) {
        return R(h5Var, str, str2, j3Var, instrumenter);
    }

    @Override // io.sentry.w0
    @m8.h
    public Boolean j() {
        return this.f81884b.j();
    }

    @Override // io.sentry.v0
    public void k(@m8.h String str) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81884b.k(str);
    }

    @Override // io.sentry.w0
    @a.c
    @m8.g
    public Contexts l() {
        return this.f81902t;
    }

    @Override // io.sentry.w0
    @m8.g
    public io.sentry.protocol.n m() {
        return this.f81883a;
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 n(@m8.g String str) {
        return H(str, null);
    }

    @Override // io.sentry.v0
    public void o(@m8.g String str, @m8.g Number number) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81900r.put(str, new io.sentry.protocol.e(number, null));
    }

    @Override // io.sentry.w0
    @m8.g
    public TransactionNameSource p() {
        return this.f81899q;
    }

    @Override // io.sentry.v0
    @m8.h
    public m5 q() {
        if (this.f81886d.A().isTraceSampling()) {
            j0();
            return this.f81898p.K();
        }
        return null;
    }

    @Override // io.sentry.v0
    public void r(@m8.g String str, @m8.g Object obj) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81884b.r(str, obj);
    }

    @Override // io.sentry.v0
    public void s(@m8.h Throwable th) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81884b.s(th);
    }

    @Override // io.sentry.v0
    public void t(@m8.h SpanStatus spanStatus) {
        G(spanStatus, null);
    }

    @Override // io.sentry.v0
    @m8.g
    public String u() {
        return this.f81884b.u();
    }

    @Override // io.sentry.v0
    @m8.h
    public e v(@m8.h List<String> list) {
        if (this.f81886d.A().isTraceSampling()) {
            j0();
            return e.a(this.f81898p, list);
        }
        return null;
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 w(@m8.g String str, @m8.h String str2, @m8.h j3 j3Var, @m8.g Instrumenter instrumenter) {
        return S(str, str2, j3Var, instrumenter);
    }

    @Override // io.sentry.w0
    @m8.g
    public List<e5> x() {
        return this.f81885c;
    }

    @Override // io.sentry.v0
    public void y(@m8.g String str, @m8.g Number number, @m8.g MeasurementUnit measurementUnit) {
        if (this.f81884b.b()) {
            return;
        }
        this.f81900r.put(str, new io.sentry.protocol.e(number, measurementUnit.a()));
    }

    @Override // io.sentry.w0
    @m8.h
    public e5 z() {
        ArrayList arrayList = new ArrayList(this.f81885c);
        if (arrayList.isEmpty()) {
            return null;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!((e5) arrayList.get(size)).b()) {
                return (e5) arrayList.get(size);
            }
        }
        return null;
    }

    public a5(@m8.g p5 p5Var, @m8.g n0 n0Var, boolean z9, @m8.h q5 q5Var) {
        this(p5Var, n0Var, null, z9, null, false, q5Var);
    }

    a5(@m8.g p5 p5Var, @m8.g n0 n0Var, @m8.h j3 j3Var, boolean z9, @m8.h Long l10, boolean z10, @m8.h q5 q5Var) {
        this(p5Var, n0Var, j3Var, z9, l10, z10, q5Var, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a5(@m8.g p5 p5Var, @m8.g n0 n0Var, @m8.h j3 j3Var, boolean z9, @m8.h Long l10, boolean z10, @m8.h q5 q5Var, @m8.h s5 s5Var) {
        this.f81883a = new io.sentry.protocol.n();
        this.f81885c = new CopyOnWriteArrayList();
        this.f81889g = b.f81905c;
        this.f81894l = null;
        this.f81895m = new Object();
        this.f81896n = new c(null);
        this.f81897o = new AtomicBoolean(false);
        this.f81902t = new Contexts();
        io.sentry.util.l.c(p5Var, "context is required");
        io.sentry.util.l.c(n0Var, "hub is required");
        this.f81900r = new ConcurrentHashMap();
        this.f81884b = new e5(p5Var, this, n0Var, j3Var);
        this.f81887e = p5Var.w();
        this.f81901s = p5Var.v();
        this.f81886d = n0Var;
        this.f81888f = z9;
        this.f81892j = l10;
        this.f81891i = z10;
        this.f81890h = q5Var;
        this.f81903u = s5Var;
        this.f81899q = p5Var.z();
        if (p5Var.u() != null) {
            this.f81898p = p5Var.u();
        } else {
            this.f81898p = new d(n0Var.A().getLogger());
        }
        if (s5Var != null) {
            s5Var.b(this);
        }
        if (l10 != null) {
            this.f81894l = new Timer(true);
            C();
        }
    }
}
