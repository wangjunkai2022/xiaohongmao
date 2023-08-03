package q0;

import android.webkit.MimeTypeMap;
import com.facebook.common.internal.ImmutableMap;
import java.util.Map;

/* compiled from: MimeTypeMapWrapper.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final MimeTypeMap f93120a = MimeTypeMap.getSingleton();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, String> f93121b = ImmutableMap.of("image/heif", "heif", "image/heic", "heic");

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, String> f93122c = ImmutableMap.of("heif", "image/heif", "heic", "image/heic");

    public static String a(String mimeType) {
        String str = f93121b.get(mimeType);
        return str != null ? str : f93120a.getExtensionFromMimeType(mimeType);
    }

    public static String b(String extension) {
        String str = f93122c.get(extension);
        return str != null ? str : f93120a.getMimeTypeFromExtension(extension);
    }

    public static boolean c(String extension) {
        return f93122c.containsKey(extension) || f93120a.hasExtension(extension);
    }

    public static boolean d(String mimeType) {
        return f93121b.containsKey(mimeType) || f93120a.hasMimeType(mimeType);
    }
}
