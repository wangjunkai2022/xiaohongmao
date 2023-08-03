package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class v extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f32005b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f32006c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l0 f32007d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(l0 l0Var, com.google.android.play.core.tasks.o oVar, List list, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f32007d = l0Var;
        this.f32005b = list;
        this.f32006c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        try {
            str = this.f32007d.f31903a;
            ((com.google.android.play.core.internal.a1) this.f32007d.f31904b.e()).N(str, l0.m(this.f32005b), l0.a(), new c0(this.f32007d, this.f32006c));
        } catch (RemoteException e4) {
            hVar = l0.f31901c;
            hVar.c(e4, "deferredInstall(%s)", this.f32005b);
            this.f32006c.d(new RuntimeException(e4));
        }
    }
}
