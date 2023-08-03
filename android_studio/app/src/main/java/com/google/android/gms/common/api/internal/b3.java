package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.a0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class b3 extends a0 {

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ a0.a f28647d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b3(a0.a aVar, Feature[] featureArr, boolean z9, int i4) {
        super(featureArr, z9, i4);
        this.f28647d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.a0
    public final void b(a.b bVar, com.google.android.gms.tasks.l lVar) throws RemoteException {
        v vVar;
        vVar = this.f28647d.f28619a;
        vVar.accept(bVar, lVar);
    }
}
