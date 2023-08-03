package f;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, String> f65276a;

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f65277b = {"AD1", "AD2", "AD3", "AD5", "AD6", "AD7", "AD8", "AD9", "AD10", "AD11", "AD12", "AD13", "AD14", "AD15", "AD16", "AD18", "AD19", "AD20", "AD21", "AL3", "AA1", "AA2", "AA3", "AA4", "AA5", "AC1", "AC2", "AC4", "AE1", "AE2", "AE3", "AE4", "AE5", "AE6", "AE7", "AE8", "AE9", "AE10", "AE11", "AE12", "AE13", "AE14", "AE15"};

    private static String a(Map<String, String> map) {
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        int i4 = 0;
        while (i4 < arrayList.size()) {
            String str = (String) arrayList.get(i4);
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder();
            sb.append(i4 == 0 ? "" : p.a.f93050d);
            sb.append(str);
            sb.append("=");
            sb.append(str2);
            stringBuffer.append(sb.toString());
            i4++;
        }
        return stringBuffer.toString();
    }

    public static synchronized Map<String, String> b(Context context, Map<String, String> map) {
        Map<String, String> map2;
        synchronized (e.class) {
            if (f65276a == null) {
                e(context, map);
            }
            map2 = f65276a;
        }
        return map2;
    }

    public static synchronized void c() {
        synchronized (e.class) {
            f65276a = null;
        }
    }

    public static synchronized String d(Context context, Map<String, String> map) {
        String[] strArr;
        String d4;
        synchronized (e.class) {
            b(context, map);
            TreeMap treeMap = new TreeMap();
            for (String str : f65277b) {
                if (f65276a.containsKey(str)) {
                    treeMap.put(str, f65276a.get(str));
                }
            }
            d4 = com.alipay.security.mobile.module.commonutils.crypto.d.d(a(treeMap));
        }
        return d4;
    }

    private static synchronized void e(Context context, Map<String, String> map) {
        synchronized (e.class) {
            TreeMap treeMap = new TreeMap();
            f65276a = treeMap;
            treeMap.putAll(b.a(context, map));
            f65276a.putAll(d.a(context));
            f65276a.putAll(c.a(context));
            f65276a.putAll(a.a(context));
        }
    }
}
