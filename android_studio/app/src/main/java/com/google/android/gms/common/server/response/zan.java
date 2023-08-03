package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "FieldMappingDictionaryCreator")
@y
/* loaded from: classes2.dex */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new l();
    @SafeParcelable.g(id = 1)
    final int zaa;
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> zab;
    @SafeParcelable.c(getter = "getRootClassName", id = 3)
    private final String zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zan(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) ArrayList<zal> arrayList, @SafeParcelable.e(id = 3) String str) {
        this.zaa = i4;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zal zalVar = arrayList.get(i10);
            String str2 = zalVar.zab;
            HashMap hashMap2 = new HashMap();
            int size2 = ((ArrayList) u.k(zalVar.zac)).size();
            for (int i11 = 0; i11 < size2; i11++) {
                zam zamVar = zalVar.zac.get(i11);
                hashMap2.put(zamVar.zab, zamVar.zac);
            }
            hashMap.put(str2, hashMap2);
        }
        this.zab = hashMap;
        this.zac = (String) u.k(str);
        zad();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.zab.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zab.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        ArrayList arrayList = new ArrayList();
        for (String str : this.zab.keySet()) {
            arrayList.add(new zal(str, this.zab.get(str)));
        }
        w2.a.d0(parcel, 2, arrayList, false);
        w2.a.Y(parcel, 3, this.zac, false);
        w2.a.b(parcel, a10);
    }

    public final String zaa() {
        return this.zac;
    }

    @Nullable
    public final Map<String, FastJsonResponse.Field<?, ?>> zab(String str) {
        return this.zab.get(str);
    }

    public final void zac() {
        for (String str : this.zab.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zab.get(str);
            HashMap hashMap = new HashMap();
            for (String str2 : map.keySet()) {
                hashMap.put(str2, map.get(str2).zab());
            }
            this.zab.put(str, hashMap);
        }
    }

    public final void zad() {
        for (String str : this.zab.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zab.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).zai(this);
            }
        }
    }

    public final void zae(Class<? extends FastJsonResponse> cls, Map<String, FastJsonResponse.Field<?, ?>> map) {
        this.zab.put((String) u.k(cls.getCanonicalName()), map);
    }

    public final boolean zaf(Class<? extends FastJsonResponse> cls) {
        return this.zab.containsKey(u.k(cls.getCanonicalName()));
    }

    public zan(Class<? extends FastJsonResponse> cls) {
        this.zaa = 1;
        this.zab = new HashMap<>();
        this.zac = (String) u.k(cls.getCanonicalName());
    }
}
