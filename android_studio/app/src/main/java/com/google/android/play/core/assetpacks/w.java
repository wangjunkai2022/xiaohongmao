package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class w extends s {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ d0 f31637e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(d0 d0Var, com.google.android.play.core.tasks.o oVar) {
        super(d0Var, oVar);
        this.f31637e = d0Var;
    }

    @Override // com.google.android.play.core.assetpacks.s, com.google.android.play.core.internal.k2
    public final void G0(Bundle bundle, Bundle bundle2) {
        AtomicBoolean atomicBoolean;
        com.google.android.play.core.internal.h hVar;
        super.G0(bundle, bundle2);
        atomicBoolean = this.f31637e.f31278f;
        if (!atomicBoolean.compareAndSet(true, false)) {
            hVar = d0.f31271g;
            hVar.e("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.f31637e.n();
        }
    }

    @Override // com.google.android.play.core.assetpacks.s, com.google.android.play.core.internal.k2
    public final void w(Bundle bundle) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31637e.f31277e;
        tVar.s(this.f31566c);
        int i4 = bundle.getInt("error_code");
        hVar = d0.f31271g;
        hVar.b("onError(%d)", Integer.valueOf(i4));
        this.f31566c.d(new AssetPackException(i4));
    }
}
