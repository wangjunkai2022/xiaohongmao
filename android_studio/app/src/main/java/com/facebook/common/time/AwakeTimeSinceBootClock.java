package com.facebook.common.time;

import android.os.SystemClock;
import com.facebook.common.internal.e;
import com.facebook.infer.annotation.Nullsafe;
import s0.c;
import s0.d;

@e
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class AwakeTimeSinceBootClock implements c, d {
    @e
    private static final AwakeTimeSinceBootClock INSTANCE = new AwakeTimeSinceBootClock();

    private AwakeTimeSinceBootClock() {
    }

    @e
    public static AwakeTimeSinceBootClock get() {
        return INSTANCE;
    }

    @Override // s0.c
    @e
    public long now() {
        return SystemClock.uptimeMillis();
    }

    @Override // s0.d
    @e
    public long nowNanos() {
        return System.nanoTime();
    }
}
