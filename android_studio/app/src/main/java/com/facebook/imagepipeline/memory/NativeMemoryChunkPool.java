package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

@s7.d
@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class NativeMemoryChunkPool extends w {
    @com.facebook.common.internal.e
    public NativeMemoryChunkPool(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 nativeMemoryChunkPoolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, nativeMemoryChunkPoolStatsTracker);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.w, com.facebook.imagepipeline.memory.BasePool
    /* renamed from: T */
    public NativeMemoryChunk i(int bucketedSize) {
        return new NativeMemoryChunk(bucketedSize);
    }
}
