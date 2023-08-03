package com.bumptech.glide;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.net.URL;

/* compiled from: ModelTypes.java */
/* loaded from: classes.dex */
interface h<T> {
    @NonNull
    @CheckResult
    T b(@Nullable String str);

    @CheckResult
    @Deprecated
    T c(@Nullable URL url);

    @NonNull
    @CheckResult
    T d(@Nullable Uri uri);

    @NonNull
    @CheckResult
    T g(@Nullable byte[] bArr);

    @NonNull
    @CheckResult
    T h(@Nullable File file);

    @NonNull
    @CheckResult
    T i(@Nullable Drawable drawable);

    @NonNull
    @CheckResult
    T l(@Nullable Bitmap bitmap);

    @NonNull
    @CheckResult
    T m(@Nullable Object obj);

    @NonNull
    @CheckResult
    T n(@Nullable @DrawableRes @RawRes Integer num);
}
