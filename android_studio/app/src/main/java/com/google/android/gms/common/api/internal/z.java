package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class z extends BasePendingResult<Status> {
    @Deprecated
    public z(@NonNull Looper looper) {
        super(looper);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    @NonNull
    public final /* bridge */ /* synthetic */ Status k(@NonNull Status status) {
        return status;
    }

    @u2.a
    public z(@NonNull com.google.android.gms.common.api.i iVar) {
        super(iVar);
    }
}
