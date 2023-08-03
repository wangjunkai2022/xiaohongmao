package y2;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f94697a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    @u2.a
    public static boolean a(@NonNull Context context, @NonNull Throwable th) {
        try {
            com.google.android.gms.common.internal.u.k(context);
            com.google.android.gms.common.internal.u.k(th);
            return false;
        } catch (Exception e4) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e4);
            return false;
        }
    }
}
