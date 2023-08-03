package y2;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class c0 {
    private c0() {
    }

    @u2.a
    public static boolean a(@NonNull Context context, int i4) {
        if (b(context, i4, "com.google.android.gms")) {
            try {
                return com.google.android.gms.common.i.a(context).b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable("UidVerifier", 3)) {
                    Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
                }
                return false;
            }
        }
        return false;
    }

    @u2.a
    @TargetApi(19)
    public static boolean b(@NonNull Context context, int i4, @NonNull String str) {
        return com.google.android.gms.common.wrappers.c.a(context).h(i4, str);
    }
}
