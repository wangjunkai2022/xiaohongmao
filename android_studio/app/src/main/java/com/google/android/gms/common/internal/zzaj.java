package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@SafeParcelable.a(creator = "ValidateAccountRequestCreator")
@Deprecated
/* loaded from: classes2.dex */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new o1();
    @SafeParcelable.g(id = 1)
    final int zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zzaj(@SafeParcelable.e(id = 1) int i4) {
        this.zza = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zza);
        w2.a.b(parcel, a10);
    }
}
