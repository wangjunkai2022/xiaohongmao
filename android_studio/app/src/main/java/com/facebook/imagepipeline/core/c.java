package com.facebook.imagepipeline.core;

import com.facebook.cache.disk.e;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: DiskStorageCacheFactory.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private d f12224a;

    public c(d diskStorageFactory) {
        this.f12224a = diskStorageFactory;
    }

    public static com.facebook.cache.disk.e b(com.facebook.cache.disk.c diskCacheConfig, com.facebook.cache.disk.d diskStorage) {
        return c(diskCacheConfig, diskStorage, Executors.newSingleThreadExecutor());
    }

    public static com.facebook.cache.disk.e c(com.facebook.cache.disk.c diskCacheConfig, com.facebook.cache.disk.d diskStorage, Executor executorForBackgroundInit) {
        return new com.facebook.cache.disk.e(diskStorage, diskCacheConfig.i(), new e.c(diskCacheConfig.l(), diskCacheConfig.k(), diskCacheConfig.g()), diskCacheConfig.e(), diskCacheConfig.d(), diskCacheConfig.h(), executorForBackgroundInit, diskCacheConfig.j());
    }

    @Override // com.facebook.imagepipeline.core.g
    public com.facebook.cache.disk.i a(com.facebook.cache.disk.c diskCacheConfig) {
        return b(diskCacheConfig, this.f12224a.a(diskCacheConfig));
    }
}
