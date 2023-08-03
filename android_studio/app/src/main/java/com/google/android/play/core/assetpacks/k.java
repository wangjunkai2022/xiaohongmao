package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class k extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f31366b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31367c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d0 f31368d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(d0 d0Var, com.google.android.play.core.tasks.o oVar, List list, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31368d = d0Var;
        this.f31366b = list;
        this.f31367c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        Bundle j4;
        ArrayList z9 = d0.z(this.f31366b);
        try {
            tVar = this.f31368d.f31276d;
            str = this.f31368d.f31273a;
            j4 = d0.j();
            ((com.google.android.play.core.internal.i2) tVar.e()).r1(str, z9, j4, new t(this.f31368d, this.f31367c));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "cancelDownloads(%s)", this.f31366b);
        }
    }
}
