package y2;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@d0
/* loaded from: classes2.dex */
public final class h0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f94696a = Pattern.compile("\\\\u[0-9a-fA-F]{4}");

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = f94696a.matcher(str);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            matcher.appendReplacement(stringBuffer, new String(Character.toChars(Integer.parseInt(matcher.group().substring(2), 16))));
        }
        if (stringBuffer == null) {
            return str;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }
}
