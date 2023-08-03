package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class u0 implements Parcelable.Creator<MethodInvocation> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MethodInvocation createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        long j4 = 0;
        long j10 = 0;
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = -1;
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
                    i11 = SafeParcelReader.Z(parcel, X);
                    break;
                case 4:
                    j4 = SafeParcelReader.c0(parcel, X);
                    break;
                case 5:
                    j10 = SafeParcelReader.c0(parcel, X);
                    break;
                case 6:
                    str = SafeParcelReader.G(parcel, X);
                    break;
                case 7:
                    str2 = SafeParcelReader.G(parcel, X);
                    break;
                case 8:
                    i12 = SafeParcelReader.Z(parcel, X);
                    break;
                case 9:
                    i13 = SafeParcelReader.Z(parcel, X);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new MethodInvocation(i4, i10, i11, j4, j10, str, str2, i12, i13);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MethodInvocation[] newArray(int i4) {
        return new MethodInvocation[i4];
    }
}
