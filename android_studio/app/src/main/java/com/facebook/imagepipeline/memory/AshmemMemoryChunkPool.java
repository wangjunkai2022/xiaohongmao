package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import com.facebook.infer.annotation.Nullsafe;

@s7.d
@com.facebook.common.internal.e
@TargetApi(27)
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class AshmemMemoryChunkPool extends w {
    @com.facebook.common.internal.e
    public AshmemMemoryChunkPool(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 ashmemMemoryChunkPoolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, ashmemMemoryChunkPoolStatsTracker);
    }

    @Override // com.facebook.imagepipeline.memory.w, com.facebook.imagepipeline.memory.BasePool
    /* renamed from: T */
    public a i(int bucketedSize) {
        return new a(bucketedSize);
    }
}
