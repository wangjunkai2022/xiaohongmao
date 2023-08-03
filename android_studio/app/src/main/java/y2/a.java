package y2;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@com.google.android.gms.common.internal.y
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f94685a = -1;

    @Nullable
    @u2.a
    @Deprecated
    public static byte[] a(@NonNull Context context, @NonNull String str) throws PackageManager.NameNotFoundException {
        MessageDigest b10;
        PackageInfo f10 = com.google.android.gms.common.wrappers.c.a(context).f(str, 64);
        Signature[] signatureArr = f10.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (b10 = b("SHA1")) == null) {
            return null;
        }
        return b10.digest(f10.signatures[0].toByteArray());
    }

    @Nullable
    public static MessageDigest b(@NonNull String str) {
        MessageDigest messageDigest;
        for (int i4 = 0; i4 < 2; i4++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }
}
