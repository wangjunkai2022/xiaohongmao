package io.sentry.transport;

import io.sentry.l3;
import java.io.IOException;
import m8.a;

/* compiled from: NoOpTransport.java */
@a.c
/* loaded from: classes4.dex */
public final class t implements q {

    /* renamed from: a  reason: collision with root package name */
    private static final t f84043a = new t();

    private t() {
    }

    @m8.g
    public static t a() {
        return f84043a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // io.sentry.transport.q
    public void e(long j4) {
    }

    @Override // io.sentry.transport.q
    public /* synthetic */ void j0(l3 l3Var) {
        p.a(this, l3Var);
    }

    @Override // io.sentry.transport.q
    public void w(@m8.g l3 l3Var, @m8.g io.sentry.b0 b0Var) throws IOException {
    }
}
