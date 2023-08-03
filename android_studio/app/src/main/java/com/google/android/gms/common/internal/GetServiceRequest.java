package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "GetServiceRequestCreator")
@u2.a
@SafeParcelable.f({9})
/* loaded from: classes2.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new z1();
    @SafeParcelable.g(id = 1)
    final int zza;
    @SafeParcelable.c(id = 2)
    final int zzb;
    @SafeParcelable.c(id = 3)
    int zzc;
    @SafeParcelable.c(id = 4)
    String zzd;
    @SafeParcelable.c(id = 5)
    IBinder zze;
    @SafeParcelable.c(id = 6)
    Scope[] zzf;
    @SafeParcelable.c(id = 7)
    Bundle zzg;
    @Nullable
    @SafeParcelable.c(id = 8)
    Account zzh;
    @SafeParcelable.c(id = 10)
    Feature[] zzi;
    @SafeParcelable.c(id = 11)
    Feature[] zzj;
    @SafeParcelable.c(id = 12)
    boolean zzk;
    @SafeParcelable.c(defaultValue = "0", id = 13)
    int zzl;
    @SafeParcelable.c(getter = "isRequestingTelemetryConfiguration", id = 14)
    boolean zzm;
    @Nullable
    @SafeParcelable.c(getter = "getAttributionTag", id = 15)
    private String zzn;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public GetServiceRequest(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) int i10, @SafeParcelable.e(id = 3) int i11, @SafeParcelable.e(id = 4) String str, @SafeParcelable.e(id = 5) IBinder iBinder, @SafeParcelable.e(id = 6) Scope[] scopeArr, @SafeParcelable.e(id = 7) Bundle bundle, @SafeParcelable.e(id = 8) Account account, @SafeParcelable.e(id = 10) Feature[] featureArr, @SafeParcelable.e(id = 11) Feature[] featureArr2, @SafeParcelable.e(id = 12) boolean z9, @SafeParcelable.e(id = 13) int i12, @SafeParcelable.e(id = 14) boolean z10, @Nullable @SafeParcelable.e(id = 15) String str2) {
        this.zza = i4;
        this.zzb = i10;
        this.zzc = i11;
        if ("com.google.android.gms".equals(str)) {
            this.zzd = "com.google.android.gms";
        } else {
            this.zzd = str;
        }
        if (i4 < 2) {
            this.zzh = iBinder != null ? a.z(m.a.x(iBinder)) : null;
        } else {
            this.zze = iBinder;
            this.zzh = account;
        }
        this.zzf = scopeArr;
        this.zzg = bundle;
        this.zzi = featureArr;
        this.zzj = featureArr2;
        this.zzk = z9;
        this.zzl = i12;
        this.zzm = z10;
        this.zzn = str2;
    }

    @NonNull
    @u2.a
    public Bundle getExtraArgs() {
        return this.zzg;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        z1.a(this, parcel, i4);
    }

    @Nullable
    public final String zza() {
        return this.zzn;
    }

    public GetServiceRequest(int i4, @Nullable String str) {
        this.zza = 6;
        this.zzc = com.google.android.gms.common.f.f29004a;
        this.zzb = i4;
        this.zzk = true;
        this.zzn = str;
    }
}
