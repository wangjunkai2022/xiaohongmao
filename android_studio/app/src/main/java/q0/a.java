package q0;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.infer.annotation.Nullsafe;
import com.google.android.exoplayer2.util.a0;
import java.util.Locale;
import java.util.Map;
import r7.h;

/* compiled from: MediaUtils.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, String> f93119a = ImmutableMap.of("mkv", a0.f27443g, "glb", "model/gltf-binary");

    @h
    private static String a(String path) {
        int lastIndexOf = path.lastIndexOf(46);
        if (lastIndexOf < 0 || lastIndexOf == path.length() - 1) {
            return null;
        }
        return path.substring(lastIndexOf + 1);
    }

    @h
    public static String b(String path) {
        String a10 = a(path);
        if (a10 == null) {
            return null;
        }
        String lowerCase = a10.toLowerCase(Locale.US);
        String b10 = b.b(lowerCase);
        return b10 == null ? f93119a.get(lowerCase) : b10;
    }

    public static boolean c(String mimeType) {
        return f93119a.containsValue(mimeType);
    }

    public static boolean d(@h String mimeType) {
        return mimeType != null && mimeType.startsWith("image/");
    }

    public static boolean e(@h String mimeType) {
        return mimeType != null && mimeType.equals("model/gltf-binary");
    }

    public static boolean f(@h String mimeType) {
        return mimeType != null && mimeType.startsWith("video/");
    }
}
