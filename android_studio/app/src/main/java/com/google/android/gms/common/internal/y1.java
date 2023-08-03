package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class y1 implements Parcelable.Creator<ConnectionTelemetryConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionTelemetryConfiguration createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        RootTelemetryConfiguration rootTelemetryConfiguration = null;
        int[] iArr = null;
        int[] iArr2 = null;
        boolean z9 = false;
        boolean z10 = false;
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X)) {
                case 1:
                    rootTelemetryConfiguration = (RootTelemetryConfiguration) SafeParcelReader.C(parcel, X, RootTelemetryConfiguration.CREATOR);
                    break;
                case 2:
                    z9 = SafeParcelReader.P(parcel, X);
                    break;
                case 3:
                    z10 = SafeParcelReader.P(parcel, X);
                    break;
                case 4:
                    iArr = SafeParcelReader.u(parcel, X);
                    break;
                case 5:
                    i4 = SafeParcelReader.Z(parcel, X);
                    break;
                case 6:
                    iArr2 = SafeParcelReader.u(parcel, X);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new ConnectionTelemetryConfiguration(rootTelemetryConfiguration, z9, z10, iArr, i4, iArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionTelemetryConfiguration[] newArray(int i4) {
        return new ConnectionTelemetryConfiguration[i4];
    }
}
