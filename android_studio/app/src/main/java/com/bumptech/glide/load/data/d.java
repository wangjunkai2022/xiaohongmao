package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

/* compiled from: DataFetcher.java */
/* loaded from: classes.dex */
public interface d<T> {

    /* compiled from: DataFetcher.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        void c(@NonNull Exception exc);

        void e(@Nullable T t9);
    }

    @NonNull
    Class<T> a();

    void b();

    void cancel();

    void d(@NonNull Priority priority, @NonNull a<? super T> aVar);

    @NonNull
    DataSource getDataSource();
}
