package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class d extends com.google.android.gms.internal.base.b implements e {
    public d() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.base.b
    protected final boolean J1(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        switch (i4) {
            case 3:
                ConnectionResult connectionResult = (ConnectionResult) com.google.android.gms.internal.base.c.a(parcel, ConnectionResult.CREATOR);
                zaa zaaVar = (zaa) com.google.android.gms.internal.base.c.a(parcel, zaa.CREATOR);
                break;
            case 4:
                Status status = (Status) com.google.android.gms.internal.base.c.a(parcel, Status.CREATOR);
                break;
            case 5:
            default:
                return false;
            case 6:
                Status status2 = (Status) com.google.android.gms.internal.base.c.a(parcel, Status.CREATOR);
                break;
            case 7:
                Status status3 = (Status) com.google.android.gms.internal.base.c.a(parcel, Status.CREATOR);
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.internal.base.c.a(parcel, GoogleSignInAccount.CREATOR);
                break;
            case 8:
                O((zak) com.google.android.gms.internal.base.c.a(parcel, zak.CREATOR));
                break;
            case 9:
                zag zagVar = (zag) com.google.android.gms.internal.base.c.a(parcel, zag.CREATOR);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
