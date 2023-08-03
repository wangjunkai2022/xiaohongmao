package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zav;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "SignInResponseCreator")
/* loaded from: classes2.dex */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new i();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(getter = "getConnectionResult", id = 2)
    private final ConnectionResult zab;
    @Nullable
    @SafeParcelable.c(getter = "getResolveAccountResponse", id = 3)
    private final zav zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zak(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) ConnectionResult connectionResult, @Nullable @SafeParcelable.e(id = 3) zav zavVar) {
        this.zaa = i4;
        this.zab = connectionResult;
        this.zac = zavVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.S(parcel, 2, this.zab, i4, false);
        w2.a.S(parcel, 3, this.zac, i4, false);
        w2.a.b(parcel, a10);
    }

    public final ConnectionResult zaa() {
        return this.zab;
    }

    @Nullable
    public final zav zab() {
        return this.zac;
    }
}
