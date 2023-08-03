package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: Target.java */
/* loaded from: classes.dex */
public interface p<R> extends com.bumptech.glide.manager.m {
    public static final int X = Integer.MIN_VALUE;

    @Nullable
    com.bumptech.glide.request.e e();

    void f(@NonNull o oVar);

    void j(@Nullable Drawable drawable);

    void k(@Nullable Drawable drawable);

    void q(@NonNull R r9, @Nullable com.bumptech.glide.request.transition.f<? super R> fVar);

    void r(@Nullable com.bumptech.glide.request.e eVar);

    void s(@Nullable Drawable drawable);

    void u(@NonNull o oVar);
}
