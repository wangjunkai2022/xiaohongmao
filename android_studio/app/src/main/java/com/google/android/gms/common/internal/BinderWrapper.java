package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepName;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@KeepName
/* loaded from: classes2.dex */
public final class BinderWrapper implements Parcelable {
    @NonNull
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new v1();
    private IBinder zza;

    @u2.a
    public BinderWrapper(@NonNull IBinder iBinder) {
        this.zza = iBinder;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        parcel.writeStrongBinder(this.zza);
    }
}
