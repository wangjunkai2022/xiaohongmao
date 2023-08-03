package y2;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@d0
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f94726a = Pattern.compile("\\\\.");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f94727b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    private r() {
    }

    @u2.a
    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
            JSONObject jSONObject = (JSONObject) obj;
            JSONObject jSONObject2 = (JSONObject) obj2;
            if (jSONObject.length() != jSONObject2.length()) {
                return false;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!jSONObject2.has(next)) {
                    return false;
                }
                try {
                    com.google.android.gms.common.internal.u.k(next);
                } catch (JSONException unused) {
                }
                if (!a(jSONObject.get(next), jSONObject2.get(next))) {
                    return false;
                }
            }
            return true;
        } else if ((obj instanceof JSONArray) && (obj2 instanceof JSONArray)) {
            JSONArray jSONArray = (JSONArray) obj;
            JSONArray jSONArray2 = (JSONArray) obj2;
            if (jSONArray.length() == jSONArray2.length()) {
                for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                    if (!a(jSONArray.get(i4), jSONArray2.get(i4))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        } else {
            return obj.equals(obj2);
        }
    }

    @Nullable
    @u2.a
    public static String b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = f94727b.matcher(str);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            char charAt = matcher.group().charAt(0);
            if (charAt == '\f') {
                matcher.appendReplacement(stringBuffer, "\\\\f");
            } else if (charAt == '\r') {
                matcher.appendReplacement(stringBuffer, "\\\\r");
            } else if (charAt == '\"') {
                matcher.appendReplacement(stringBuffer, "\\\\\\\"");
            } else if (charAt == '/') {
                matcher.appendReplacement(stringBuffer, "\\\\/");
            } else if (charAt != '\\') {
                switch (charAt) {
                    case '\b':
                        matcher.appendReplacement(stringBuffer, "\\\\b");
                        continue;
                    case '\t':
                        matcher.appendReplacement(stringBuffer, "\\\\t");
                        continue;
                    case '\n':
                        matcher.appendReplacement(stringBuffer, "\\\\n");
                        continue;
                }
            } else {
                matcher.appendReplacement(stringBuffer, "\\\\\\\\");
            }
        }
        if (stringBuffer == null) {
            return str;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    @NonNull
    @u2.a
    public static String c(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String a10 = h0.a(str);
        Matcher matcher = f94726a.matcher(a10);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            char charAt = matcher.group().charAt(1);
            if (charAt == '\"') {
                matcher.appendReplacement(stringBuffer, "\"");
            } else if (charAt == '/') {
                matcher.appendReplacement(stringBuffer, "/");
            } else if (charAt == '\\') {
                matcher.appendReplacement(stringBuffer, "\\\\");
            } else if (charAt == 'b') {
                matcher.appendReplacement(stringBuffer, "\b");
            } else if (charAt == 'f') {
                matcher.appendReplacement(stringBuffer, "\f");
            } else if (charAt == 'n') {
                matcher.appendReplacement(stringBuffer, "\n");
            } else if (charAt == 'r') {
                matcher.appendReplacement(stringBuffer, "\r");
            } else if (charAt == 't') {
                matcher.appendReplacement(stringBuffer, "\t");
            } else {
                throw new IllegalStateException("Found an escaped character that should never be.");
            }
        }
        if (stringBuffer == null) {
            return a10;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }
}
