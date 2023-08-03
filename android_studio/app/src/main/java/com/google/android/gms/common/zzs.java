package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.l2;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "GoogleCertificatesQueryCreator")
/* loaded from: classes2.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new i0();
    @SafeParcelable.c(getter = "getCallingPackage", id = 1)
    private final String zza;
    @r7.h
    @SafeParcelable.c(getter = "getCallingCertificateBinder", id = 2, type = "android.os.IBinder")
    private final a0 zzb;
    @SafeParcelable.c(getter = "getAllowTestKeys", id = 3)
    private final boolean zzc;
    @SafeParcelable.c(defaultValue = "false", getter = "getIgnoreTestKeysOverride", id = 4)
    private final boolean zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zzs(@SafeParcelable.e(id = 1) String str, @SafeParcelable.e(id = 2) @r7.h IBinder iBinder, @SafeParcelable.e(id = 3) boolean z9, @SafeParcelable.e(id = 4) boolean z10) {
        this.zza = str;
        b0 b0Var = null;
        if (iBinder != null) {
            try {
                com.google.android.gms.dynamic.d b10 = l2.x(iBinder).b();
                byte[] bArr = b10 == null ? null : (byte[]) com.google.android.gms.dynamic.f.z(b10);
                if (bArr != null) {
                    b0Var = new b0(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e4) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e4);
            }
        }
        this.zzb = b0Var;
        this.zzc = z9;
        this.zzd = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(String str, @r7.h a0 a0Var, boolean z9, boolean z10) {
        this.zza = str;
        this.zzb = a0Var;
        this.zzc = z9;
        this.zzd = z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.Y(parcel, 1, this.zza, false);
        a0 a0Var = this.zzb;
        if (a0Var == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            a0Var = null;
        }
        w2.a.B(parcel, 2, a0Var, false);
        w2.a.g(parcel, 3, this.zzc);
        w2.a.g(parcel, 4, this.zzd);
        w2.a.b(parcel, a10);
    }
}
