package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "AuthAccountResultCreator")
/* loaded from: classes2.dex */
public final class zaa extends AbstractSafeParcelable implements q {
    public static final Parcelable.Creator<zaa> CREATOR = new b();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(getter = "getConnectionResultCode", id = 2)
    private int zab;
    @Nullable
    @SafeParcelable.c(getter = "getRawAuthResolutionIntent", id = 3)
    private Intent zac;

    public zaa() {
        this(2, 0, null);
    }

    @Override // com.google.android.gms.common.api.q
    public final Status getStatus() {
        return this.zab == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.F(parcel, 2, this.zab);
        w2.a.S(parcel, 3, this.zac, i4, false);
        w2.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zaa(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) int i10, @Nullable @SafeParcelable.e(id = 3) Intent intent) {
        this.zaa = i4;
        this.zab = i10;
        this.zac = intent;
    }
}
