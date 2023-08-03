package io.sentry.android.core.internal.util;

import android.os.Looper;
import io.sentry.protocol.t;
import m8.a;

/* compiled from: AndroidMainThreadChecker.java */
@a.c
/* loaded from: classes4.dex */
public final class b implements io.sentry.util.thread.b {

    /* renamed from: a  reason: collision with root package name */
    private static final b f82462a = new b();

    private b() {
    }

    public static b e() {
        return f82462a;
    }

    @Override // io.sentry.util.thread.b
    public /* synthetic */ boolean a() {
        return io.sentry.util.thread.a.a(this);
    }

    @Override // io.sentry.util.thread.b
    public boolean b(long j4) {
        return Looper.getMainLooper().getThread().getId() == j4;
    }

    @Override // io.sentry.util.thread.b
    public /* synthetic */ boolean c(t tVar) {
        return io.sentry.util.thread.a.b(this, tVar);
    }

    @Override // io.sentry.util.thread.b
    public /* synthetic */ boolean d(Thread thread) {
        return io.sentry.util.thread.a.c(this, thread);
    }
}
