package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "RecordConsentByConsentResultResponseCreator")
/* loaded from: classes2.dex */
public final class zag extends AbstractSafeParcelable implements q {
    public static final Parcelable.Creator<zag> CREATOR = new g();
    @SafeParcelable.c(getter = "getGrantedScopes", id = 1)
    private final List<String> zaa;
    @Nullable
    @SafeParcelable.c(getter = "getToken", id = 2)
    private final String zab;

    @SafeParcelable.b
    public zag(@SafeParcelable.e(id = 1) List<String> list, @Nullable @SafeParcelable.e(id = 2) String str) {
        this.zaa = list;
        this.zab = str;
    }

    @Override // com.google.android.gms.common.api.q
    public final Status getStatus() {
        return this.zab != null ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.a0(parcel, 1, this.zaa, false);
        w2.a.Y(parcel, 2, this.zab, false);
        w2.a.b(parcel, a10);
    }
}
