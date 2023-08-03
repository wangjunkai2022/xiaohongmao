package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "ConnectionTelemetryConfigurationCreator")
@u2.a
/* loaded from: classes2.dex */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    @NonNull
    @u2.a
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new y1();
    @SafeParcelable.c(getter = "getRootTelemetryConfiguration", id = 1)
    private final RootTelemetryConfiguration zza;
    @SafeParcelable.c(getter = "getMethodInvocationTelemetryEnabled", id = 2)
    private final boolean zzb;
    @SafeParcelable.c(getter = "getMethodTimingTelemetryEnabled", id = 3)
    private final boolean zzc;
    @Nullable
    @SafeParcelable.c(getter = "getMethodInvocationMethodKeyAllowlist", id = 4)
    private final int[] zzd;
    @SafeParcelable.c(getter = "getMaxMethodInvocationsLogged", id = 5)
    private final int zze;
    @Nullable
    @SafeParcelable.c(getter = "getMethodInvocationMethodKeyDisallowlist", id = 6)
    private final int[] zzf;

    @SafeParcelable.b
    public ConnectionTelemetryConfiguration(@NonNull @SafeParcelable.e(id = 1) RootTelemetryConfiguration rootTelemetryConfiguration, @SafeParcelable.e(id = 2) boolean z9, @SafeParcelable.e(id = 3) boolean z10, @Nullable @SafeParcelable.e(id = 4) int[] iArr, @SafeParcelable.e(id = 5) int i4, @Nullable @SafeParcelable.e(id = 6) int[] iArr2) {
        this.zza = rootTelemetryConfiguration;
        this.zzb = z9;
        this.zzc = z10;
        this.zzd = iArr;
        this.zze = i4;
        this.zzf = iArr2;
    }

    @u2.a
    public int getMaxMethodInvocationsLogged() {
        return this.zze;
    }

    @Nullable
    @u2.a
    public int[] getMethodInvocationMethodKeyAllowlist() {
        return this.zzd;
    }

    @Nullable
    @u2.a
    public int[] getMethodInvocationMethodKeyDisallowlist() {
        return this.zzf;
    }

    @u2.a
    public boolean getMethodInvocationTelemetryEnabled() {
        return this.zzb;
    }

    @u2.a
    public boolean getMethodTimingTelemetryEnabled() {
        return this.zzc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.S(parcel, 1, this.zza, i4, false);
        w2.a.g(parcel, 2, getMethodInvocationTelemetryEnabled());
        w2.a.g(parcel, 3, getMethodTimingTelemetryEnabled());
        w2.a.G(parcel, 4, getMethodInvocationMethodKeyAllowlist(), false);
        w2.a.F(parcel, 5, getMaxMethodInvocationsLogged());
        w2.a.G(parcel, 6, getMethodInvocationMethodKeyDisallowlist(), false);
        w2.a.b(parcel, a10);
    }

    @NonNull
    public final RootTelemetryConfiguration zza() {
        return this.zza;
    }
}
