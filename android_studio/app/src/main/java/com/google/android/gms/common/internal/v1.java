package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class v1 implements Parcelable.Creator<BinderWrapper> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BinderWrapper createFromParcel(Parcel parcel) {
        return new BinderWrapper(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BinderWrapper[] newArray(int i4) {
        return new BinderWrapper[i4];
    }
}
