package io.sentry.util.thread;

import io.sentry.protocol.t;
import m8.a;

/* compiled from: NoOpMainThreadChecker.java */
@a.c
/* loaded from: classes4.dex */
public final class d implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final d f84078a = new d();

    public static d e() {
        return f84078a;
    }

    @Override // io.sentry.util.thread.b
    public /* synthetic */ boolean a() {
        return a.a(this);
    }

    @Override // io.sentry.util.thread.b
    public boolean b(long j4) {
        return false;
    }

    @Override // io.sentry.util.thread.b
    public /* synthetic */ boolean c(t tVar) {
        return a.b(this, tVar);
    }

    @Override // io.sentry.util.thread.b
    public /* synthetic */ boolean d(Thread thread) {
        return a.c(this, thread);
    }
}
