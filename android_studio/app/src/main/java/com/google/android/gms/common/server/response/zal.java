package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "FieldMappingDictionaryEntryCreator")
@y
/* loaded from: classes2.dex */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new m();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(id = 2)
    final String zab;
    @Nullable
    @SafeParcelable.c(id = 3)
    final ArrayList<zam> zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zal(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) String str, @SafeParcelable.e(id = 3) ArrayList<zam> arrayList) {
        this.zaa = i4;
        this.zab = str;
        this.zac = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.Y(parcel, 2, this.zab, false);
        w2.a.d0(parcel, 3, this.zac, false);
        w2.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zam> arrayList;
        this.zaa = 1;
        this.zab = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList<>();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, map.get(str2)));
            }
        }
        this.zac = arrayList;
    }
}
