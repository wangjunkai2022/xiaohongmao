package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* compiled from: DiskCache.java */
/* loaded from: classes.dex */
public interface a {

    /* compiled from: DiskCache.java */
    /* renamed from: com.bumptech.glide.load.engine.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0048a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f8692a = 262144000;

        /* renamed from: b  reason: collision with root package name */
        public static final String f8693b = "image_manager_disk_cache";

        @Nullable
        a build();
    }

    /* compiled from: DiskCache.java */
    /* loaded from: classes.dex */
    public interface b {
        boolean a(@NonNull File file);
    }

    void a(com.bumptech.glide.load.c cVar, b bVar);

    @Nullable
    File b(com.bumptech.glide.load.c cVar);

    void c(com.bumptech.glide.load.c cVar);

    void clear();
}
