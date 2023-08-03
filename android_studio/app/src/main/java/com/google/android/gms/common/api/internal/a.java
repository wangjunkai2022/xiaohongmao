package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class a {
    @NonNull
    @u2.a
    public static final a a(@NonNull Activity activity) {
        return new e1(d0.m(activity));
    }

    @NonNull
    @u2.a
    public abstract a b(@NonNull Runnable runnable);
}
