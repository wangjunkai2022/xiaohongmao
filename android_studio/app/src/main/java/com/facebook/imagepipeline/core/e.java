package com.facebook.imagepipeline.core;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DynamicDefaultDiskStorageFactory.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e implements d {
    @Override // com.facebook.imagepipeline.core.d
    public com.facebook.cache.disk.d a(com.facebook.cache.disk.c diskCacheConfig) {
        return new com.facebook.cache.disk.f(diskCacheConfig.m(), diskCacheConfig.c(), diskCacheConfig.b(), diskCacheConfig.d());
    }
}
