package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "GoogleCertificatesLookupResponseCreator")
/* loaded from: classes2.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new h0();
    @SafeParcelable.c(getter = "getResult", id = 1)
    private final boolean zza;
    @r7.h
    @SafeParcelable.c(getter = "getErrorMessage", id = 2)
    private final String zzb;
    @SafeParcelable.c(getter = "getStatusValue", id = 3)
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zzq(@SafeParcelable.e(id = 1) boolean z9, @SafeParcelable.e(id = 2) String str, @SafeParcelable.e(id = 3) int i4) {
        this.zza = z9;
        this.zzb = str;
        this.zzc = g0.a(i4) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.g(parcel, 1, this.zza);
        w2.a.Y(parcel, 2, this.zzb, false);
        w2.a.F(parcel, 3, this.zzc);
        w2.a.b(parcel, a10);
    }

    @r7.h
    public final String zza() {
        return this.zzb;
    }

    public final boolean zzb() {
        return this.zza;
    }

    public final int zzc() {
        return g0.a(this.zzc);
    }
}
