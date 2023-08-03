package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class t0 extends com.google.android.gms.internal.base.a implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final com.google.android.gms.dynamic.d J1(com.google.android.gms.dynamic.d dVar, zax zaxVar) throws RemoteException {
        Parcel s9 = s();
        com.google.android.gms.internal.base.c.d(s9, dVar);
        com.google.android.gms.internal.base.c.c(s9, zaxVar);
        Parcel x9 = x(2, s9);
        com.google.android.gms.dynamic.d x10 = d.a.x(x9.readStrongBinder());
        x9.recycle();
        return x10;
    }
}
