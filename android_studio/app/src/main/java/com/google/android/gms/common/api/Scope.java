package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "ScopeCreator")
@u2.a
/* loaded from: classes2.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<Scope> CREATOR = new d0();
    @SafeParcelable.g(id = 1)
    final int zza;
    @SafeParcelable.c(getter = "getScopeUri", id = 2)
    private final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public Scope(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) String str) {
        com.google.android.gms.common.internal.u.h(str, "scopeUri must not be null or empty");
        this.zza = i4;
        this.zzb = str;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.zzb.equals(((Scope) obj).zzb);
        }
        return false;
    }

    @NonNull
    @u2.a
    public String getScopeUri() {
        return this.zzb;
    }

    public int hashCode() {
        return this.zzb.hashCode();
    }

    @NonNull
    public String toString() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zza);
        w2.a.Y(parcel, 2, getScopeUri(), false);
        w2.a.b(parcel, a10);
    }

    public Scope(@NonNull String str) {
        this(1, str);
    }
}
