package org.minidns.dnsserverlookup;

import java.lang.reflect.Method;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import org.minidns.util.i;

/* compiled from: AndroidUsingReflection.java */
/* loaded from: classes5.dex */
public class c extends a {

    /* renamed from: d  reason: collision with root package name */
    public static final d f92785d = new c();

    /* renamed from: e  reason: collision with root package name */
    public static final int f92786e = 1000;

    protected c() {
        super(c.class.getSimpleName(), 1000);
    }

    @Override // org.minidns.dnsserverlookup.d
    public boolean H() {
        return i.a();
    }

    @Override // org.minidns.dnsserverlookup.a, org.minidns.dnsserverlookup.d
    public List<String> j() {
        ArrayList arrayList;
        InetAddress byName;
        String hostAddress;
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
            arrayList = new ArrayList(5);
            String[] strArr = {"net.dns1", "net.dns2", "net.dns3", "net.dns4"};
            for (int i4 = 0; i4 < 4; i4++) {
                String str = (String) method.invoke(null, strArr[i4]);
                if (str != null && str.length() != 0 && !arrayList.contains(str) && (byName = InetAddress.getByName(str)) != null && (hostAddress = byName.getHostAddress()) != null && hostAddress.length() != 0 && !arrayList.contains(hostAddress)) {
                    arrayList.add(hostAddress);
                }
            }
        } catch (Exception e4) {
            a.f92779c.log(Level.WARNING, "Exception in findDNSByReflection", (Throwable) e4);
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }
}
