package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.i;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class i extends com.google.android.gms.common.internal.i<m> {
    public i(Context context, Looper looper, com.google.android.gms.common.internal.f fVar, i.b bVar, i.c cVar) {
        super(context, looper, 39, fVar, bVar, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.e
    public final String L() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }

    @Override // com.google.android.gms.common.internal.e
    public final String M() {
        return "com.google.android.gms.common.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.e
    public final /* synthetic */ IInterface y(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
        return queryLocalInterface instanceof m ? (m) queryLocalInterface : new m(iBinder);
    }
}
