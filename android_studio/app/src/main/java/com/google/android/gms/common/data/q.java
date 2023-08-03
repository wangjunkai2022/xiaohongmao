package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class q implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i4 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                strArr = SafeParcelReader.H(parcel, X);
            } else if (O == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.K(parcel, X, CursorWindow.CREATOR);
            } else if (O == 3) {
                i10 = SafeParcelReader.Z(parcel, X);
            } else if (O == 4) {
                bundle = SafeParcelReader.g(parcel, X);
            } else if (O != 1000) {
                SafeParcelReader.h0(parcel, X);
            } else {
                i4 = SafeParcelReader.Z(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        DataHolder dataHolder = new DataHolder(i4, strArr, cursorWindowArr, i10, bundle);
        dataHolder.zad();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i4) {
        return new DataHolder[i4];
    }
}
