package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class t extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Collection f31930b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Collection f31931c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31932d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ l0 f31933e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(l0 l0Var, com.google.android.play.core.tasks.o oVar, Collection collection, Collection collection2, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31933e = l0Var;
        this.f31930b = collection;
        this.f31931c = collection2;
        this.f31932d = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        ArrayList m9 = l0.m(this.f31930b);
        m9.addAll(l0.l(this.f31931c));
        try {
            str = this.f31933e.f31903a;
            ((com.google.android.play.core.internal.a1) this.f31933e.f31904b.e()).E1(str, m9, l0.a(), new j0(this.f31933e, this.f31932d));
        } catch (RemoteException e4) {
            hVar = l0.f31901c;
            hVar.c(e4, "startInstall(%s,%s)", this.f31930b, this.f31931c);
            this.f31932d.d(new RuntimeException(e4));
        }
    }
}
