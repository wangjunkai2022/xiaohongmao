package com.google.android.gms.common.server.response;

import android.os.Parcel;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.server.response.FastJsonResponse;
import y2.d0;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
@y
/* loaded from: classes2.dex */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @u2.a
    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (getClass().isInstance(obj)) {
            FastJsonResponse fastJsonResponse = (FastJsonResponse) obj;
            for (FastJsonResponse.Field<?, ?> field : getFieldMappings().values()) {
                if (isFieldSet(field)) {
                    if (!fastJsonResponse.isFieldSet(field) || !s.b(getFieldValue(field), fastJsonResponse.getFieldValue(field))) {
                        return false;
                    }
                } else if (fastJsonResponse.isFieldSet(field)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @Nullable
    @d0
    public Object getValueObject(@NonNull String str) {
        return null;
    }

    @u2.a
    public int hashCode() {
        int i4 = 0;
        for (FastJsonResponse.Field<?, ?> field : getFieldMappings().values()) {
            if (isFieldSet(field)) {
                i4 = (i4 * 31) + u.k(getFieldValue(field)).hashCode();
            }
        }
        return i4;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @d0
    public boolean isPrimitiveFieldSet(@NonNull String str) {
        return false;
    }

    @NonNull
    @u2.a
    public byte[] toByteArray() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
}
