package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class x1 implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Bundle bundle = null;
        Feature[] featureArr = null;
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                bundle = SafeParcelReader.g(parcel, X);
            } else if (O == 2) {
                featureArr = (Feature[]) SafeParcelReader.K(parcel, X, Feature.CREATOR);
            } else if (O == 3) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O != 4) {
                SafeParcelReader.h0(parcel, X);
            } else {
                connectionTelemetryConfiguration = (ConnectionTelemetryConfiguration) SafeParcelReader.C(parcel, X, ConnectionTelemetryConfiguration.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zzj(bundle, featureArr, i4, connectionTelemetryConfiguration);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i4) {
        return new zzj[i4];
    }
}
