package io.sentry;

import m8.a;

/* compiled from: NoOpTransportFactory.java */
@a.c
/* loaded from: classes4.dex */
public final class f2 implements y0 {

    /* renamed from: a  reason: collision with root package name */
    private static final f2 f83197a = new f2();

    private f2() {
    }

    public static f2 b() {
        return f83197a;
    }

    @Override // io.sentry.y0
    @m8.g
    public io.sentry.transport.q a(@m8.g SentryOptions sentryOptions, @m8.g o2 o2Var) {
        return io.sentry.transport.t.a();
    }
}
