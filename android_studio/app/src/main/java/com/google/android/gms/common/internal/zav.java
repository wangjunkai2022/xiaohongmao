package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "ResolveAccountResponseCreator")
/* loaded from: classes2.dex */
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new b1();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @Nullable
    @SafeParcelable.c(id = 2)
    final IBinder zab;
    @SafeParcelable.c(getter = "getConnectionResult", id = 3)
    private final ConnectionResult zac;
    @SafeParcelable.c(getter = "getSaveDefaultAccount", id = 4)
    private final boolean zad;
    @SafeParcelable.c(getter = "isFromCrossClientAuth", id = 5)
    private final boolean zae;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zav(@SafeParcelable.e(id = 1) int i4, @Nullable @SafeParcelable.e(id = 2) IBinder iBinder, @SafeParcelable.e(id = 3) ConnectionResult connectionResult, @SafeParcelable.e(id = 4) boolean z9, @SafeParcelable.e(id = 5) boolean z10) {
        this.zaa = i4;
        this.zab = iBinder;
        this.zac = connectionResult;
        this.zad = z9;
        this.zae = z10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof zav) {
            zav zavVar = (zav) obj;
            return this.zac.equals(zavVar.zac) && s.b(zab(), zavVar.zab());
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.B(parcel, 2, this.zab, false);
        w2.a.S(parcel, 3, this.zac, i4, false);
        w2.a.g(parcel, 4, this.zad);
        w2.a.g(parcel, 5, this.zae);
        w2.a.b(parcel, a10);
    }

    public final ConnectionResult zaa() {
        return this.zac;
    }

    @Nullable
    public final m zab() {
        IBinder iBinder = this.zab;
        if (iBinder == null) {
            return null;
        }
        return m.a.x(iBinder);
    }

    public final boolean zac() {
        return this.zad;
    }

    public final boolean zad() {
        return this.zae;
    }
}
