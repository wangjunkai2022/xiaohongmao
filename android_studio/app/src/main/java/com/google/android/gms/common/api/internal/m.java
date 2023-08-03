package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public interface m {
    @Nullable
    @u2.a
    Activity H();

    @u2.a
    void h(@NonNull String str, @NonNull LifecycleCallback lifecycleCallback);

    @Nullable
    @u2.a
    <T extends LifecycleCallback> T m(@NonNull String str, @NonNull Class<T> cls);

    @u2.a
    void startActivityForResult(@NonNull Intent intent, int i4);

    @u2.a
    boolean u();

    @u2.a
    boolean y();
}
