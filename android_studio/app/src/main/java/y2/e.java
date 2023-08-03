package y2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class e {
    private e() {
    }

    @u2.a
    public static int a(@NonNull Context context, @NonNull String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        PackageInfo b10 = b(context, str);
        if (b10 == null || (applicationInfo = b10.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }

    @Nullable
    @u2.a
    public static PackageInfo b(@NonNull Context context, @NonNull String str) {
        try {
            return com.google.android.gms.common.wrappers.c.a(context).f(str, 128);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @u2.a
    public static boolean c() {
        return false;
    }
}
