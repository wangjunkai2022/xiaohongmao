package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.ksyun.media.streamer.logstats.StatsConstant;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "StatusCreator")
@u2.a
/* loaded from: classes2.dex */
public final class Status extends AbstractSafeParcelable implements q, ReflectedParcelable {
    @SafeParcelable.g(id = 1000)
    final int zzb;
    @SafeParcelable.c(getter = "getStatusCode", id = 1)
    private final int zzc;
    @Nullable
    @SafeParcelable.c(getter = "getStatusMessage", id = 2)
    private final String zzd;
    @Nullable
    @SafeParcelable.c(getter = "getPendingIntent", id = 3)
    private final PendingIntent zze;
    @Nullable
    @SafeParcelable.c(getter = "getConnectionResult", id = 4)
    private final ConnectionResult zzf;
    @NonNull
    @u2.a
    @com.google.android.gms.common.internal.y
    @y2.d0
    public static final Status RESULT_SUCCESS = new Status(0);
    @NonNull
    @u2.a
    @com.google.android.gms.common.internal.y
    public static final Status RESULT_INTERRUPTED = new Status(14);
    @NonNull
    @u2.a
    @com.google.android.gms.common.internal.y
    public static final Status RESULT_INTERNAL_ERROR = new Status(8);
    @NonNull
    @u2.a
    @com.google.android.gms.common.internal.y
    public static final Status RESULT_TIMEOUT = new Status(15);
    @NonNull
    @u2.a
    @com.google.android.gms.common.internal.y
    public static final Status RESULT_CANCELED = new Status(16);
    @NonNull
    @com.google.android.gms.common.internal.y
    public static final Status zza = new Status(17);
    @NonNull
    @u2.a
    public static final Status RESULT_DEAD_CLIENT = new Status(18);
    @NonNull
    public static final Parcelable.Creator<Status> CREATOR = new e0();

    @u2.a
    public Status(int i4) {
        this(i4, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @u2.a
    @SafeParcelable.b
    public Status(@SafeParcelable.e(id = 1000) int i4, @SafeParcelable.e(id = 1) int i10, @Nullable @SafeParcelable.e(id = 2) String str, @Nullable @SafeParcelable.e(id = 3) PendingIntent pendingIntent, @Nullable @SafeParcelable.e(id = 4) ConnectionResult connectionResult) {
        this.zzb = i4;
        this.zzc = i10;
        this.zzd = str;
        this.zze = pendingIntent;
        this.zzf = connectionResult;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Status) {
            Status status = (Status) obj;
            return this.zzb == status.zzb && this.zzc == status.zzc && com.google.android.gms.common.internal.s.b(this.zzd, status.zzd) && com.google.android.gms.common.internal.s.b(this.zze, status.zze) && com.google.android.gms.common.internal.s.b(this.zzf, status.zzf);
        }
        return false;
    }

    @Nullable
    public ConnectionResult getConnectionResult() {
        return this.zzf;
    }

    @Nullable
    public PendingIntent getResolution() {
        return this.zze;
    }

    @Override // com.google.android.gms.common.api.q
    @NonNull
    @u2.a
    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.zzc;
    }

    @Nullable
    public String getStatusMessage() {
        return this.zzd;
    }

    @y2.d0
    public boolean hasResolution() {
        return this.zze != null;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.s.c(Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), this.zzd, this.zze, this.zzf);
    }

    public boolean isCanceled() {
        return this.zzc == 16;
    }

    public boolean isInterrupted() {
        return this.zzc == 14;
    }

    public boolean isSuccess() {
        return this.zzc <= 0;
    }

    public void startResolutionForResult(@NonNull Activity activity, int i4) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.zze;
            com.google.android.gms.common.internal.u.k(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i4, null, 0, 0, 0);
        }
    }

    @NonNull
    public String toString() {
        s.a d4 = com.google.android.gms.common.internal.s.d(this);
        d4.a("statusCode", zza());
        d4.a(StatsConstant.RESOLUTION, this.zze);
        return d4.toString();
    }

    @Override // android.os.Parcelable
    @u2.a
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, getStatusCode());
        w2.a.Y(parcel, 2, getStatusMessage(), false);
        w2.a.S(parcel, 3, this.zze, i4, false);
        w2.a.S(parcel, 4, getConnectionResult(), i4, false);
        w2.a.F(parcel, 1000, this.zzb);
        w2.a.b(parcel, a10);
    }

    @NonNull
    public final String zza() {
        String str = this.zzd;
        return str != null ? str : f.a(this.zzc);
    }

    @u2.a
    Status(int i4, int i10, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(i4, i10, str, pendingIntent, null);
    }

    @u2.a
    public Status(int i4, @Nullable String str) {
        this(1, i4, str, null);
    }

    @u2.a
    public Status(int i4, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(1, i4, str, pendingIntent);
    }

    public Status(@NonNull ConnectionResult connectionResult, @NonNull String str) {
        this(connectionResult, str, 17);
    }

    @u2.a
    @Deprecated
    public Status(@NonNull ConnectionResult connectionResult, @NonNull String str, int i4) {
        this(1, i4, str, connectionResult.getResolution(), connectionResult);
    }
}
