package f;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class a {
    public static synchronized Map<String, String> a(Context context) {
        HashMap hashMap;
        String str;
        synchronized (a.class) {
            hashMap = new HashMap();
            hashMap.put("AA1", context.getPackageName());
            hashMap.put("AA2", b(context));
            hashMap.put("AA3", "security-sdk-token");
            hashMap.put("AA4", "3.0.2.20151027");
            r.a e4 = h.e.e(context);
            String str2 = e4.f93154d;
            String str3 = e4.f93153c;
            if (!t.a.e(str2) && !t.a.e(str3)) {
                str = i.a.a(com.alipay.security.mobile.module.deviceinfo.d.q().e(context), str3, str2);
                hashMap.put("AA5", str);
            }
            str = "";
            hashMap.put("AA5", str);
        }
        return hashMap;
    }

    private static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16).versionName;
        } catch (Exception unused) {
            return "0.0.0";
        }
    }
}
