package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class w extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f32008b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f32009c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l0 f32010d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(l0 l0Var, com.google.android.play.core.tasks.o oVar, List list, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f32010d = l0Var;
        this.f32008b = list;
        this.f32009c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        try {
            str = this.f32010d.f31903a;
            ((com.google.android.play.core.internal.a1) this.f32010d.f31904b.e()).S(str, l0.l(this.f32008b), l0.a(), new d0(this.f32010d, this.f32009c));
        } catch (RemoteException e4) {
            hVar = l0.f31901c;
            hVar.c(e4, "deferredLanguageInstall(%s)", this.f32008b);
            this.f32009c.d(new RuntimeException(e4));
        }
    }
}
