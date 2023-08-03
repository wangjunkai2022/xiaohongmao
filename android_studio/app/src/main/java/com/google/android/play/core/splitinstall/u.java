package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class u extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f32002b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f32003c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l0 f32004d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(l0 l0Var, com.google.android.play.core.tasks.o oVar, List list, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f32004d = l0Var;
        this.f32002b = list;
        this.f32003c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        try {
            str = this.f32004d.f31903a;
            ((com.google.android.play.core.internal.a1) this.f32004d.f31904b.e()).u1(str, l0.m(this.f32002b), l0.a(), new f0(this.f32004d, this.f32003c));
        } catch (RemoteException e4) {
            hVar = l0.f31901c;
            hVar.c(e4, "deferredUninstall(%s)", this.f32002b);
            this.f32003c.d(new RuntimeException(e4));
        }
    }
}
