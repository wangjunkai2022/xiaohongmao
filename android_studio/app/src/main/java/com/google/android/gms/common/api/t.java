package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.internal.v2;
import com.google.android.gms.common.api.q;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class t<R extends q, S extends q> {
    @NonNull
    public final l<S> a(@NonNull Status status) {
        return new v2(status);
    }

    @NonNull
    public Status b(@NonNull Status status) {
        return status;
    }

    @Nullable
    @WorkerThread
    public abstract l<S> c(@NonNull R r9);
}
