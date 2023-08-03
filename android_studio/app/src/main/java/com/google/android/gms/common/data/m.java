package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class m implements Parcelable.Creator<BitmapTeleporter> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BitmapTeleporter createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i4 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.C(parcel, X, ParcelFileDescriptor.CREATOR);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                i10 = SafeParcelReader.Z(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new BitmapTeleporter(i4, parcelFileDescriptor, i10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BitmapTeleporter[] newArray(int i4) {
        return new BitmapTeleporter[i4];
    }
}
