package io.sentry.transport;

import io.sentry.l3;
import io.sentry.u0;
import java.io.IOException;

/* compiled from: StdoutTransport.java */
/* loaded from: classes4.dex */
public final class b0 implements q {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final u0 f84008a;

    public b0(@m8.g u0 u0Var) {
        this.f84008a = (u0) io.sentry.util.l.c(u0Var, "Serializer is required");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // io.sentry.transport.q
    public void e(long j4) {
        System.out.println("Flushing");
    }

    @Override // io.sentry.transport.q
    public /* synthetic */ void j0(l3 l3Var) {
        p.a(this, l3Var);
    }

    @Override // io.sentry.transport.q
    public void w(@m8.g l3 l3Var, @m8.g io.sentry.b0 b0Var) throws IOException {
        io.sentry.util.l.c(l3Var, "SentryEnvelope is required");
        try {
            this.f84008a.b(l3Var, System.out);
        } catch (Throwable unused) {
        }
    }
}
