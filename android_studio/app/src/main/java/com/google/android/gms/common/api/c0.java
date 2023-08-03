package com.google.android.gms.common.api;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.q;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class c0<R extends q> extends BasePendingResult<R> {
    public c0(@Nullable i iVar) {
        super(iVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R k(Status status) {
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
