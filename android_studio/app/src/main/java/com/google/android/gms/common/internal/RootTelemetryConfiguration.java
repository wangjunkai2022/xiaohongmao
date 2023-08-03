package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "RootTelemetryConfigurationCreator")
@u2.a
/* loaded from: classes2.dex */
public class RootTelemetryConfiguration extends AbstractSafeParcelable {
    @NonNull
    @u2.a
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new n1();
    @SafeParcelable.c(getter = "getVersion", id = 1)
    private final int zza;
    @SafeParcelable.c(getter = "getMethodInvocationTelemetryEnabled", id = 2)
    private final boolean zzb;
    @SafeParcelable.c(getter = "getMethodTimingTelemetryEnabled", id = 3)
    private final boolean zzc;
    @SafeParcelable.c(getter = "getBatchPeriodMillis", id = 4)
    private final int zzd;
    @SafeParcelable.c(getter = "getMaxMethodInvocationsInBatch", id = 5)
    private final int zze;

    @SafeParcelable.b
    public RootTelemetryConfiguration(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) boolean z9, @SafeParcelable.e(id = 3) boolean z10, @SafeParcelable.e(id = 4) int i10, @SafeParcelable.e(id = 5) int i11) {
        this.zza = i4;
        this.zzb = z9;
        this.zzc = z10;
        this.zzd = i10;
        this.zze = i11;
    }

    @u2.a
    public int getBatchPeriodMillis() {
        return this.zzd;
    }

    @u2.a
    public int getMaxMethodInvocationsInBatch() {
        return this.zze;
    }

    @u2.a
    public boolean getMethodInvocationTelemetryEnabled() {
        return this.zzb;
    }

    @u2.a
    public boolean getMethodTimingTelemetryEnabled() {
        return this.zzc;
    }

    @u2.a
    public int getVersion() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, getVersion());
        w2.a.g(parcel, 2, getMethodInvocationTelemetryEnabled());
        w2.a.g(parcel, 3, getMethodTimingTelemetryEnabled());
        w2.a.F(parcel, 4, getBatchPeriodMillis());
        w2.a.F(parcel, 5, getMaxMethodInvocationsInBatch());
        w2.a.b(parcel, a10);
    }
}
