package io.sentry.android.core;

import android.os.Handler;
import android.os.Looper;

/* compiled from: MainLooperHandler.java */
/* loaded from: classes4.dex */
final class z0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Handler f82619a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z0() {
        this(Looper.getMainLooper());
    }

    @m8.g
    public Thread a() {
        return this.f82619a.getLooper().getThread();
    }

    public void b(@m8.g Runnable runnable) {
        this.f82619a.post(runnable);
    }

    z0(@m8.g Looper looper) {
        this.f82619a = new Handler(looper);
    }
}
