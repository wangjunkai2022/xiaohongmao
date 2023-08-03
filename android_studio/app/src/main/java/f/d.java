package f;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class d {
    public static synchronized Map<String, String> a(Context context) {
        HashMap hashMap;
        synchronized (d.class) {
            com.alipay.security.mobile.module.deviceinfo.e i4 = com.alipay.security.mobile.module.deviceinfo.e.i();
            hashMap = new HashMap();
            hashMap.put("AE1", i4.l());
            StringBuilder sb = new StringBuilder();
            sb.append(i4.v() ? "1" : "0");
            hashMap.put("AE2", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i4.u(context) ? "1" : "0");
            hashMap.put("AE3", sb2.toString());
            hashMap.put("AE4", i4.m());
            hashMap.put("AE5", i4.n());
            hashMap.put("AE6", i4.o());
            hashMap.put("AE7", i4.b());
            hashMap.put("AE8", i4.d());
            hashMap.put("AE9", i4.p());
            hashMap.put("AE10", i4.q());
            hashMap.put("AE11", i4.r());
            hashMap.put("AE12", i4.e());
            hashMap.put("AE13", i4.f());
            hashMap.put("AE14", i4.c());
            hashMap.put("AE15", i4.j());
        }
        return hashMap;
    }
}
