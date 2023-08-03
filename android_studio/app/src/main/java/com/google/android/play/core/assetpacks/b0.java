package com.google.android.play.core.assetpacks;

import android.os.Bundle;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class b0 extends s {

    /* renamed from: e  reason: collision with root package name */
    private final x1 f31243e;

    /* renamed from: f  reason: collision with root package name */
    private final m3 f31244f;

    /* renamed from: g  reason: collision with root package name */
    private final m0 f31245g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(d0 d0Var, com.google.android.play.core.tasks.o oVar, x1 x1Var, m3 m3Var, m0 m0Var) {
        super(d0Var, oVar);
        this.f31243e = x1Var;
        this.f31244f = m3Var;
        this.f31245g = m0Var;
    }

    @Override // com.google.android.play.core.assetpacks.s, com.google.android.play.core.internal.k2
    public final void b0(Bundle bundle, Bundle bundle2) {
        super.b0(bundle, bundle2);
        this.f31566c.e(f.d(bundle, this.f31243e, this.f31244f, this.f31245g));
    }
}
