package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

@s7.d
@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class BufferMemoryChunkPool extends w {
    @com.facebook.common.internal.e
    public BufferMemoryChunkPool(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 bufferMemoryChunkPoolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, bufferMemoryChunkPoolStatsTracker);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.w, com.facebook.imagepipeline.memory.BasePool
    /* renamed from: T */
    public k i(int bucketedSize) {
        return new k(bucketedSize);
    }
}
