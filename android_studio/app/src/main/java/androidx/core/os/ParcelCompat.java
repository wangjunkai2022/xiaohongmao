package androidx.core.os;

import android.os.Parcel;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class ParcelCompat {
    private ParcelCompat() {
    }

    public static boolean readBoolean(@NonNull Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void writeBoolean(@NonNull Parcel parcel, boolean z9) {
        parcel.writeInt(z9 ? 1 : 0);
    }
}
