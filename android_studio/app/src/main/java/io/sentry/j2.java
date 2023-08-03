package io.sentry;

import io.sentry.util.h;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import m8.a;

/* compiled from: OutboxSender.java */
@a.c
/* loaded from: classes4.dex */
public final class j2 extends p implements l0 {

    /* renamed from: g  reason: collision with root package name */
    private static final Charset f83358g = Charset.forName("UTF-8");
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final n0 f83359c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final k0 f83360d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final u0 f83361e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final o0 f83362f;

    public j2(@m8.g n0 n0Var, @m8.g k0 k0Var, @m8.g u0 u0Var, @m8.g o0 o0Var, long j4) {
        super(o0Var, j4);
        this.f83359c = (n0) io.sentry.util.l.c(n0Var, "Hub is required.");
        this.f83360d = (k0) io.sentry.util.l.c(k0Var, "Envelope reader is required.");
        this.f83361e = (u0) io.sentry.util.l.c(u0Var, "Serializer is required.");
        this.f83362f = (o0) io.sentry.util.l.c(o0Var, "Logger is required.");
    }

    @m8.g
    private o5 i(@m8.h m5 m5Var) {
        String d4;
        if (m5Var != null && (d4 = m5Var.d()) != null) {
            try {
                Double valueOf = Double.valueOf(Double.parseDouble(d4));
                if (!io.sentry.util.p.f(valueOf, false)) {
                    this.f83362f.c(SentryLevel.ERROR, "Invalid sample rate parsed from TraceContext: %s", d4);
                } else {
                    return new o5(Boolean.TRUE, valueOf);
                }
            } catch (Exception unused) {
                this.f83362f.c(SentryLevel.ERROR, "Unable to parse sample rate from TraceContext: %s", d4);
            }
        }
        return new o5(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(File file, io.sentry.hints.h hVar) {
        if (hVar.a()) {
            return;
        }
        try {
            if (file.delete()) {
                return;
            }
            this.f83362f.c(SentryLevel.ERROR, "Failed to delete: %s", file.getAbsolutePath());
        } catch (RuntimeException e4) {
            this.f83362f.a(SentryLevel.ERROR, e4, "Failed to delete: %s", file.getAbsolutePath());
        }
    }

    private void l(@m8.g f4 f4Var, int i4) {
        this.f83362f.c(SentryLevel.ERROR, "Item %d of type %s returned null by the parser.", Integer.valueOf(i4), f4Var.C().e());
    }

    private void m(int i4) {
        this.f83362f.c(SentryLevel.DEBUG, "Item %d is being captured.", Integer.valueOf(i4));
    }

    private void n(@m8.h io.sentry.protocol.n nVar) {
        this.f83362f.c(SentryLevel.WARNING, "Timed out waiting for event id submission: %s", nVar);
    }

    private void o(@m8.g l3 l3Var, @m8.h io.sentry.protocol.n nVar, int i4) {
        this.f83362f.c(SentryLevel.ERROR, "Item %d of has a different event id (%s) to the envelope header (%s)", Integer.valueOf(i4), l3Var.d().a(), nVar);
    }

    private void p(@m8.g l3 l3Var, @m8.g b0 b0Var) throws IOException {
        Object f10;
        this.f83362f.c(SentryLevel.DEBUG, "Processing Envelope with %d item(s)", Integer.valueOf(io.sentry.util.a.g(l3Var.e())));
        int i4 = 0;
        for (f4 f4Var : l3Var.e()) {
            i4++;
            if (f4Var.C() == null) {
                this.f83362f.c(SentryLevel.ERROR, "Item %d has no header", Integer.valueOf(i4));
            } else if (SentryItemType.Event.equals(f4Var.C().e())) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(f4Var.A()), f83358g));
                    h4 h4Var = (h4) this.f83361e.c(bufferedReader, h4.class);
                    if (h4Var == null) {
                        l(f4Var, i4);
                    } else {
                        if (h4Var.O() != null) {
                            io.sentry.util.h.q(b0Var, h4Var.O().f());
                        }
                        if (l3Var.d().a() != null && !l3Var.d().a().equals(h4Var.I())) {
                            o(l3Var, h4Var.I(), i4);
                            bufferedReader.close();
                        } else {
                            this.f83359c.j(h4Var, b0Var);
                            m(i4);
                            if (!q(b0Var)) {
                                n(h4Var.I());
                                bufferedReader.close();
                                return;
                            }
                        }
                    }
                    bufferedReader.close();
                } catch (Throwable th) {
                    this.f83362f.b(SentryLevel.ERROR, "Item failed to process.", th);
                }
                f10 = io.sentry.util.h.f(b0Var);
                if (!(f10 instanceof io.sentry.hints.m) && !((io.sentry.hints.m) f10).e()) {
                    this.f83362f.c(SentryLevel.WARNING, "Envelope had a failed capture at item %d. No more items will be sent.", Integer.valueOf(i4));
                    return;
                }
                io.sentry.util.h.n(b0Var, io.sentry.hints.g.class, i2.f83297a);
            } else {
                if (SentryItemType.Transaction.equals(f4Var.C().e())) {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(f4Var.A()), f83358g));
                        io.sentry.protocol.u uVar = (io.sentry.protocol.u) this.f83361e.c(bufferedReader2, io.sentry.protocol.u.class);
                        if (uVar == null) {
                            l(f4Var, i4);
                        } else if (l3Var.d().a() != null && !l3Var.d().a().equals(uVar.I())) {
                            o(l3Var, uVar.I(), i4);
                            bufferedReader2.close();
                        } else {
                            m5 c10 = l3Var.d().c();
                            if (uVar.E().getTrace() != null) {
                                uVar.E().getTrace().o(i(c10));
                            }
                            this.f83359c.r(uVar, c10, b0Var);
                            m(i4);
                            if (!q(b0Var)) {
                                n(uVar.I());
                                bufferedReader2.close();
                                return;
                            }
                        }
                        bufferedReader2.close();
                    } catch (Throwable th2) {
                        this.f83362f.b(SentryLevel.ERROR, "Item failed to process.", th2);
                    }
                } else {
                    this.f83359c.o(new l3(l3Var.d().a(), l3Var.d().b(), f4Var), b0Var);
                    this.f83362f.c(SentryLevel.DEBUG, "%s item %d is being captured.", f4Var.C().e().getItemType(), Integer.valueOf(i4));
                    if (!q(b0Var)) {
                        this.f83362f.c(SentryLevel.WARNING, "Timed out waiting for item type submission: %s", f4Var.C().e().getItemType());
                        return;
                    }
                }
                f10 = io.sentry.util.h.f(b0Var);
                if (!(f10 instanceof io.sentry.hints.m)) {
                }
                io.sentry.util.h.n(b0Var, io.sentry.hints.g.class, i2.f83297a);
            }
        }
    }

    private boolean q(@m8.g b0 b0Var) {
        Object f10 = io.sentry.util.h.f(b0Var);
        if (f10 instanceof io.sentry.hints.f) {
            return ((io.sentry.hints.f) f10).d();
        }
        io.sentry.util.k.a(io.sentry.hints.f.class, f10, this.f83362f);
        return true;
    }

    @Override // io.sentry.l0
    public void a(@m8.g String str, @m8.g b0 b0Var) {
        io.sentry.util.l.c(str, "Path is required.");
        f(new File(str), b0Var);
    }

    @Override // io.sentry.p
    protected boolean c(@m8.h String str) {
        return (str == null || str.startsWith(io.sentry.cache.d.f83059h) || str.startsWith(io.sentry.cache.d.f83063l)) ? false : true;
    }

    @Override // io.sentry.p
    public /* bridge */ /* synthetic */ void e(@m8.g File file) {
        super.e(file);
    }

    @Override // io.sentry.p
    protected void f(@m8.g final File file, @m8.g b0 b0Var) {
        o0 o0Var;
        h.a aVar;
        io.sentry.util.l.c(file, "File is required.");
        try {
            if (!c(file.getName())) {
                this.f83362f.c(SentryLevel.DEBUG, "File '%s' should be ignored.", file.getAbsolutePath());
                return;
            }
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    l3 a10 = this.f83360d.a(bufferedInputStream);
                    if (a10 == null) {
                        this.f83362f.c(SentryLevel.ERROR, "Stream from path %s resulted in a null envelope.", file.getAbsolutePath());
                    } else {
                        p(a10, b0Var);
                        this.f83362f.c(SentryLevel.DEBUG, "File '%s' is done.", file.getAbsolutePath());
                    }
                    bufferedInputStream.close();
                    o0Var = this.f83362f;
                    aVar = new h.a() { // from class: io.sentry.h2
                        @Override // io.sentry.util.h.a
                        public final void accept(Object obj) {
                            j2.this.k(file, (io.sentry.hints.h) obj);
                        }
                    };
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e4) {
                this.f83362f.b(SentryLevel.ERROR, "Error processing envelope.", e4);
                o0Var = this.f83362f;
                aVar = new h.a() { // from class: io.sentry.h2
                    @Override // io.sentry.util.h.a
                    public final void accept(Object obj) {
                        j2.this.k(file, (io.sentry.hints.h) obj);
                    }
                };
            }
            io.sentry.util.h.p(b0Var, io.sentry.hints.h.class, o0Var, aVar);
        } catch (Throwable th3) {
            io.sentry.util.h.p(b0Var, io.sentry.hints.h.class, this.f83362f, new h.a() { // from class: io.sentry.h2
                @Override // io.sentry.util.h.a
                public final void accept(Object obj) {
                    j2.this.k(file, (io.sentry.hints.h) obj);
                }
            });
            throw th3;
        }
    }
}
