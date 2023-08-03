package com.google.android.play.core.assetpacks;

import android.os.RemoteException;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class l extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Map f31399b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31400c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d0 f31401d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(d0 d0Var, com.google.android.play.core.tasks.o oVar, Map map, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31401d = d0Var;
        this.f31399b = map;
        this.f31400c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        try {
            tVar = this.f31401d.f31276d;
            str = this.f31401d.f31273a;
            ((com.google.android.play.core.internal.i2) tVar.e()).a1(str, d0.r(this.f31399b), new v(this.f31401d, this.f31400c));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "syncPacks", new Object[0]);
            this.f31400c.d(new RuntimeException(e4));
        }
    }
}
