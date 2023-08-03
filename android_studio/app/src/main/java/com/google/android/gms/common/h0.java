package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class h0 implements Parcelable.Creator<zzq> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzq createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        boolean z9 = false;
        String str = null;
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                z9 = SafeParcelReader.P(parcel, X);
            } else if (O == 2) {
                str = SafeParcelReader.G(parcel, X);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                i4 = SafeParcelReader.Z(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zzq(z9, str, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzq[] newArray(int i4) {
        return new zzq[i4];
    }
}
