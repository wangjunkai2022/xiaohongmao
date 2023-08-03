package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* compiled from: SystemClock.java */
/* loaded from: classes2.dex */
public class r0 implements d {
    @Override // com.google.android.exoplayer2.util.d
    public long a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.exoplayer2.util.d
    public long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer2.util.d
    public long c() {
        return SystemClock.uptimeMillis();
    }

    @Override // com.google.android.exoplayer2.util.d
    public q d(Looper looper, @Nullable Handler.Callback callback) {
        return new s0(new Handler(looper, callback));
    }

    @Override // com.google.android.exoplayer2.util.d
    public void e() {
    }
}
