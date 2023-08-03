package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.u;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class q2 extends t {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ u.a f28864e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q2(u.a aVar, n nVar, Feature[] featureArr, boolean z9, int i4) {
        super(nVar, featureArr, z9, i4);
        this.f28864e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.t
    public final void d(a.b bVar, com.google.android.gms.tasks.l<Void> lVar) throws RemoteException {
        v vVar;
        vVar = this.f28864e.f28893a;
        vVar.accept(bVar, lVar);
    }
}
