package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.e;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class r0 extends l1 {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ e.c f28867b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(s0 s0Var, k1 k1Var, e.c cVar) {
        super(k1Var);
        this.f28867b = cVar;
    }

    @Override // com.google.android.gms.common.api.internal.l1
    @s7.a("mLock")
    public final void a() {
        this.f28867b.a(new ConnectionResult(16, null));
    }
}
