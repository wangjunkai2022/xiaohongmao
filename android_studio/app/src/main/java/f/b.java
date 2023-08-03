package f;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class b {
    public static synchronized Map<String, String> a(Context context, Map<String, String> map) {
        HashMap hashMap;
        synchronized (b.class) {
            hashMap = new HashMap();
            String d4 = t.a.d(map, m.b.f86919c, "");
            String d10 = t.a.d(map, m.b.f86923g, "");
            String a10 = i.b.a(context);
            String d11 = t.a.d(map, "userId", "");
            hashMap.put("AC1", d4);
            hashMap.put("AC2", d10);
            hashMap.put("AC3", "");
            hashMap.put("AC4", a10);
            hashMap.put("AC5", d11);
        }
        return hashMap;
    }
}
