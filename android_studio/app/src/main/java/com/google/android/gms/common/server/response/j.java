package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class j implements Parcelable.Creator<FastJsonResponse.Field> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        zaa zaaVar = null;
        int i4 = 0;
        int i10 = 0;
        boolean z9 = false;
        int i11 = 0;
        boolean z10 = false;
        int i12 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X)) {
                case 1:
                    i4 = SafeParcelReader.Z(parcel, X);
                    break;
                case 2:
                    i10 = SafeParcelReader.Z(parcel, X);
                    break;
                case 3:
                    z9 = SafeParcelReader.P(parcel, X);
                    break;
                case 4:
                    i11 = SafeParcelReader.Z(parcel, X);
                    break;
                case 5:
                    z10 = SafeParcelReader.P(parcel, X);
                    break;
                case 6:
                    str = SafeParcelReader.G(parcel, X);
                    break;
                case 7:
                    i12 = SafeParcelReader.Z(parcel, X);
                    break;
                case 8:
                    str2 = SafeParcelReader.G(parcel, X);
                    break;
                case 9:
                    zaaVar = (zaa) SafeParcelReader.C(parcel, X, zaa.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new FastJsonResponse.Field(i4, i10, z9, i11, z10, str, i12, str2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field[] newArray(int i4) {
        return new FastJsonResponse.Field[i4];
    }
}
