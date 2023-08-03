package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class b1 extends z1 implements c1 {
    public b1() {
        super("com.google.android.play.core.splitinstall.protocol.ISplitInstallServiceCallback");
    }

    @Override // com.google.android.play.core.internal.z1
    protected final boolean s(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        switch (i4) {
            case 2:
                q0(parcel.readInt(), (Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                c0(parcel.readInt(), (Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 4:
                g(parcel.readInt(), (Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 5:
                B0(parcel.readInt(), (Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 6:
                k0((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 7:
                A(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 8:
                X0((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 9:
                h((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 10:
                d0((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 11:
                u0((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 12:
                w((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 13:
                f1((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
