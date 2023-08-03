package com.google.android.play.core.appupdate;

import android.os.RemoteException;
import com.google.android.play.core.internal.d2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class p extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f31210b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31211c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ u f31212d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(u uVar, com.google.android.play.core.tasks.o oVar, String str, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31212d = uVar;
        this.f31210b = str;
        this.f31211c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        try {
            u uVar = this.f31212d;
            str = uVar.f31224b;
            ((d2) this.f31212d.f31223a.e()).s1(str, u.b(uVar, this.f31210b), new t(this.f31212d, this.f31211c, this.f31210b));
        } catch (RemoteException e4) {
            hVar = u.f31221e;
            hVar.c(e4, "requestUpdateInfo(%s)", this.f31210b);
            this.f31211c.d(new RuntimeException(e4));
        }
    }
}
