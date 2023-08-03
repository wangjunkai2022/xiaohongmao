package com.rudresh.videocompression.videocompression;

import kotlin.time.DurationKt;

/* loaded from: classes3.dex */
public enum QualityPreset {
    HIGH(1920, 6800000, 30),
    MEDIUM(com.im.freechat.utils.h.f43782b, 2621440, 30),
    LOW(640, DurationKt.NANOS_IN_MILLIS, 30);
    
    public final int baseBitrate;
    public final int baseFps;
    public final int baseSide;

    QualityPreset(int i4, int i10, int i11) {
        this.baseBitrate = i10;
        this.baseSide = i4;
        this.baseFps = i11;
    }
}
