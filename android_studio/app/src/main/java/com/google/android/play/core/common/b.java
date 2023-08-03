package com.google.android.play.core.common;

import android.os.Bundle;
import com.google.android.play.core.internal.h;
import io.sentry.e3;
import io.sentry.protocol.r;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Set f31705a = new HashSet(Arrays.asList("app_update", "review"));

    /* renamed from: b  reason: collision with root package name */
    private static final Set f31706b = new HashSet(Arrays.asList(r.b.f83834j, "unity"));

    /* renamed from: c  reason: collision with root package name */
    private static final Map f31707c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static final h f31708d = new h("PlayCoreVersion");

    private b() {
    }

    public static synchronized void a(String str, String str2, int i4) {
        synchronized (b.class) {
            if (!f31705a.contains(str)) {
                f31708d.e("Illegal module name: %s", str);
            } else if (!f31706b.contains(str2)) {
                f31708d.e("Illegal platform name: %s", str2);
            } else {
                c(str).put(str2, Integer.valueOf(i4));
            }
        }
    }

    public static Bundle b(String str) {
        Bundle bundle = new Bundle();
        Map c10 = c(str);
        bundle.putInt("playcore_version_code", ((Integer) c10.get(e3.f83130p)).intValue());
        if (c10.containsKey(r.b.f83834j)) {
            bundle.putInt("playcore_native_version", ((Integer) c10.get(r.b.f83834j)).intValue());
        }
        if (c10.containsKey("unity")) {
            bundle.putInt("playcore_unity_version", ((Integer) c10.get("unity")).intValue());
        }
        return bundle;
    }

    public static synchronized Map c(String str) {
        Map map;
        synchronized (b.class) {
            Map map2 = f31707c;
            if (!map2.containsKey(str)) {
                HashMap hashMap = new HashMap();
                hashMap.put(e3.f83130p, 11003);
                map2.put(str, hashMap);
            }
            map = (Map) map2.get(str);
        }
        return map;
    }
}
