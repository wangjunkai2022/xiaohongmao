package y2;

import android.util.Base64;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class c {
    @NonNull
    @u2.a
    public static byte[] a(@NonNull String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    @NonNull
    @u2.a
    public static byte[] b(@NonNull String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 10);
    }

    @NonNull
    @u2.a
    public static byte[] c(@NonNull String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 11);
    }

    @NonNull
    @u2.a
    public static String d(@NonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    @NonNull
    @u2.a
    public static String e(@NonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 10);
    }

    @NonNull
    @u2.a
    public static String f(@NonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }
}
