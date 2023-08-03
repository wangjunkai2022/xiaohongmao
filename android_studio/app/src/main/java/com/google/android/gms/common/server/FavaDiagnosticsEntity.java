package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "FavaDiagnosticsEntityCreator")
@u2.a
/* loaded from: classes2.dex */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    @u2.a
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new a();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @NonNull
    @SafeParcelable.c(id = 2)
    public final String zab;
    @SafeParcelable.c(id = 3)
    public final int zac;

    @SafeParcelable.b
    public FavaDiagnosticsEntity(@SafeParcelable.e(id = 1) int i4, @NonNull @SafeParcelable.e(id = 2) String str, @SafeParcelable.e(id = 3) int i10) {
        this.zaa = i4;
        this.zab = str;
        this.zac = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.Y(parcel, 2, this.zab, false);
        w2.a.F(parcel, 3, this.zac);
        w2.a.b(parcel, a10);
    }

    @u2.a
    public FavaDiagnosticsEntity(@NonNull String str, int i4) {
        this.zaa = 1;
        this.zab = str;
        this.zac = i4;
    }
}
