package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class q extends com.google.android.gms.internal.common.a implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int J1() throws RemoteException {
        Parcel s9 = s(6, n1());
        int readInt = s9.readInt();
        s9.recycle();
        return readInt;
    }

    public final int K1(com.google.android.gms.dynamic.d dVar, String str, boolean z9) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.e(n12, dVar);
        n12.writeString(str);
        com.google.android.gms.internal.common.l.b(n12, z9);
        Parcel s9 = s(3, n12);
        int readInt = s9.readInt();
        s9.recycle();
        return readInt;
    }

    public final int L1(com.google.android.gms.dynamic.d dVar, String str, boolean z9) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.e(n12, dVar);
        n12.writeString(str);
        com.google.android.gms.internal.common.l.b(n12, z9);
        Parcel s9 = s(5, n12);
        int readInt = s9.readInt();
        s9.recycle();
        return readInt;
    }

    public final com.google.android.gms.dynamic.d M1(com.google.android.gms.dynamic.d dVar, String str, int i4) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.e(n12, dVar);
        n12.writeString(str);
        n12.writeInt(i4);
        Parcel s9 = s(2, n12);
        com.google.android.gms.dynamic.d x9 = d.a.x(s9.readStrongBinder());
        s9.recycle();
        return x9;
    }

    public final com.google.android.gms.dynamic.d N1(com.google.android.gms.dynamic.d dVar, String str, int i4, com.google.android.gms.dynamic.d dVar2) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.e(n12, dVar);
        n12.writeString(str);
        n12.writeInt(i4);
        com.google.android.gms.internal.common.l.e(n12, dVar2);
        Parcel s9 = s(8, n12);
        com.google.android.gms.dynamic.d x9 = d.a.x(s9.readStrongBinder());
        s9.recycle();
        return x9;
    }

    public final com.google.android.gms.dynamic.d O1(com.google.android.gms.dynamic.d dVar, String str, int i4) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.e(n12, dVar);
        n12.writeString(str);
        n12.writeInt(i4);
        Parcel s9 = s(4, n12);
        com.google.android.gms.dynamic.d x9 = d.a.x(s9.readStrongBinder());
        s9.recycle();
        return x9;
    }

    public final com.google.android.gms.dynamic.d P1(com.google.android.gms.dynamic.d dVar, String str, boolean z9, long j4) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.e(n12, dVar);
        n12.writeString(str);
        com.google.android.gms.internal.common.l.b(n12, z9);
        n12.writeLong(j4);
        Parcel s9 = s(7, n12);
        com.google.android.gms.dynamic.d x9 = d.a.x(s9.readStrongBinder());
        s9.recycle();
        return x9;
    }
}
