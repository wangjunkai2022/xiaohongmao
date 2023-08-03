package com.google.android.gms.common.stats;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@Deprecated
/* loaded from: classes2.dex */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface a {
        @u2.a

        /* renamed from: a  reason: collision with root package name */
        public static final int f29281a = 7;
        @u2.a

        /* renamed from: b  reason: collision with root package name */
        public static final int f29282b = 8;
    }

    @NonNull
    public final String toString() {
        long zzc = zzc();
        int zza = zza();
        long zzb = zzb();
        String zzd = zzd();
        StringBuilder sb = new StringBuilder(zzd.length() + 53);
        sb.append(zzc);
        sb.append("\t");
        sb.append(zza);
        sb.append("\t");
        sb.append(zzb);
        sb.append(zzd);
        return sb.toString();
    }

    public abstract int zza();

    public abstract long zzb();

    public abstract long zzc();

    @NonNull
    public abstract String zzd();
}
