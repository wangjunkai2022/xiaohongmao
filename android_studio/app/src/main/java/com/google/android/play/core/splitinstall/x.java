package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class x extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f32012b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f32013c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l0 f32014d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(l0 l0Var, com.google.android.play.core.tasks.o oVar, List list, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f32014d = l0Var;
        this.f32012b = list;
        this.f32013c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        try {
            str = this.f32014d.f31903a;
            ((com.google.android.play.core.internal.a1) this.f32014d.f31904b.e()).Z(str, l0.l(this.f32012b), l0.a(), new e0(this.f32014d, this.f32013c));
        } catch (RemoteException e4) {
            hVar = l0.f31901c;
            hVar.c(e4, "deferredLanguageUninstall(%s)", this.f32012b);
            this.f32013c.d(new RuntimeException(e4));
        }
    }
}
