package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.n;
import com.google.android.gms.common.api.internal.u;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class r2 extends c0 {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ u.a f28869b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r2(u.a aVar, n.a aVar2) {
        super(aVar2);
        this.f28869b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.c0
    public final void b(a.b bVar, com.google.android.gms.tasks.l<Boolean> lVar) throws RemoteException {
        v vVar;
        vVar = this.f28869b.f28894b;
        vVar.accept(bVar, lVar);
    }
}
