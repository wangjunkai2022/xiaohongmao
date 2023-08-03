package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "GoogleCertificatesLookupQueryCreator")
/* loaded from: classes2.dex */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new f0();
    @SafeParcelable.c(getter = "getCallingPackage", id = 1)
    private final String zza;
    @SafeParcelable.c(getter = "getAllowTestKeys", id = 2)
    private final boolean zzb;
    @SafeParcelable.c(defaultValue = "false", getter = "getIgnoreTestKeysOverride", id = 3)
    private final boolean zzc;
    @SafeParcelable.c(getter = "getCallingContextBinder", id = 4, type = "android.os.IBinder")
    private final Context zzd;
    @SafeParcelable.c(getter = "getIsChimeraPackage", id = 5)
    private final boolean zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zzn(@SafeParcelable.e(id = 1) String str, @SafeParcelable.e(id = 2) boolean z9, @SafeParcelable.e(id = 3) boolean z10, @SafeParcelable.e(id = 4) IBinder iBinder, @SafeParcelable.e(id = 5) boolean z11) {
        this.zza = str;
        this.zzb = z9;
        this.zzc = z10;
        this.zzd = (Context) com.google.android.gms.dynamic.f.z(d.a.x(iBinder));
        this.zze = z11;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.dynamic.d, android.os.IBinder] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.Y(parcel, 1, this.zza, false);
        w2.a.g(parcel, 2, this.zzb);
        w2.a.g(parcel, 3, this.zzc);
        w2.a.B(parcel, 4, com.google.android.gms.dynamic.f.n1(this.zzd), false);
        w2.a.g(parcel, 5, this.zze);
        w2.a.b(parcel, a10);
    }
}
