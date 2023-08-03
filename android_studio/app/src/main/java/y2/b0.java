package y2;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@d0
/* loaded from: classes2.dex */
public class b0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f94686a = Pattern.compile("\\$\\{(.*?)\\}");

    private b0() {
    }

    @Nullable
    @u2.a
    public static String a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str;
    }

    @u2.a
    @EnsuresNonNullIf(expression = {"#1"}, result = false)
    public static boolean b(@Nullable String str) {
        return str == null || str.trim().isEmpty();
    }
}
