package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.q;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class b0<R extends q> extends BasePendingResult<R> {

    /* renamed from: r  reason: collision with root package name */
    private final R f28534r;

    public b0(i iVar, R r9) {
        super(iVar);
        this.f28534r = r9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R k(Status status) {
        return this.f28534r;
    }
}
