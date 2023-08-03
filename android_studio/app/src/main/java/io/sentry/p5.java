package io.sentry;

import io.sentry.protocol.TransactionNameSource;
import m8.a;

/* compiled from: TransactionContext.java */
/* loaded from: classes4.dex */
public final class p5 extends f5 {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final String f83527k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final TransactionNameSource f83528l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private o5 f83529m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private d f83530n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private Instrumenter f83531o;

    public p5(@m8.g String str, @m8.g String str2) {
        this(str, str2, (o5) null);
    }

    @a.c
    @m8.g
    public static p5 r(@m8.g String str, @m8.g TransactionNameSource transactionNameSource, @m8.g String str2, @m8.g v4 v4Var) {
        Boolean e4 = v4Var.e();
        return new p5(str, str2, v4Var.c(), new h5(), transactionNameSource, v4Var.b(), e4 == null ? null : new o5(e4), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    @m8.a.c
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static io.sentry.p5 s(@m8.g java.lang.String r11, @m8.g io.sentry.protocol.TransactionNameSource r12, @m8.g java.lang.String r13, @m8.g io.sentry.v4 r14, @m8.h io.sentry.d r15, @m8.h io.sentry.h5 r16) {
        /*
            java.lang.Boolean r0 = r14.e()
            if (r0 != 0) goto L8
            r1 = 0
            goto Ld
        L8:
            io.sentry.o5 r1 = new io.sentry.o5
            r1.<init>(r0)
        Ld:
            if (r15 == 0) goto L30
            r15.c()
            java.lang.Double r1 = r15.o()
            if (r0 == 0) goto L1d
            boolean r0 = r0.booleanValue()
            goto L1e
        L1d:
            r0 = 1
        L1e:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            if (r1 == 0) goto L2b
            io.sentry.o5 r2 = new io.sentry.o5
            r2.<init>(r0, r1)
            r9 = r2
            goto L31
        L2b:
            io.sentry.o5 r1 = new io.sentry.o5
            r1.<init>(r0)
        L30:
            r9 = r1
        L31:
            if (r16 != 0) goto L3a
            io.sentry.h5 r0 = new io.sentry.h5
            r0.<init>()
            r6 = r0
            goto L3c
        L3a:
            r6 = r16
        L3c:
            io.sentry.p5 r0 = new io.sentry.p5
            io.sentry.protocol.n r5 = r14.c()
            io.sentry.h5 r8 = r14.b()
            r2 = r0
            r3 = r11
            r4 = r13
            r7 = r12
            r10 = r15
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.p5.s(java.lang.String, io.sentry.protocol.TransactionNameSource, java.lang.String, io.sentry.v4, io.sentry.d, io.sentry.h5):io.sentry.p5");
    }

    @m8.g
    public static p5 t(@m8.g String str, @m8.g String str2, @m8.g v4 v4Var) {
        return s(str, TransactionNameSource.CUSTOM, str2, v4Var, null, null);
    }

    public void A(@m8.g Instrumenter instrumenter) {
        this.f83531o = instrumenter;
    }

    public void B(@m8.h Boolean bool) {
        if (bool == null) {
            this.f83529m = null;
        } else {
            this.f83529m = new o5(bool);
        }
    }

    public void C(@m8.h Boolean bool, @m8.h Boolean bool2) {
        if (bool == null) {
            this.f83529m = null;
        } else if (bool2 == null) {
            this.f83529m = new o5(bool);
        } else {
            this.f83529m = new o5(bool, null, bool2, null);
        }
    }

    @m8.h
    public d u() {
        return this.f83530n;
    }

    @m8.g
    public Instrumenter v() {
        return this.f83531o;
    }

    @m8.g
    public String w() {
        return this.f83527k;
    }

    @m8.h
    public Boolean x() {
        o5 o5Var = this.f83529m;
        if (o5Var == null) {
            return null;
        }
        return o5Var.d();
    }

    @m8.h
    public o5 y() {
        return this.f83529m;
    }

    @m8.g
    public TransactionNameSource z() {
        return this.f83528l;
    }

    @a.c
    public p5(@m8.g String str, @m8.g TransactionNameSource transactionNameSource, @m8.g String str2) {
        this(str, transactionNameSource, str2, null);
    }

    public p5(@m8.g String str, @m8.g String str2, @m8.h o5 o5Var) {
        this(str, TransactionNameSource.CUSTOM, str2, o5Var);
    }

    @a.c
    public p5(@m8.g String str, @m8.g TransactionNameSource transactionNameSource, @m8.g String str2, @m8.h o5 o5Var) {
        super(str2);
        this.f83531o = Instrumenter.SENTRY;
        this.f83527k = (String) io.sentry.util.l.c(str, "name is required");
        this.f83528l = transactionNameSource;
        o(o5Var);
    }

    @a.c
    public p5(@m8.g String str, @m8.g String str2, @m8.g io.sentry.protocol.n nVar, @m8.g h5 h5Var, @m8.g TransactionNameSource transactionNameSource, @m8.h h5 h5Var2, @m8.h o5 o5Var, @m8.h d dVar) {
        super(nVar, h5Var, str2, h5Var2, null);
        this.f83531o = Instrumenter.SENTRY;
        this.f83527k = (String) io.sentry.util.l.c(str, "name is required");
        this.f83529m = o5Var;
        this.f83528l = transactionNameSource;
        this.f83530n = dVar;
    }
}
