package com.google.android.play.core.assetpacks;

import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class v extends s {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ d0 f31610e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(d0 d0Var, com.google.android.play.core.tasks.o oVar) {
        super(d0Var, oVar);
        this.f31610e = d0Var;
    }

    @Override // com.google.android.play.core.assetpacks.s, com.google.android.play.core.internal.k2
    public final void B(List list) {
        super.B(list);
        this.f31566c.e(d0.A(this.f31610e, list));
    }
}
