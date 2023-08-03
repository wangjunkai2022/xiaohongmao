package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class n1 implements Parcelable.Creator<RootTelemetryConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RootTelemetryConfiguration createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i4 = 0;
        boolean z9 = false;
        boolean z10 = false;
        int i10 = 0;
        int i11 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                z9 = SafeParcelReader.P(parcel, X);
            } else if (O == 3) {
                z10 = SafeParcelReader.P(parcel, X);
            } else if (O == 4) {
                i10 = SafeParcelReader.Z(parcel, X);
            } else if (O != 5) {
                SafeParcelReader.h0(parcel, X);
            } else {
                i11 = SafeParcelReader.Z(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new RootTelemetryConfiguration(i4, z9, z10, i10, i11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ RootTelemetryConfiguration[] newArray(int i4) {
        return new RootTelemetryConfiguration[i4];
    }
}
