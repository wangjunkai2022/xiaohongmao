package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.ksyun.media.streamer.logstats.StatsConstant;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "ConnectionResultCreator")
/* loaded from: classes2.dex */
public final class ConnectionResult extends AbstractSafeParcelable {
    public static final int API_DISABLED = 23;
    public static final int API_DISABLED_FOR_CONNECTION = 24;
    public static final int API_UNAVAILABLE = 16;
    public static final int CANCELED = 13;
    public static final int DEVELOPER_ERROR = 10;
    @Deprecated
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_ACTIVITY_NOT_FOUND = 22;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int RESTRICTED_PROFILE = 20;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_MISSING_PERMISSION = 19;
    public static final int SERVICE_UPDATING = 18;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 17;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;
    @u2.a
    public static final int UNKNOWN = -1;
    @SafeParcelable.g(id = 1)
    final int zza;
    @SafeParcelable.c(getter = "getErrorCode", id = 2)
    private final int zzb;
    @Nullable
    @SafeParcelable.c(getter = "getResolution", id = 3)
    private final PendingIntent zzc;
    @Nullable
    @SafeParcelable.c(getter = "getErrorMessage", id = 4)
    private final String zzd;
    @NonNull
    @u2.a
    @com.google.android.gms.common.internal.y
    public static final ConnectionResult RESULT_SUCCESS = new ConnectionResult(0);
    @NonNull
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new t();

    public ConnectionResult(int i4) {
        this(i4, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public ConnectionResult(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) int i10, @Nullable @SafeParcelable.e(id = 3) PendingIntent pendingIntent, @Nullable @SafeParcelable.e(id = 4) String str) {
        this.zza = i4;
        this.zzb = i10;
        this.zzc = pendingIntent;
        this.zzd = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static String zza(int i4) {
        if (i4 != 99) {
            if (i4 != 1500) {
                switch (i4) {
                    case -1:
                        return "UNKNOWN";
                    case 0:
                        return "SUCCESS";
                    case 1:
                        return "SERVICE_MISSING";
                    case 2:
                        return "SERVICE_VERSION_UPDATE_REQUIRED";
                    case 3:
                        return "SERVICE_DISABLED";
                    case 4:
                        return "SIGN_IN_REQUIRED";
                    case 5:
                        return "INVALID_ACCOUNT";
                    case 6:
                        return "RESOLUTION_REQUIRED";
                    case 7:
                        return "NETWORK_ERROR";
                    case 8:
                        return "INTERNAL_ERROR";
                    case 9:
                        return "SERVICE_INVALID";
                    case 10:
                        return "DEVELOPER_ERROR";
                    case 11:
                        return "LICENSE_CHECK_FAILED";
                    default:
                        switch (i4) {
                            case 13:
                                return "CANCELED";
                            case 14:
                                return "TIMEOUT";
                            case 15:
                                return "INTERRUPTED";
                            case 16:
                                return "API_UNAVAILABLE";
                            case 17:
                                return "SIGN_IN_FAILED";
                            case 18:
                                return "SERVICE_UPDATING";
                            case 19:
                                return "SERVICE_MISSING_PERMISSION";
                            case 20:
                                return "RESTRICTED_PROFILE";
                            case 21:
                                return "API_VERSION_UPDATE_REQUIRED";
                            case 22:
                                return "RESOLUTION_ACTIVITY_NOT_FOUND";
                            case 23:
                                return "API_DISABLED";
                            case 24:
                                return "API_DISABLED_FOR_CONNECTION";
                            default:
                                StringBuilder sb = new StringBuilder(31);
                                sb.append("UNKNOWN_ERROR_CODE(");
                                sb.append(i4);
                                sb.append(")");
                                return sb.toString();
                        }
                }
            }
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        return "UNFINISHED";
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ConnectionResult) {
            ConnectionResult connectionResult = (ConnectionResult) obj;
            return this.zzb == connectionResult.zzb && com.google.android.gms.common.internal.s.b(this.zzc, connectionResult.zzc) && com.google.android.gms.common.internal.s.b(this.zzd, connectionResult.zzd);
        }
        return false;
    }

    public int getErrorCode() {
        return this.zzb;
    }

    @Nullable
    public String getErrorMessage() {
        return this.zzd;
    }

    @Nullable
    public PendingIntent getResolution() {
        return this.zzc;
    }

    public boolean hasResolution() {
        return (this.zzb == 0 || this.zzc == null) ? false : true;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.s.c(Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public boolean isSuccess() {
        return this.zzb == 0;
    }

    public void startResolutionForResult(@NonNull Activity activity, int i4) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.zzc;
            com.google.android.gms.common.internal.u.k(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i4, null, 0, 0, 0);
        }
    }

    @NonNull
    public String toString() {
        s.a d4 = com.google.android.gms.common.internal.s.d(this);
        d4.a("statusCode", zza(this.zzb));
        d4.a(StatsConstant.RESOLUTION, this.zzc);
        d4.a("message", this.zzd);
        return d4.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zza);
        w2.a.F(parcel, 2, getErrorCode());
        w2.a.S(parcel, 3, getResolution(), i4, false);
        w2.a.Y(parcel, 4, getErrorMessage(), false);
        w2.a.b(parcel, a10);
    }

    public ConnectionResult(int i4, @Nullable PendingIntent pendingIntent) {
        this(i4, pendingIntent, null);
    }

    public ConnectionResult(int i4, @Nullable PendingIntent pendingIntent, @Nullable String str) {
        this(1, i4, pendingIntent, str);
    }
}
