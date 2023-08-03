package androidx.core.location;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* compiled from: LocationListenerCompat.java */
/* loaded from: classes.dex */
public final /* synthetic */ class a {
    public static void a(LocationListenerCompat locationListenerCompat, int i4) {
    }

    public static void b(LocationListenerCompat locationListenerCompat, @NonNull List list) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            locationListenerCompat.onLocationChanged((Location) list.get(i4));
        }
    }

    public static void c(LocationListenerCompat locationListenerCompat, @NonNull String str) {
    }

    public static void d(LocationListenerCompat locationListenerCompat, @NonNull String str) {
    }

    public static void e(LocationListenerCompat locationListenerCompat, @NonNull String str, int i4, @Nullable Bundle bundle) {
    }
}
