package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class i1 implements t0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f31881a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Intent f31882b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Context f31883c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ k1 f31884d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(k1 k1Var, f fVar, Intent intent, Context context) {
        this.f31884d = k1Var;
        this.f31881a = fVar;
        this.f31882b = intent;
        this.f31883c = context;
    }

    @Override // com.google.android.play.core.splitinstall.t0
    public final void a(@g3.a int i4) {
        r0.f31897g.post(new j1(this.f31884d, this.f31881a, 6, i4));
    }

    @Override // com.google.android.play.core.splitinstall.t0
    public final void e() {
        com.google.android.play.core.internal.h hVar;
        if (!this.f31882b.getBooleanExtra("triggered_from_app_after_verification", false)) {
            this.f31882b.putExtra("triggered_from_app_after_verification", true);
            this.f31883c.sendBroadcast(this.f31882b);
            return;
        }
        hVar = ((com.google.android.play.core.listener.d) this.f31884d).f31788a;
        hVar.b("Splits copied and verified more than once.", new Object[0]);
    }

    @Override // com.google.android.play.core.splitinstall.t0
    public final void zza() {
        r0.f31897g.post(new j1(this.f31884d, this.f31881a, 5, 0));
    }
}
