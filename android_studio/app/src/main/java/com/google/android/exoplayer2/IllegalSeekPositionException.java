package com.google.android.exoplayer2;

/* loaded from: classes2.dex */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final s2 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(s2 s2Var, int i4, long j4) {
        this.timeline = s2Var;
        this.windowIndex = i4;
        this.positionMs = j4;
    }
}
