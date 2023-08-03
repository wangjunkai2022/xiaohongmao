package com.facebook.common.time;

import android.os.SystemClock;
import com.facebook.common.internal.e;
import com.facebook.infer.annotation.Nullsafe;
import s0.c;

@e
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class RealtimeSinceBootClock implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final RealtimeSinceBootClock f11039a = new RealtimeSinceBootClock();

    private RealtimeSinceBootClock() {
    }

    @e
    public static RealtimeSinceBootClock get() {
        return f11039a;
    }

    @Override // s0.c
    public long now() {
        return SystemClock.elapsedRealtime();
    }
}
