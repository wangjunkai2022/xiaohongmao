package com.facebook.common.executors;

import android.os.Handler;
import android.os.Looper;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: UiThreadImmediateExecutorService.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class i extends e {
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private static i f10973b;

    private i() {
        super(new Handler(Looper.getMainLooper()));
    }

    public static i f() {
        if (f10973b == null) {
            f10973b = new i();
        }
        return f10973b;
    }

    @Override // com.facebook.common.executors.e, java.util.concurrent.Executor
    public void execute(Runnable command) {
        if (o0()) {
            command.run();
        } else {
            super.execute(command);
        }
    }
}
