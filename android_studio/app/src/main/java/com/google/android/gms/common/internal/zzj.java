package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "ConnectionInfoCreator")
/* loaded from: classes2.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new x1();
    @SafeParcelable.c(id = 1)
    Bundle zza;
    @SafeParcelable.c(id = 2)
    Feature[] zzb;
    @SafeParcelable.c(defaultValue = "0", id = 3)
    int zzc;
    @Nullable
    @SafeParcelable.c(id = 4)
    ConnectionTelemetryConfiguration zzd;

    public zzj() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zzj(@SafeParcelable.e(id = 1) Bundle bundle, @SafeParcelable.e(id = 2) Feature[] featureArr, @SafeParcelable.e(id = 3) int i4, @Nullable @SafeParcelable.e(id = 4) ConnectionTelemetryConfiguration connectionTelemetryConfiguration) {
        this.zza = bundle;
        this.zzb = featureArr;
        this.zzc = i4;
        this.zzd = connectionTelemetryConfiguration;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.k(parcel, 1, this.zza, false);
        w2.a.c0(parcel, 2, this.zzb, i4, false);
        w2.a.F(parcel, 3, this.zzc);
        w2.a.S(parcel, 4, this.zzd, i4, false);
        w2.a.b(parcel, a10);
    }
}
