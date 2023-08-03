package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class m extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f31423b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Map f31424c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31425d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ m0 f31426e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ d0 f31427f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(d0 d0Var, com.google.android.play.core.tasks.o oVar, List list, Map map, com.google.android.play.core.tasks.o oVar2, m0 m0Var) {
        super(oVar);
        this.f31427f = d0Var;
        this.f31423b = list;
        this.f31424c = map;
        this.f31425d = oVar2;
        this.f31426e = m0Var;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        x1 x1Var;
        m3 m3Var;
        ArrayList z9 = d0.z(this.f31423b);
        try {
            tVar = this.f31427f.f31276d;
            str = this.f31427f.f31273a;
            Bundle r9 = d0.r(this.f31424c);
            d0 d0Var = this.f31427f;
            com.google.android.play.core.tasks.o oVar = this.f31425d;
            x1Var = d0Var.f31274b;
            m3Var = d0Var.f31275c;
            ((com.google.android.play.core.internal.i2) tVar.e()).n0(str, z9, r9, new b0(d0Var, oVar, x1Var, m3Var, this.f31426e));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "getPackStates(%s)", this.f31423b);
            this.f31425d.d(new RuntimeException(e4));
        }
    }
}
