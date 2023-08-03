package com.bumptech.glide.request;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.p;

/* compiled from: RequestListener.java */
/* loaded from: classes.dex */
public interface g<R> {
    boolean b(@Nullable GlideException glideException, Object obj, p<R> pVar, boolean z9);

    boolean c(R r9, Object obj, p<R> pVar, DataSource dataSource, boolean z9);
}
