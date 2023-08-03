package w2;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.common.zzag;
import java.util.ArrayList;
import y2.c;
import y2.d0;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@d0
/* loaded from: classes2.dex */
public final class b {
    private b() {
    }

    @NonNull
    @u2.a
    public static <T extends SafeParcelable> T a(@NonNull byte[] bArr, @NonNull Parcelable.Creator<T> creator) {
        u.k(creator);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        T createFromParcel = creator.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    @Nullable
    @u2.a
    public static <T extends SafeParcelable> T b(@NonNull Intent intent, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) a(byteArrayExtra, creator);
    }

    @NonNull
    @u2.a
    public static <T extends SafeParcelable> T c(@NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        return (T) a(c.b(str), creator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @Deprecated
    public static <T extends SafeParcelable> ArrayList<T> d(@NonNull Bundle bundle, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        ArrayList arrayList = (ArrayList) bundle.getSerializable(str);
        if (arrayList == null) {
            return null;
        }
        ArrayList<T> arrayList2 = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList2.add(a((byte[]) arrayList.get(i4), creator));
        }
        return arrayList2;
    }

    @Nullable
    @u2.a
    public static <T extends SafeParcelable> ArrayList<T> e(@NonNull Bundle bundle, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        return f(bundle.getByteArray(str), creator);
    }

    @Nullable
    public static <T extends SafeParcelable> ArrayList<T> f(@Nullable byte[] bArr, @NonNull Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, length);
        obtain.setDataPosition(0);
        try {
            ArrayList<T> arrayList = new ArrayList<>();
            obtain.readTypedList(arrayList, creator);
            return arrayList;
        } finally {
            obtain.recycle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @u2.a
    @Deprecated
    public static <T extends SafeParcelable> ArrayList<T> g(@NonNull Intent intent, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra(str);
        if (arrayList == null) {
            return null;
        }
        ArrayList<T> arrayList2 = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList2.add(a((byte[]) arrayList.get(i4), creator));
        }
        return arrayList2;
    }

    @Nullable
    @u2.a
    public static <T extends SafeParcelable> ArrayList<T> h(@NonNull Intent intent, @NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        return f(intent.getByteArrayExtra(str), creator);
    }

    @Deprecated
    public static <T extends SafeParcelable> void i(@NonNull Iterable<T> iterable, @NonNull Bundle bundle, @NonNull String str) {
        ArrayList arrayList = new ArrayList();
        for (T t9 : iterable) {
            arrayList.add(m(t9));
        }
        bundle.putSerializable(str, arrayList);
    }

    public static <T extends SafeParcelable> void j(@NonNull Iterable<T> iterable, @NonNull Bundle bundle, @NonNull String str) {
        bundle.putByteArray(str, p(iterable));
    }

    @u2.a
    @Deprecated
    public static <T extends SafeParcelable> void k(@NonNull Iterable<T> iterable, @NonNull Intent intent, @NonNull String str) {
        ArrayList arrayList = new ArrayList();
        for (T t9 : iterable) {
            arrayList.add(m(t9));
        }
        intent.putExtra(str, arrayList);
    }

    @u2.a
    public static <T extends SafeParcelable> void l(@NonNull Iterable<T> iterable, @NonNull Intent intent, @NonNull String str) {
        intent.putExtra(str, p(iterable));
    }

    @NonNull
    @u2.a
    public static <T extends SafeParcelable> byte[] m(@NonNull T t9) {
        Parcel obtain = Parcel.obtain();
        t9.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    @u2.a
    public static <T extends SafeParcelable> void n(@NonNull T t9, @NonNull Intent intent, @NonNull String str) {
        intent.putExtra(str, m(t9));
    }

    @NonNull
    @u2.a
    public static <T extends SafeParcelable> String o(@NonNull T t9) {
        return c.e(m(t9));
    }

    private static <T extends SafeParcelable> byte[] p(Iterable<T> iterable) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeTypedList(zzag.zzj(iterable));
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }
}
