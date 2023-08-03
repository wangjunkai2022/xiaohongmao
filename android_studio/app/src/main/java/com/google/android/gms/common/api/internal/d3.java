package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class d3 implements com.google.android.gms.tasks.c<Boolean, Void> {
    @Override // com.google.android.gms.tasks.c
    public final /* bridge */ /* synthetic */ Void a(@NonNull com.google.android.gms.tasks.k<Boolean> kVar) throws Exception {
        if (kVar.r().booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
