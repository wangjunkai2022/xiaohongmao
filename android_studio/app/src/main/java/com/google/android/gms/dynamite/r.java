package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class r extends com.google.android.gms.internal.common.a implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final com.google.android.gms.dynamic.d J1(com.google.android.gms.dynamic.d dVar, String str, int i4, com.google.android.gms.dynamic.d dVar2) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.e(n12, dVar);
        n12.writeString(str);
        n12.writeInt(i4);
        com.google.android.gms.internal.common.l.e(n12, dVar2);
        Parcel s9 = s(2, n12);
        com.google.android.gms.dynamic.d x9 = d.a.x(s9.readStrongBinder());
        s9.recycle();
        return x9;
    }

    public final com.google.android.gms.dynamic.d K1(com.google.android.gms.dynamic.d dVar, String str, int i4, com.google.android.gms.dynamic.d dVar2) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.e(n12, dVar);
        n12.writeString(str);
        n12.writeInt(i4);
        com.google.android.gms.internal.common.l.e(n12, dVar2);
        Parcel s9 = s(3, n12);
        com.google.android.gms.dynamic.d x9 = d.a.x(s9.readStrongBinder());
        s9.recycle();
        return x9;
    }
}
