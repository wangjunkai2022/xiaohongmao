package org.minidns.dnsserverlookup;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.minidns.util.i;

/* compiled from: AndroidUsingExec.java */
/* loaded from: classes5.dex */
public class b extends a {

    /* renamed from: d  reason: collision with root package name */
    public static final d f92782d = new b();

    /* renamed from: e  reason: collision with root package name */
    public static final int f92783e = 999;

    /* renamed from: f  reason: collision with root package name */
    private static final String f92784f = "]: [";

    private b() {
        super(b.class.getSimpleName(), 999);
    }

    protected static Set<String> c(BufferedReader bufferedReader, boolean z9) throws UnknownHostException, IOException {
        String hostAddress;
        HashSet hashSet = new HashSet(6);
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return hashSet;
            }
            int indexOf = readLine.indexOf(f92784f);
            if (indexOf != -1) {
                String substring = readLine.substring(1, indexOf);
                int i4 = indexOf + 4;
                int length = readLine.length() - 1;
                if (length >= i4) {
                    String substring2 = readLine.substring(i4, length);
                    if (!substring2.isEmpty() && (substring.endsWith(".dns") || substring.endsWith(".dns1") || substring.endsWith(".dns2") || substring.endsWith(".dns3") || substring.endsWith(".dns4"))) {
                        InetAddress byName = InetAddress.getByName(substring2);
                        if (byName != null && (hostAddress = byName.getHostAddress()) != null && hostAddress.length() != 0) {
                            hashSet.add(hostAddress);
                        }
                    }
                } else if (z9) {
                    Logger logger = a.f92779c;
                    logger.warning("Malformed property detected: \"" + readLine + '\"');
                }
            }
        }
    }

    @Override // org.minidns.dnsserverlookup.d
    public boolean H() {
        return i.a();
    }

    @Override // org.minidns.dnsserverlookup.a, org.minidns.dnsserverlookup.d
    public List<String> j() {
        try {
            Set<String> c10 = c(new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("getprop").getInputStream())), true);
            if (c10.size() > 0) {
                ArrayList arrayList = new ArrayList(c10.size());
                arrayList.addAll(c10);
                return arrayList;
            }
            return null;
        } catch (IOException e4) {
            a.f92779c.log(Level.WARNING, "Exception in findDNSByExec", (Throwable) e4);
            return null;
        }
    }
}
