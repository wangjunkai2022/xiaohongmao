package y2;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a0 {
    private a0() {
    }

    @u2.a
    @Deprecated
    public static void a(@NonNull Context context, @NonNull SharedPreferences.Editor editor, @NonNull String str) {
        throw new IllegalStateException("world-readable shared preferences should only be used by apk");
    }
}
