package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class e implements Parcelable.Creator<WakeLockEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WakeLockEvent createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        long j4 = 0;
        long j10 = 0;
        long j11 = 0;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        float f10 = 0.0f;
        boolean z9 = false;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X)) {
                case 1:
                    i4 = SafeParcelReader.Z(parcel, X);
                    break;
                case 2:
                    j4 = SafeParcelReader.c0(parcel, X);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.h0(parcel, X);
                    break;
                case 4:
                    str = SafeParcelReader.G(parcel, X);
                    break;
                case 5:
                    i11 = SafeParcelReader.Z(parcel, X);
                    break;
                case 6:
                    arrayList = SafeParcelReader.I(parcel, X);
                    break;
                case 8:
                    j10 = SafeParcelReader.c0(parcel, X);
                    break;
                case 10:
                    str3 = SafeParcelReader.G(parcel, X);
                    break;
                case 11:
                    i10 = SafeParcelReader.Z(parcel, X);
                    break;
                case 12:
                    str2 = SafeParcelReader.G(parcel, X);
                    break;
                case 13:
                    str4 = SafeParcelReader.G(parcel, X);
                    break;
                case 14:
                    i12 = SafeParcelReader.Z(parcel, X);
                    break;
                case 15:
                    f10 = SafeParcelReader.V(parcel, X);
                    break;
                case 16:
                    j11 = SafeParcelReader.c0(parcel, X);
                    break;
                case 17:
                    str5 = SafeParcelReader.G(parcel, X);
                    break;
                case 18:
                    z9 = SafeParcelReader.P(parcel, X);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new WakeLockEvent(i4, j4, i10, str, i11, arrayList, str2, j10, i12, str3, str4, f10, j11, str5, z9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent[] newArray(int i4) {
        return new WakeLockEvent[i4];
    }
}
