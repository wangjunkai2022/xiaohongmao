package k;

import android.content.Context;
import com.alipay.apmobilesecuritysdk.face.c;
import h.f;
import java.util.HashMap;
import java.util.Map;
import m.b;

/* loaded from: classes.dex */
public class a {
    public static synchronized String a(Context context, Map<String, String> map) {
        synchronized (a.class) {
            HashMap hashMap = new HashMap();
            hashMap.put(b.f86923g, t.a.d(map, b.f86923g, ""));
            hashMap.put(b.f86919c, t.a.d(map, b.f86919c, ""));
            hashMap.put("userId", t.a.d(map, "userId", ""));
            c.g(context).i(0, hashMap, null);
            String a10 = f.a();
            if (t.a.e(a10)) {
                h.b b10 = h.a.b(context);
                if (b10 != null && !t.a.e(b10.a())) {
                    return b10.a();
                }
                String b11 = e.a.b(context);
                if (t.a.e(b11)) {
                    return i.b.a(context);
                }
                return b11;
            }
            return a10;
        }
    }
}
