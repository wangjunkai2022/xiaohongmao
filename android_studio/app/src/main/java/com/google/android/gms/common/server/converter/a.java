package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator<zaa> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zaa createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i4 = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O != 2) {
                SafeParcelReader.h0(parcel, X);
            } else {
                stringToIntConverter = (StringToIntConverter) SafeParcelReader.C(parcel, X, StringToIntConverter.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zaa(i4, stringToIntConverter);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa[] newArray(int i4) {
        return new zaa[i4];
    }
}
