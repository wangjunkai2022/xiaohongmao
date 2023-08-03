package com.bumptech.glide.load.engine;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;

/* compiled from: DataFetcherGenerator.java */
/* loaded from: classes.dex */
interface f {

    /* compiled from: DataFetcherGenerator.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(com.bumptech.glide.load.c cVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource);

        void c();

        void e(com.bumptech.glide.load.c cVar, @Nullable Object obj, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource, com.bumptech.glide.load.c cVar2);
    }

    boolean b();

    void cancel();
}
