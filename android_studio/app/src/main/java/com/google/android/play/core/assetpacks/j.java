package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class j extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f31341b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Map f31342c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31343d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ List f31344e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ d0 f31345f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(d0 d0Var, com.google.android.play.core.tasks.o oVar, List list, Map map, com.google.android.play.core.tasks.o oVar2, List list2) {
        super(oVar);
        this.f31345f = d0Var;
        this.f31341b = list;
        this.f31342c = map;
        this.f31343d = oVar2;
        this.f31344e = list2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        x1 x1Var;
        m3 m3Var;
        ArrayList z9 = d0.z(this.f31341b);
        try {
            tVar = this.f31345f.f31276d;
            str = this.f31345f.f31273a;
            Bundle r9 = d0.r(this.f31342c);
            d0 d0Var = this.f31345f;
            com.google.android.play.core.tasks.o oVar = this.f31343d;
            x1Var = d0Var.f31274b;
            m3Var = d0Var.f31275c;
            ((com.google.android.play.core.internal.i2) tVar.e()).x0(str, z9, r9, new c0(d0Var, oVar, x1Var, m3Var, this.f31344e));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "startDownload(%s)", this.f31341b);
            this.f31343d.d(new RuntimeException(e4));
        }
    }
}
