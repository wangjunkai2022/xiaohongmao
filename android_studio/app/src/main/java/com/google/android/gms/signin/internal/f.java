package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.m;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class f extends com.google.android.gms.internal.base.a implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void J1(int i4) throws RemoteException {
        Parcel s9 = s();
        s9.writeInt(i4);
        z(7, s9);
    }

    public final void K1(m mVar, int i4, boolean z9) throws RemoteException {
        Parcel s9 = s();
        com.google.android.gms.internal.base.c.d(s9, mVar);
        s9.writeInt(i4);
        com.google.android.gms.internal.base.c.b(s9, z9);
        z(9, s9);
    }

    public final void L1(zai zaiVar, e eVar) throws RemoteException {
        Parcel s9 = s();
        com.google.android.gms.internal.base.c.c(s9, zaiVar);
        com.google.android.gms.internal.base.c.d(s9, eVar);
        z(12, s9);
    }
}
