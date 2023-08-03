package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.q;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class a0<R extends q> extends BasePendingResult<R> {

    /* renamed from: r  reason: collision with root package name */
    private final R f28526r;

    public a0(R r9) {
        super(Looper.getMainLooper());
        this.f28526r = r9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R k(Status status) {
        if (status.getStatusCode() == this.f28526r.getStatus().getStatusCode()) {
            return this.f28526r;
        }
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
