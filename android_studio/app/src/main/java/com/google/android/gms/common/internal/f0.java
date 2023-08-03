package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class f0 implements Parcelable.Creator<TelemetryData> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ TelemetryData createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i4 = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O != 2) {
                SafeParcelReader.h0(parcel, X);
            } else {
                arrayList = SafeParcelReader.L(parcel, X, MethodInvocation.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new TelemetryData(i4, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TelemetryData[] newArray(int i4) {
        return new TelemetryData[i4];
    }
}
