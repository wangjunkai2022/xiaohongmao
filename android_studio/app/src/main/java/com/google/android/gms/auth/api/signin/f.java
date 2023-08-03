package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class f implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        String str3 = null;
        int i4 = 0;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X)) {
                case 1:
                    i4 = SafeParcelReader.Z(parcel, X);
                    break;
                case 2:
                    arrayList = SafeParcelReader.L(parcel, X, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.C(parcel, X, Account.CREATOR);
                    break;
                case 4:
                    z9 = SafeParcelReader.P(parcel, X);
                    break;
                case 5:
                    z10 = SafeParcelReader.P(parcel, X);
                    break;
                case 6:
                    z11 = SafeParcelReader.P(parcel, X);
                    break;
                case 7:
                    str = SafeParcelReader.G(parcel, X);
                    break;
                case 8:
                    str2 = SafeParcelReader.G(parcel, X);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.L(parcel, X, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                case 10:
                    str3 = SafeParcelReader.G(parcel, X);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new GoogleSignInOptions(i4, arrayList, account, z9, z10, z11, str, str2, arrayList2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i4) {
        return new GoogleSignInOptions[i4];
    }
}
