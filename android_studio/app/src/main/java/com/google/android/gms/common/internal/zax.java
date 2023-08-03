package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "SignInButtonConfigCreator")
/* loaded from: classes2.dex */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new c1();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(getter = "getButtonSize", id = 2)
    private final int zab;
    @SafeParcelable.c(getter = "getColorScheme", id = 3)
    private final int zac;
    @Nullable
    @SafeParcelable.c(getter = "getScopes", id = 4)
    @Deprecated
    private final Scope[] zad;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zax(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) int i10, @SafeParcelable.e(id = 3) int i11, @Nullable @SafeParcelable.e(id = 4) Scope[] scopeArr) {
        this.zaa = i4;
        this.zab = i10;
        this.zac = i11;
        this.zad = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.F(parcel, 2, this.zab);
        w2.a.F(parcel, 3, this.zac);
        w2.a.c0(parcel, 4, this.zad, i4, false);
        w2.a.b(parcel, a10);
    }
}
