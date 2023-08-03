package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "ClientIdentityCreator")
@u2.a
@SafeParcelable.f({1000})
/* loaded from: classes2.dex */
public class ClientIdentity extends AbstractSafeParcelable {
    @NonNull
    @u2.a
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new e0();
    @Nullable
    @u2.a
    @SafeParcelable.c(defaultValueUnchecked = "null", id = 2)
    public final String packageName;
    @u2.a
    @SafeParcelable.c(defaultValueUnchecked = "0", id = 1)
    public final int uid;

    @SafeParcelable.b
    public ClientIdentity(@SafeParcelable.e(id = 1) int i4, @Nullable @SafeParcelable.e(id = 2) String str) {
        this.uid = i4;
        this.packageName = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ClientIdentity) {
            ClientIdentity clientIdentity = (ClientIdentity) obj;
            return clientIdentity.uid == this.uid && s.b(clientIdentity.packageName, this.packageName);
        }
        return false;
    }

    public final int hashCode() {
        return this.uid;
    }

    @NonNull
    public final String toString() {
        int i4 = this.uid;
        String str = this.packageName;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i4);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.uid);
        w2.a.Y(parcel, 2, this.packageName, false);
        w2.a.b(parcel, a10);
    }
}
