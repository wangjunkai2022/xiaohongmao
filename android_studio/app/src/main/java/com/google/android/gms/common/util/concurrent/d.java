package com.google.android.gms.common.util.concurrent;

import android.os.Process;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f29295a;

    public d(Runnable runnable, int i4) {
        this.f29295a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f29295a.run();
    }
}
