package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class f0 implements Parcelable.Creator<zzn> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzn createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        IBinder iBinder = null;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                str = SafeParcelReader.G(parcel, X);
            } else if (O == 2) {
                z9 = SafeParcelReader.P(parcel, X);
            } else if (O == 3) {
                z10 = SafeParcelReader.P(parcel, X);
            } else if (O == 4) {
                iBinder = SafeParcelReader.Y(parcel, X);
            } else if (O != 5) {
                SafeParcelReader.h0(parcel, X);
            } else {
                z11 = SafeParcelReader.P(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zzn(str, z9, z10, iBinder, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzn[] newArray(int i4) {
        return new zzn[i4];
    }
}
