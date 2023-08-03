package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zat;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "SignInRequestCreator")
/* loaded from: classes2.dex */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new h();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(getter = "getResolveAccountRequest", id = 2)
    final zat zab;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zai(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) zat zatVar) {
        this.zaa = i4;
        this.zab = zatVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.S(parcel, 2, this.zab, i4, false);
        w2.a.b(parcel, a10);
    }
}
