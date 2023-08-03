package io.sentry;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SentryRuntimeEventProcessor.java */
/* loaded from: classes4.dex */
public final class p4 implements z {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final String f83525a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final String f83526b;

    public p4(@m8.h String str, @m8.h String str2) {
        this.f83525a = str;
        this.f83526b = str2;
    }

    @m8.g
    private <T extends e3> T c(@m8.g T t9) {
        if (t9.E().getRuntime() == null) {
            t9.E().setRuntime(new io.sentry.protocol.p());
        }
        io.sentry.protocol.p runtime = t9.E().getRuntime();
        if (runtime != null && runtime.d() == null && runtime.f() == null) {
            runtime.g(this.f83526b);
            runtime.i(this.f83525a);
        }
        return t9;
    }

    @Override // io.sentry.z
    @m8.g
    public h4 a(@m8.g h4 h4Var, @m8.h b0 b0Var) {
        return (h4) c(h4Var);
    }

    @Override // io.sentry.z
    @m8.g
    public io.sentry.protocol.u b(@m8.g io.sentry.protocol.u uVar, @m8.h b0 b0Var) {
        return (io.sentry.protocol.u) c(uVar);
    }

    public p4() {
        this(System.getProperty("java.version"), System.getProperty("java.vendor"));
    }
}
