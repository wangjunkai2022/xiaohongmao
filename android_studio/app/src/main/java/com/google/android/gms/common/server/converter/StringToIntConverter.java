package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "StringToIntConverterCreator")
@u2.a
/* loaded from: classes2.dex */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.a<String, Integer> {
    @NonNull
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new b();
    @SafeParcelable.g(id = 1)
    final int zaa;
    private final HashMap<String, Integer> zab;
    private final SparseArray<String> zac;

    @u2.a
    public StringToIntConverter() {
        this.zaa = 1;
        this.zab = new HashMap<>();
        this.zac = new SparseArray<>();
    }

    @NonNull
    @u2.a
    public StringToIntConverter add(@NonNull String str, int i4) {
        this.zab.put(str, Integer.valueOf(i4));
        this.zac.put(i4, str);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        ArrayList arrayList = new ArrayList();
        for (String str : this.zab.keySet()) {
            arrayList.add(new zac(str, this.zab.get(str).intValue()));
        }
        w2.a.d0(parcel, 2, arrayList, false);
        w2.a.b(parcel, a10);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.a
    public final int zaa() {
        return 7;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.a
    public final int zab() {
        return 0;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.a
    @Nullable
    public final /* bridge */ /* synthetic */ Integer zac(@NonNull String str) {
        Integer num = this.zab.get(str);
        return num == null ? this.zab.get("gms_unknown") : num;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.a
    @NonNull
    public final /* bridge */ /* synthetic */ String zad(@NonNull Integer num) {
        String str = this.zac.get(num.intValue());
        return (str == null && this.zab.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public StringToIntConverter(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) ArrayList<zac> arrayList) {
        this.zaa = i4;
        this.zab = new HashMap<>();
        this.zac = new SparseArray<>();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zac zacVar = arrayList.get(i10);
            add(zacVar.zab, zacVar.zac);
        }
    }
}
