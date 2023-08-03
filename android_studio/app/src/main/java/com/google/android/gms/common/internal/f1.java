package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class f1 extends com.google.android.gms.internal.common.a implements o {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.common.internal.o
    public final void e0(int i4, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel n12 = n1();
        n12.writeInt(i4);
        n12.writeStrongBinder(iBinder);
        com.google.android.gms.internal.common.l.c(n12, bundle);
        x(1, n12);
    }

    @Override // com.google.android.gms.common.internal.o
    public final void g(int i4, Bundle bundle) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.common.internal.o
    public final void t1(int i4, IBinder iBinder, zzj zzjVar) throws RemoteException {
        throw null;
    }
}
