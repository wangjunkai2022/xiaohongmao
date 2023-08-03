package y2;

import androidx.annotation.NonNull;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.text.Typography;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f94723a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f94724b = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f94725c = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    private p() {
    }

    @NonNull
    @u2.a
    public static Map<String, String> a(@NonNull URI uri, @NonNull String str) {
        Map<String, String> emptyMap = Collections.emptyMap();
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() > 0) {
            emptyMap = new HashMap<>();
            com.google.android.gms.internal.common.g0 c10 = com.google.android.gms.internal.common.g0.c(com.google.android.gms.internal.common.x.b('='));
            for (String str2 : com.google.android.gms.internal.common.g0.c(com.google.android.gms.internal.common.x.b(Typography.amp)).b().d(rawQuery)) {
                List<String> f10 = c10.f(str2);
                if (!f10.isEmpty() && f10.size() <= 2) {
                    emptyMap.put(b(f10.get(0), str), f10.size() == 2 ? b(f10.get(1), str) : null);
                } else {
                    throw new IllegalArgumentException("bad parameter");
                }
            }
        }
        return emptyMap;
    }

    private static String b(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e4) {
            throw new IllegalArgumentException(e4);
        }
    }
}
