package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class s3 {

    /* renamed from: a  reason: collision with root package name */
    private final int f28879a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectionResult f28880b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s3(ConnectionResult connectionResult, int i4) {
        com.google.android.gms.common.internal.u.k(connectionResult);
        this.f28880b = connectionResult;
        this.f28879a = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return this.f28879a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ConnectionResult b() {
        return this.f28880b;
    }
}
