package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import r7.h;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "WakeLockEventCreator")
@u2.a
@Deprecated
/* loaded from: classes2.dex */
public final class WakeLockEvent extends StatsEvent {
    @NonNull
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new e();
    @SafeParcelable.g(id = 1)
    final int zza;
    @SafeParcelable.c(getter = "getTimeMillis", id = 2)
    private final long zzb;
    @SafeParcelable.c(getter = "getEventType", id = 11)
    private int zzc;
    @SafeParcelable.c(getter = "getWakeLockName", id = 4)
    private final String zzd;
    @SafeParcelable.c(getter = "getSecondaryWakeLockName", id = 10)
    private final String zze;
    @SafeParcelable.c(getter = "getCodePackage", id = 17)
    private final String zzf;
    @SafeParcelable.c(getter = "getWakeLockType", id = 5)
    private final int zzg;
    @h
    @SafeParcelable.c(getter = "getCallingPackages", id = 6)
    private final List<String> zzh;
    @SafeParcelable.c(getter = "getEventKey", id = 12)
    private final String zzi;
    @SafeParcelable.c(getter = "getElapsedRealtime", id = 8)
    private final long zzj;
    @SafeParcelable.c(getter = "getDeviceState", id = 14)
    private int zzk;
    @SafeParcelable.c(getter = "getHostPackage", id = 13)
    private final String zzl;
    @SafeParcelable.c(getter = "getBeginPowerPercentage", id = 15)
    private final float zzm;
    @SafeParcelable.c(getter = "getTimeout", id = 16)
    private final long zzn;
    @SafeParcelable.c(getter = "getAcquiredWithTimeout", id = 18)
    private final boolean zzo;
    private long zzp = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public WakeLockEvent(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) long j4, @SafeParcelable.e(id = 11) int i10, @SafeParcelable.e(id = 4) String str, @SafeParcelable.e(id = 5) int i11, @SafeParcelable.e(id = 6) @h List<String> list, @SafeParcelable.e(id = 12) String str2, @SafeParcelable.e(id = 8) long j10, @SafeParcelable.e(id = 14) int i12, @SafeParcelable.e(id = 10) String str3, @SafeParcelable.e(id = 13) String str4, @SafeParcelable.e(id = 15) float f10, @SafeParcelable.e(id = 16) long j11, @SafeParcelable.e(id = 17) String str5, @SafeParcelable.e(id = 18) boolean z9) {
        this.zza = i4;
        this.zzb = j4;
        this.zzc = i10;
        this.zzd = str;
        this.zze = str3;
        this.zzf = str5;
        this.zzg = i11;
        this.zzh = list;
        this.zzi = str2;
        this.zzj = j10;
        this.zzk = i12;
        this.zzl = str4;
        this.zzm = f10;
        this.zzn = j11;
        this.zzo = z9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zza);
        w2.a.K(parcel, 2, this.zzb);
        w2.a.Y(parcel, 4, this.zzd, false);
        w2.a.F(parcel, 5, this.zzg);
        w2.a.a0(parcel, 6, this.zzh, false);
        w2.a.K(parcel, 8, this.zzj);
        w2.a.Y(parcel, 10, this.zze, false);
        w2.a.F(parcel, 11, this.zzc);
        w2.a.Y(parcel, 12, this.zzi, false);
        w2.a.Y(parcel, 13, this.zzl, false);
        w2.a.F(parcel, 14, this.zzk);
        w2.a.w(parcel, 15, this.zzm);
        w2.a.K(parcel, 16, this.zzn);
        w2.a.Y(parcel, 17, this.zzf, false);
        w2.a.g(parcel, 18, this.zzo);
        w2.a.b(parcel, a10);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzb() {
        return this.zzp;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    @NonNull
    public final String zzd() {
        List<String> list = this.zzh;
        String str = this.zzd;
        int i4 = this.zzg;
        String join = list == null ? "" : TextUtils.join(",", list);
        int i10 = this.zzk;
        String str2 = this.zze;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this.zzl;
        if (str3 == null) {
            str3 = "";
        }
        float f10 = this.zzm;
        String str4 = this.zzf;
        String str5 = str4 != null ? str4 : "";
        boolean z9 = this.zzo;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(join).length() + str2.length() + str3.length() + str5.length());
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i4);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(i10);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(str3);
        sb.append("\t");
        sb.append(f10);
        sb.append("\t");
        sb.append(str5);
        sb.append("\t");
        sb.append(z9);
        return sb.toString();
    }
}
