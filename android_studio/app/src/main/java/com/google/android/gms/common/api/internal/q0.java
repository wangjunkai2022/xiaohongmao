package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class q0 extends l1 {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ConnectionResult f28861b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ s0 f28862c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q0(s0 s0Var, k1 k1Var, ConnectionResult connectionResult) {
        super(k1Var);
        this.f28862c = s0Var;
        this.f28861b = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.l1
    @s7.a("mLock")
    public final void a() {
        this.f28862c.f28876c.l(this.f28861b);
    }
}
