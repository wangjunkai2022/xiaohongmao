package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class c implements q {

    /* renamed from: a  reason: collision with root package name */
    private final Status f28535a;

    /* renamed from: b  reason: collision with root package name */
    private final l<?>[] f28536b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Status status, l<?>[] lVarArr) {
        this.f28535a = status;
        this.f28536b = lVarArr;
    }

    @NonNull
    public <R extends q> R a(@NonNull d<R> dVar) {
        com.google.android.gms.common.internal.u.b(dVar.f28537a < this.f28536b.length, "The result token does not belong to this batch");
        return (R) this.f28536b[dVar.f28537a].e(0L, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.common.api.q
    @NonNull
    public Status getStatus() {
        return this.f28535a;
    }
}
