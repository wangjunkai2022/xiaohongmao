package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.io.IOException;

/* compiled from: DataRewinder.java */
/* loaded from: classes.dex */
public interface e<T> {

    /* compiled from: DataRewinder.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        @NonNull
        Class<T> a();

        @NonNull
        e<T> b(@NonNull T t9);
    }

    @NonNull
    T a() throws IOException;

    void b();
}
