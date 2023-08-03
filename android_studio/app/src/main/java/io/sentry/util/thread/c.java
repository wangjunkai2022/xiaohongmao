package io.sentry.util.thread;

import io.sentry.protocol.t;
import m8.a;

/* compiled from: MainThreadChecker.java */
@a.c
/* loaded from: classes4.dex */
public final class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final long f84076a = Thread.currentThread().getId();

    /* renamed from: b  reason: collision with root package name */
    private static final c f84077b = new c();

    private c() {
    }

    public static c e() {
        return f84077b;
    }

    @Override // io.sentry.util.thread.b
    public /* synthetic */ boolean a() {
        return a.a(this);
    }

    @Override // io.sentry.util.thread.b
    public boolean b(long j4) {
        return f84076a == j4;
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
