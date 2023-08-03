package i;

import android.content.Context;
import com.alipay.security.mobile.module.commonutils.crypto.i;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c {
    public static String a(Context context, String str, String str2) {
        String a10;
        if (context == null || t.a.e(str)) {
            return null;
        }
        if (!t.a.e(str2)) {
            try {
                a10 = x.c.a(context, str, str2, "");
                if (t.a.e(a10)) {
                    return null;
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return i.b(i.e(), a10);
    }

    public static String b(String str, String str2) {
        if (!t.a.e(str) && !t.a.e(str2)) {
            try {
                String a10 = x.a.a(str);
                if (t.a.e(a10)) {
                    return null;
                }
                String string = new JSONObject(a10).getString(str2);
                if (t.a.e(string)) {
                    return null;
                }
                return i.b(i.e(), string);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static void c(Context context, String str, String str2, String str3) {
        if (!t.a.e(str) && !t.a.e(str2) && context != null && !t.a.e(str3)) {
            try {
                String c10 = i.c(i.e(), str3);
                HashMap hashMap = new HashMap();
                hashMap.put(str2, c10);
                x.c.c(context, str, hashMap);
            } catch (Exception unused) {
            }
        }
    }

    public static void d(String str, String str2, String str3) {
        if (!t.a.e(str) && !t.a.e(str2) && !t.a.e(str3)) {
            try {
                String c10 = i.c(i.e(), str3);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str2, c10);
                x.a.b(str, jSONObject.toString());
            } catch (Exception unused) {
            }
        }
    }
}
