package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "GoogleSignInOptionsExtensionCreator")
/* loaded from: classes2.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new c();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(getter = "getType", id = 2)
    private int zab;
    @SafeParcelable.c(getter = "getBundle", id = 3)
    private Bundle zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public GoogleSignInOptionsExtensionParcelable(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) int i10, @SafeParcelable.e(id = 3) Bundle bundle) {
        this.zaa = i4;
        this.zab = i10;
        this.zac = bundle;
    }

    @u2.a
    public int getType() {
        return this.zab;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.F(parcel, 2, getType());
        w2.a.k(parcel, 3, this.zac, false);
        w2.a.b(parcel, a10);
    }

    public GoogleSignInOptionsExtensionParcelable(@NonNull com.google.android.gms.auth.api.signin.a aVar) {
        this(1, aVar.a(), aVar.toBundle());
    }
}
