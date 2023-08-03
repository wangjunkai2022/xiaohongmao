package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "FieldMapPairCreator")
@y
/* loaded from: classes2.dex */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new k();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(id = 2)
    final String zab;
    @SafeParcelable.c(id = 3)
    final FastJsonResponse.Field<?, ?> zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zam(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) String str, @SafeParcelable.e(id = 3) FastJsonResponse.Field<?, ?> field) {
        this.zaa = i4;
        this.zab = str;
        this.zac = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.Y(parcel, 2, this.zab, false);
        w2.a.S(parcel, 3, this.zac, i4, false);
        w2.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.zaa = 1;
        this.zab = str;
        this.zac = field;
    }
}
