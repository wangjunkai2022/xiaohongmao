package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class j2 extends z1 implements k2 {
    public j2() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback");
    }

    @Override // com.google.android.play.core.internal.z1
    protected final boolean s(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        switch (i4) {
            case 2:
                D1(parcel.readInt(), (Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                g(parcel.readInt(), (Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 4:
                H0(parcel.readInt(), (Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 5:
                B(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 6:
                Parcelable.Creator creator = Bundle.CREATOR;
                N0((Bundle) a2.a(parcel, creator), (Bundle) a2.a(parcel, creator));
                return true;
            case 7:
                w((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
            case 8:
                Parcelable.Creator creator2 = Bundle.CREATOR;
                p0((Bundle) a2.a(parcel, creator2), (Bundle) a2.a(parcel, creator2));
                return true;
            case 9:
            default:
                return false;
            case 10:
                Parcelable.Creator creator3 = Bundle.CREATOR;
                w0((Bundle) a2.a(parcel, creator3), (Bundle) a2.a(parcel, creator3));
                return true;
            case 11:
                Parcelable.Creator creator4 = Bundle.CREATOR;
                G0((Bundle) a2.a(parcel, creator4), (Bundle) a2.a(parcel, creator4));
                return true;
            case 12:
                Parcelable.Creator creator5 = Bundle.CREATOR;
                P0((Bundle) a2.a(parcel, creator5), (Bundle) a2.a(parcel, creator5));
                return true;
            case 13:
                Parcelable.Creator creator6 = Bundle.CREATOR;
                b0((Bundle) a2.a(parcel, creator6), (Bundle) a2.a(parcel, creator6));
                return true;
            case 14:
                Parcelable.Creator creator7 = Bundle.CREATOR;
                V((Bundle) a2.a(parcel, creator7), (Bundle) a2.a(parcel, creator7));
                return true;
            case 15:
                h((Bundle) a2.a(parcel, Bundle.CREATOR));
                return true;
        }
    }
}
