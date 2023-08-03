package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@WorkerThread
/* loaded from: classes2.dex */
public interface y2 {
    void b(@Nullable com.google.android.gms.common.internal.m mVar, @Nullable Set<Scope> set);

    void c(ConnectionResult connectionResult);
}
