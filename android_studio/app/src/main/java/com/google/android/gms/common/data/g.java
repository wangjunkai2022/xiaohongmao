package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class g<T extends SafeParcelable> extends a<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f28985c = {"data"};

    /* renamed from: b  reason: collision with root package name */
    private final Parcelable.Creator<T> f28986b;

    @u2.a
    public g(@NonNull DataHolder dataHolder, @NonNull Parcelable.Creator<T> creator) {
        super(dataHolder);
        this.f28986b = creator;
    }

    @u2.a
    public static <T extends SafeParcelable> void a(@NonNull DataHolder.a aVar, @NonNull T t9) {
        Parcel obtain = Parcel.obtain();
        t9.writeToParcel(obtain, 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("data", obtain.marshall());
        aVar.c(contentValues);
        obtain.recycle();
    }

    @NonNull
    @u2.a
    public static DataHolder.a b() {
        return DataHolder.builder(f28985c);
    }

    @Override // com.google.android.gms.common.data.a, com.google.android.gms.common.data.b
    @NonNull
    @u2.a
    /* renamed from: d */
    public T get(int i4) {
        DataHolder dataHolder = (DataHolder) u.k(this.f28978a);
        byte[] byteArray = dataHolder.getByteArray("data", i4, dataHolder.getWindowIndex(i4));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(byteArray, 0, byteArray.length);
        obtain.setDataPosition(0);
        T createFromParcel = this.f28986b.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
