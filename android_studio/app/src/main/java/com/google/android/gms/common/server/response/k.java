package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class k implements Parcelable.Creator<zam> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zam createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        FastJsonResponse.Field field = null;
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                str = SafeParcelReader.G(parcel, X);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                field = (FastJsonResponse.Field) SafeParcelReader.C(parcel, X, FastJsonResponse.Field.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zam(i4, str, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zam[] newArray(int i4) {
        return new zam[i4];
    }
}
