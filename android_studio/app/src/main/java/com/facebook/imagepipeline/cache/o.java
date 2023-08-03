package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: EncodedCountingMemoryCacheFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class o {

    /* compiled from: EncodedCountingMemoryCacheFactory.java */
    /* loaded from: classes.dex */
    static class a implements a0<PooledByteBuffer> {
        a() {
        }

        @Override // com.facebook.imagepipeline.cache.a0
        /* renamed from: b */
        public int a(PooledByteBuffer value) {
            return value.size();
        }
    }

    public static j<com.facebook.cache.common.c, PooledByteBuffer> a(com.facebook.common.internal.m<v> encodedMemoryCacheParamsSupplier, com.facebook.common.memory.c memoryTrimmableRegistry) {
        t tVar = new t(new a(), new x(), encodedMemoryCacheParamsSupplier, null, false, false);
        memoryTrimmableRegistry.a(tVar);
        return tVar;
    }
}
