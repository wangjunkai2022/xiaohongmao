package com.google.android.play.core.assetpacks;

import android.os.Bundle;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class y extends s {

    /* renamed from: e  reason: collision with root package name */
    final int f31666e;

    /* renamed from: f  reason: collision with root package name */
    final String f31667f;

    /* renamed from: g  reason: collision with root package name */
    final int f31668g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ d0 f31669h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(d0 d0Var, com.google.android.play.core.tasks.o oVar, int i4, String str, int i10) {
        super(d0Var, oVar);
        this.f31669h = d0Var;
        this.f31666e = i4;
        this.f31667f = str;
        this.f31668g = i10;
    }

    @Override // com.google.android.play.core.assetpacks.s, com.google.android.play.core.internal.k2
    public final void w(Bundle bundle) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31669h.f31276d;
        tVar.s(this.f31566c);
        int i4 = bundle.getInt("error_code");
        hVar = d0.f31271g;
        hVar.b("onError(%d), retrying notifyModuleCompleted...", Integer.valueOf(i4));
        int i10 = this.f31668g;
        if (i10 > 0) {
            this.f31669h.m(this.f31666e, this.f31667f, i10 - 1);
        }
    }
}
