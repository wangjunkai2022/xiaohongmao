package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class k2 extends com.google.android.gms.internal.common.a implements m2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.m2
    public final com.google.android.gms.dynamic.d b() throws RemoteException {
        Parcel s9 = s(1, n1());
        com.google.android.gms.dynamic.d x9 = d.a.x(s9.readStrongBinder());
        s9.recycle();
        return x9;
    }

    @Override // com.google.android.gms.common.internal.m2
    public final int e() throws RemoteException {
        Parcel s9 = s(2, n1());
        int readInt = s9.readInt();
        s9.recycle();
        return readInt;
    }
}
