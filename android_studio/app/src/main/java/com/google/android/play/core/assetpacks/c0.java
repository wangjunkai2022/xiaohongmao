package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class c0 extends s {

    /* renamed from: e  reason: collision with root package name */
    private final List f31254e;

    /* renamed from: f  reason: collision with root package name */
    private final x1 f31255f;

    /* renamed from: g  reason: collision with root package name */
    private final m3 f31256g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(d0 d0Var, com.google.android.play.core.tasks.o oVar, x1 x1Var, m3 m3Var, List list) {
        super(d0Var, oVar);
        this.f31255f = x1Var;
        this.f31256g = m3Var;
        this.f31254e = list;
    }

    @Override // com.google.android.play.core.assetpacks.s, com.google.android.play.core.internal.k2
    public final void D1(int i4, Bundle bundle) {
        super.D1(i4, bundle);
        this.f31566c.e(f.e(bundle, this.f31255f, this.f31256g, this.f31254e));
    }
}
