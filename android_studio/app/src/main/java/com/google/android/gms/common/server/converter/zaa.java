package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "ConverterWrapperCreator")
/* loaded from: classes2.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new a();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @SafeParcelable.c(getter = "getStringToIntConverter", id = 2)
    private final StringToIntConverter zab;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public zaa(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) StringToIntConverter stringToIntConverter) {
        this.zaa = i4;
        this.zab = stringToIntConverter;
    }

    public static zaa zaa(FastJsonResponse.a<?, ?> aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.S(parcel, 2, this.zab, i4, false);
        w2.a.b(parcel, a10);
    }

    public final FastJsonResponse.a<?, ?> zab() {
        StringToIntConverter stringToIntConverter = this.zab;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    private zaa(StringToIntConverter stringToIntConverter) {
        this.zaa = 1;
        this.zab = stringToIntConverter;
    }
}
