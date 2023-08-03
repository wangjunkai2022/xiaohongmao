package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "FeatureCreator")
@u2.a
/* loaded from: classes2.dex */
public class Feature extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<Feature> CREATOR = new u();
    @SafeParcelable.c(getter = "getName", id = 1)
    private final String zza;
    @SafeParcelable.c(getter = "getOldVersion", id = 2)
    @Deprecated
    private final int zzb;
    @SafeParcelable.c(defaultValue = "-1", getter = "getVersion", id = 3)
    private final long zzc;

    @SafeParcelable.b
    public Feature(@NonNull @SafeParcelable.e(id = 1) String str, @SafeParcelable.e(id = 2) int i4, @SafeParcelable.e(id = 3) long j4) {
        this.zza = str;
        this.zzb = i4;
        this.zzc = j4;
    }

    @u2.a
    public Feature(@NonNull String str, long j4) {
        this.zza = str;
        this.zzc = j4;
        this.zzb = -1;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (((getName() != null && getName().equals(feature.getName())) || (getName() == null && feature.getName() == null)) && getVersion() == feature.getVersion()) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    @u2.a
    public String getName() {
        return this.zza;
    }

    @u2.a
    public long getVersion() {
        long j4 = this.zzc;
        return j4 == -1 ? this.zzb : j4;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.s.c(getName(), Long.valueOf(getVersion()));
    }

    @NonNull
    public final String toString() {
        s.a d4 = com.google.android.gms.common.internal.s.d(this);
        d4.a("name", getName());
        d4.a("version", Long.valueOf(getVersion()));
        return d4.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.Y(parcel, 1, getName(), false);
        w2.a.F(parcel, 2, this.zzb);
        w2.a.K(parcel, 3, getVersion());
        w2.a.b(parcel, a10);
    }
}
