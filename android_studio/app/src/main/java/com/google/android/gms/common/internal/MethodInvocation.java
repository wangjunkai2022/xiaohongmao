package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "MethodInvocationCreator")
@u2.a
/* loaded from: classes2.dex */
public class MethodInvocation extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new u0();
    @SafeParcelable.c(getter = "getMethodKey", id = 1)
    private final int zaa;
    @SafeParcelable.c(getter = "getResultStatusCode", id = 2)
    private final int zab;
    @SafeParcelable.c(getter = "getConnectionResultStatusCode", id = 3)
    private final int zac;
    @SafeParcelable.c(getter = "getStartTimeMillis", id = 4)
    private final long zad;
    @SafeParcelable.c(getter = "getEndTimeMillis", id = 5)
    private final long zae;
    @Nullable
    @SafeParcelable.c(getter = "getCallingModuleId", id = 6)
    private final String zaf;
    @Nullable
    @SafeParcelable.c(getter = "getCallingEntryPoint", id = 7)
    private final String zag;
    @SafeParcelable.c(defaultValue = "0", getter = "getServiceId", id = 8)
    private final int zah;
    @SafeParcelable.c(defaultValue = "-1", getter = "getLatencyMillis", id = 9)
    private final int zai;

    @u2.a
    @Deprecated
    public MethodInvocation(int i4, int i10, int i11, long j4, long j10, @Nullable String str, @Nullable String str2, int i12) {
        this(i4, i10, i11, j4, j10, str, str2, i12, -1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.F(parcel, 2, this.zab);
        w2.a.F(parcel, 3, this.zac);
        w2.a.K(parcel, 4, this.zad);
        w2.a.K(parcel, 5, this.zae);
        w2.a.Y(parcel, 6, this.zaf, false);
        w2.a.Y(parcel, 7, this.zag, false);
        w2.a.F(parcel, 8, this.zah);
        w2.a.F(parcel, 9, this.zai);
        w2.a.b(parcel, a10);
    }

    @SafeParcelable.b
    public MethodInvocation(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) int i10, @SafeParcelable.e(id = 3) int i11, @SafeParcelable.e(id = 4) long j4, @SafeParcelable.e(id = 5) long j10, @Nullable @SafeParcelable.e(id = 6) String str, @Nullable @SafeParcelable.e(id = 7) String str2, @SafeParcelable.e(id = 8) int i12, @SafeParcelable.e(id = 9) int i13) {
        this.zaa = i4;
        this.zab = i10;
        this.zac = i11;
        this.zad = j4;
        this.zae = j10;
        this.zaf = str;
        this.zag = str2;
        this.zah = i12;
        this.zai = i13;
    }
}
