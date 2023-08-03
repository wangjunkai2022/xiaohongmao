package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "ResolveAccountRequestCreator")
/* loaded from: classes2.dex */
public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new a1();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(getter = "getAccount", id = 2)
    private final Account zab;
    @SafeParcelable.c(getter = "getSessionId", id = 3)
    private final int zac;
    @Nullable
    @SafeParcelable.c(getter = "getSignInAccountHint", id = 4)
    private final GoogleSignInAccount zad;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zat(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) Account account, @SafeParcelable.e(id = 3) int i10, @Nullable @SafeParcelable.e(id = 4) GoogleSignInAccount googleSignInAccount) {
        this.zaa = i4;
        this.zab = account;
        this.zac = i10;
        this.zad = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.S(parcel, 2, this.zab, i4, false);
        w2.a.F(parcel, 3, this.zac);
        w2.a.S(parcel, 4, this.zad, i4, false);
        w2.a.b(parcel, a10);
    }

    public zat(Account account, int i4, @Nullable GoogleSignInAccount googleSignInAccount) {
        this(2, account, i4, googleSignInAccount);
    }
}
