package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class q extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f31528b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f31529c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f31530d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ int f31531e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31532f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ d0 f31533g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(d0 d0Var, com.google.android.play.core.tasks.o oVar, int i4, String str, String str2, int i10, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31533g = d0Var;
        this.f31528b = i4;
        this.f31529c = str;
        this.f31530d = str2;
        this.f31531e = i10;
        this.f31532f = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        Bundle j4;
        try {
            tVar = this.f31533g.f31276d;
            str = this.f31533g.f31273a;
            Bundle o9 = d0.o(this.f31528b, this.f31529c, this.f31530d, this.f31531e);
            j4 = d0.j();
            ((com.google.android.play.core.internal.i2) tVar.e()).l1(str, o9, j4, new u(this.f31533g, this.f31532f));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.b("getChunkFileDescriptor(%s, %s, %d, session=%d)", this.f31529c, this.f31530d, Integer.valueOf(this.f31531e), Integer.valueOf(this.f31528b));
            this.f31532f.d(new RuntimeException(e4));
        }
    }
}
