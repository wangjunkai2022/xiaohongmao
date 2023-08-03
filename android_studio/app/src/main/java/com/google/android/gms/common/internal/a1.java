package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class a1 implements Parcelable.Creator<zat> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zat createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i4 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                account = (Account) SafeParcelReader.C(parcel, X, Account.CREATOR);
            } else if (O == 3) {
                i10 = SafeParcelReader.Z(parcel, X);
            } else if (O != 4) {
                SafeParcelReader.h0(parcel, X);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.C(parcel, X, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zat(i4, account, i10, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zat[] newArray(int i4) {
        return new zat[i4];
    }
}
