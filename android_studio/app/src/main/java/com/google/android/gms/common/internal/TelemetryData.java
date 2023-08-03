package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "TelemetryDataCreator")
@u2.a
/* loaded from: classes2.dex */
public class TelemetryData extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<TelemetryData> CREATOR = new f0();
    @SafeParcelable.c(getter = "getTelemetryConfigVersion", id = 1)
    private final int zaa;
    @r7.h
    @SafeParcelable.c(getter = "getMethodInvocations", id = 2)
    private List<MethodInvocation> zab;

    @SafeParcelable.b
    public TelemetryData(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) @r7.h List<MethodInvocation> list) {
        this.zaa = i4;
        this.zab = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.d0(parcel, 2, this.zab, false);
        w2.a.b(parcel, a10);
    }

    public final int zaa() {
        return this.zaa;
    }

    @Nullable
    public final List<MethodInvocation> zab() {
        return this.zab;
    }

    public final void zac(@NonNull MethodInvocation methodInvocation) {
        if (this.zab == null) {
            this.zab = new ArrayList();
        }
        this.zab.add(methodInvocation);
    }
}
