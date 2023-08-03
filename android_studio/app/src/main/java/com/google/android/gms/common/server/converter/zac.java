package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "StringToIntConverterEntryCreator")
/* loaded from: classes2.dex */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new c();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(id = 2)
    final String zab;
    @SafeParcelable.c(id = 3)
    final int zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zac(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) String str, @SafeParcelable.e(id = 3) int i10) {
        this.zaa = i4;
        this.zab = str;
        this.zac = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.Y(parcel, 2, this.zab, false);
        w2.a.F(parcel, 3, this.zac);
        w2.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zac(String str, int i4) {
        this.zaa = 1;
        this.zab = str;
        this.zac = i4;
    }
}
