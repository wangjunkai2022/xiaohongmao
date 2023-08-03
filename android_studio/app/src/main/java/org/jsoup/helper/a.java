package org.jsoup.helper;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import org.jsoup.Connection;
import org.jsoup.helper.c;

/* compiled from: CookieUtil.java */
/* loaded from: classes5.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, List<String>> f91721a = Collections.unmodifiableMap(new HashMap());

    /* renamed from: b  reason: collision with root package name */
    private static final String f91722b = "; ";

    /* renamed from: c  reason: collision with root package name */
    private static final String f91723c = "Cookie";

    /* renamed from: d  reason: collision with root package name */
    private static final String f91724d = "Cookie2";

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(c.d dVar, HttpURLConnection httpURLConnection) throws IOException {
        HashSet hashSet;
        HashSet hashSet2;
        LinkedHashSet<String> c10 = c(dVar);
        HashSet hashSet3 = null;
        for (Map.Entry<String, List<String>> entry : dVar.e0().get(b(dVar.f91747a), f91721a).entrySet()) {
            List<String> value = entry.getValue();
            if (value != null && value.size() != 0) {
                String key = entry.getKey();
                if ("Cookie".equals(key)) {
                    hashSet = hashSet3;
                    hashSet2 = c10;
                } else if (f91724d.equals(key)) {
                    hashSet2 = new HashSet();
                    hashSet = hashSet2;
                }
                hashSet2.addAll(value);
                hashSet3 = hashSet;
            }
        }
        if (c10.size() > 0) {
            httpURLConnection.addRequestProperty("Cookie", org.jsoup.internal.f.k(c10, f91722b));
        }
        if (hashSet3 == null || hashSet3.size() <= 0) {
            return;
        }
        httpURLConnection.addRequestProperty(f91724d, org.jsoup.internal.f.k(hashSet3, f91722b));
    }

    static URI b(URL url) throws IOException {
        try {
            return url.toURI();
        } catch (URISyntaxException e4) {
            MalformedURLException malformedURLException = new MalformedURLException(e4.getMessage());
            malformedURLException.initCause(e4);
            throw malformedURLException;
        }
    }

    private static LinkedHashSet<String> c(Connection.c cVar) {
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        for (Map.Entry<String, String> entry : cVar.A().entrySet()) {
            linkedHashSet.add(entry.getKey() + "=" + entry.getValue());
        }
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(c.d dVar, URL url, Map<String, List<String>> map) throws IOException {
        dVar.e0().put(b(url), map);
    }
}
