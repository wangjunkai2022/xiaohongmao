package io.sentry;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import m8.a;

/* compiled from: Span.java */
@a.c
/* loaded from: classes4.dex */
public final class e5 implements v0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final j3 f83161a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private j3 f83162b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final f5 f83163c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final a5 f83164d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Throwable f83165e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final n0 f83166f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f83167g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private g5 f83168h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, Object> f83169i;

    e5(@m8.g io.sentry.protocol.n nVar, @m8.h h5 h5Var, @m8.g a5 a5Var, @m8.g String str, @m8.g n0 n0Var) {
        this(nVar, h5Var, a5Var, str, n0Var, null, null);
    }

    @Override // io.sentry.v0
    @m8.h
    public Object A(@m8.g String str) {
        return this.f83169i.get(str);
    }

    @Override // io.sentry.v0
    @m8.g
    public f5 E() {
        return this.f83163c;
    }

    @Override // io.sentry.v0
    @m8.h
    public Throwable F() {
        return this.f83165e;
    }

    @Override // io.sentry.v0
    public void G(@m8.h SpanStatus spanStatus, @m8.h j3 j3Var) {
        if (this.f83167g.compareAndSet(false, true)) {
            this.f83163c.p(spanStatus);
            if (j3Var == null) {
                j3Var = this.f83166f.A().getDateProvider().now();
            }
            this.f83162b = j3Var;
            Throwable th = this.f83165e;
            if (th != null) {
                this.f83166f.y(th, this, this.f83164d.getName());
            }
            g5 g5Var = this.f83168h;
            if (g5Var != null) {
                g5Var.a(this);
            }
        }
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 H(@m8.g String str, @m8.h String str2) {
        if (this.f83167g.get()) {
            return b2.K();
        }
        return this.f83164d.h0(this.f83163c.g(), str, str2);
    }

    @m8.h
    public o5 I() {
        return this.f83163c.f();
    }

    @Override // io.sentry.v0
    public void J(@m8.g String str) {
        if (this.f83167g.get()) {
            return;
        }
        this.f83163c.l(str);
    }

    @m8.g
    public Map<String, Object> K() {
        return this.f83169i;
    }

    @m8.h
    public j3 L() {
        return this.f83162b;
    }

    @m8.h
    public h5 M() {
        return this.f83163c.c();
    }

    @m8.g
    public h5 N() {
        return this.f83163c.g();
    }

    @m8.g
    public j3 O() {
        return this.f83161a;
    }

    public Map<String, String> P() {
        return this.f83163c.i();
    }

    @m8.g
    public io.sentry.protocol.n Q() {
        return this.f83163c.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(@m8.h g5 g5Var) {
        this.f83168h = g5Var;
    }

    @Override // io.sentry.v0
    public void a(@m8.g String str, @m8.g String str2) {
        if (this.f83167g.get()) {
            return;
        }
        this.f83163c.q(str, str2);
    }

    @Override // io.sentry.v0
    public boolean b() {
        return this.f83167g.get();
    }

    @Override // io.sentry.v0
    public void c(@m8.h SpanStatus spanStatus) {
        if (this.f83167g.get()) {
            return;
        }
        this.f83163c.p(spanStatus);
    }

    @Override // io.sentry.v0
    @m8.g
    public v4 d() {
        return new v4(this.f83163c.j(), this.f83163c.g(), this.f83163c.e());
    }

    @Override // io.sentry.v0
    public boolean e() {
        return false;
    }

    @m8.h
    public Boolean g() {
        return this.f83163c.e();
    }

    @Override // io.sentry.v0
    @m8.h
    public String getDescription() {
        return this.f83163c.a();
    }

    @Override // io.sentry.v0
    @m8.h
    public SpanStatus getStatus() {
        return this.f83163c.h();
    }

    @Override // io.sentry.v0
    public void h() {
        t(this.f83163c.h());
    }

    @Override // io.sentry.v0
    @m8.h
    public String i(@m8.g String str) {
        return this.f83163c.i().get(str);
    }

    @m8.h
    public Boolean j() {
        return this.f83163c.d();
    }

    @Override // io.sentry.v0
    public void k(@m8.h String str) {
        if (this.f83167g.get()) {
            return;
        }
        this.f83163c.k(str);
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 n(@m8.g String str) {
        return H(str, null);
    }

    @Override // io.sentry.v0
    public void o(@m8.g String str, @m8.g Number number) {
        this.f83164d.o(str, number);
    }

    @Override // io.sentry.v0
    @m8.h
    public m5 q() {
        return this.f83164d.q();
    }

    @Override // io.sentry.v0
    public void r(@m8.g String str, @m8.g Object obj) {
        if (this.f83167g.get()) {
            return;
        }
        this.f83169i.put(str, obj);
    }

    @Override // io.sentry.v0
    public void s(@m8.h Throwable th) {
        if (this.f83167g.get()) {
            return;
        }
        this.f83165e = th;
    }

    @Override // io.sentry.v0
    public void t(@m8.h SpanStatus spanStatus) {
        G(spanStatus, this.f83166f.A().getDateProvider().now());
    }

    @Override // io.sentry.v0
    @m8.g
    public String u() {
        return this.f83163c.b();
    }

    @Override // io.sentry.v0
    @m8.h
    public e v(@m8.h List<String> list) {
        return this.f83164d.v(list);
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 w(@m8.g String str, @m8.h String str2, @m8.h j3 j3Var, @m8.g Instrumenter instrumenter) {
        if (this.f83167g.get()) {
            return b2.K();
        }
        return this.f83164d.i0(this.f83163c.g(), str, str2, j3Var, instrumenter);
    }

    @Override // io.sentry.v0
    public void y(@m8.g String str, @m8.g Number number, @m8.g MeasurementUnit measurementUnit) {
        this.f83164d.y(str, number, measurementUnit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e5(@m8.g io.sentry.protocol.n nVar, @m8.h h5 h5Var, @m8.g a5 a5Var, @m8.g String str, @m8.g n0 n0Var, @m8.h j3 j3Var, @m8.h g5 g5Var) {
        this.f83167g = new AtomicBoolean(false);
        this.f83169i = new ConcurrentHashMap();
        this.f83163c = new f5(nVar, new h5(), str, h5Var, a5Var.I());
        this.f83164d = (a5) io.sentry.util.l.c(a5Var, "transaction is required");
        this.f83166f = (n0) io.sentry.util.l.c(n0Var, "hub is required");
        this.f83168h = g5Var;
        if (j3Var != null) {
            this.f83161a = j3Var;
        } else {
            this.f83161a = n0Var.A().getDateProvider().now();
        }
    }

    @m8.n
    public e5(@m8.g p5 p5Var, @m8.g a5 a5Var, @m8.g n0 n0Var, @m8.h j3 j3Var) {
        this.f83167g = new AtomicBoolean(false);
        this.f83169i = new ConcurrentHashMap();
        this.f83163c = (f5) io.sentry.util.l.c(p5Var, "context is required");
        this.f83164d = (a5) io.sentry.util.l.c(a5Var, "sentryTracer is required");
        this.f83166f = (n0) io.sentry.util.l.c(n0Var, "hub is required");
        this.f83168h = null;
        if (j3Var != null) {
            this.f83161a = j3Var;
        } else {
            this.f83161a = n0Var.A().getDateProvider().now();
        }
    }
}
