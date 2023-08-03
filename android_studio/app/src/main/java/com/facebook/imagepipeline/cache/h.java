package com.facebook.imagepipeline.cache;

import com.facebook.imagepipeline.cache.j;
import com.facebook.imagepipeline.cache.u;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: CountingLruBitmapMemoryCacheFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class h implements b {

    /* compiled from: CountingLruBitmapMemoryCacheFactory.java */
    /* loaded from: classes.dex */
    class a implements a0<com.facebook.imagepipeline.image.c> {
        a() {
        }

        @Override // com.facebook.imagepipeline.cache.a0
        /* renamed from: b */
        public int a(com.facebook.imagepipeline.image.c value) {
            return value.b();
        }
    }

    @Override // com.facebook.imagepipeline.cache.b
    public j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> a(com.facebook.common.internal.m<v> bitmapMemoryCacheParamsSupplier, com.facebook.common.memory.c memoryTrimmableRegistry, u.a trimStrategy, boolean storeEntrySize, boolean ignoreSizeMismatch, @r7.h j.b<com.facebook.cache.common.c> observer) {
        t tVar = new t(new a(), trimStrategy, bitmapMemoryCacheParamsSupplier, observer, storeEntrySize, ignoreSizeMismatch);
        memoryTrimmableRegistry.a(tVar);
        return tVar;
    }
}
