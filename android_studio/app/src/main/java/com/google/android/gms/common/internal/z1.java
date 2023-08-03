package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class z1 implements Parcelable.Creator<GetServiceRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, getServiceRequest.zza);
        w2.a.F(parcel, 2, getServiceRequest.zzb);
        w2.a.F(parcel, 3, getServiceRequest.zzc);
        w2.a.Y(parcel, 4, getServiceRequest.zzd, false);
        w2.a.B(parcel, 5, getServiceRequest.zze, false);
        w2.a.c0(parcel, 6, getServiceRequest.zzf, i4, false);
        w2.a.k(parcel, 7, getServiceRequest.zzg, false);
        w2.a.S(parcel, 8, getServiceRequest.zzh, i4, false);
        w2.a.c0(parcel, 10, getServiceRequest.zzi, i4, false);
        w2.a.c0(parcel, 11, getServiceRequest.zzj, i4, false);
        w2.a.g(parcel, 12, getServiceRequest.zzk);
        w2.a.F(parcel, 13, getServiceRequest.zzl);
        w2.a.g(parcel, 14, getServiceRequest.zzm);
        w2.a.Y(parcel, 15, getServiceRequest.zza(), false);
        w2.a.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        String str2 = null;
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        boolean z9 = false;
        int i12 = 0;
        boolean z10 = false;
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
                    str = SafeParcelReader.G(parcel, X);
                    break;
                case 5:
                    iBinder = SafeParcelReader.Y(parcel, X);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.K(parcel, X, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.g(parcel, X);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.C(parcel, X, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.h0(parcel, X);
                    break;
                case 10:
                    featureArr = (Feature[]) SafeParcelReader.K(parcel, X, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.K(parcel, X, Feature.CREATOR);
                    break;
                case 12:
                    z9 = SafeParcelReader.P(parcel, X);
                    break;
                case 13:
                    i12 = SafeParcelReader.Z(parcel, X);
                    break;
                case 14:
                    z10 = SafeParcelReader.P(parcel, X);
                    break;
                case 15:
                    str2 = SafeParcelReader.G(parcel, X);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new GetServiceRequest(i4, i10, i11, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z9, i12, z10, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest[] newArray(int i4) {
        return new GetServiceRequest[i4];
    }
}
