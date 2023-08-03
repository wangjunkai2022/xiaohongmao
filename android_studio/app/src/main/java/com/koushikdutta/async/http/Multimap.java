package com.koushikdutta.async.http;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class Multimap extends LinkedHashMap<String, List<String>> implements Iterable<NameValuePair> {
    public static final StringDecoder QUERY_DECODER = new StringDecoder() { // from class: com.koushikdutta.async.http.Multimap.1
        @Override // com.koushikdutta.async.http.Multimap.StringDecoder
        public String b(String str) {
            return Uri.decode(str);
        }
    };
    public static final StringDecoder URL_DECODER = new StringDecoder() { // from class: com.koushikdutta.async.http.Multimap.2
        @Override // com.koushikdutta.async.http.Multimap.StringDecoder
        public String b(String str) {
            return URLDecoder.decode(str);
        }
    };

    /* loaded from: classes3.dex */
    public interface StringDecoder {
        String b(String str);
    }

    public Multimap() {
    }

    public static Multimap parse(String str, String str2, boolean z9, StringDecoder stringDecoder) {
        return parse(str, str2, "=", z9, stringDecoder);
    }

    public static Multimap parseCommaDelimited(String str) {
        return parse(str, ",", true, null);
    }

    public static Multimap parseQuery(String str) {
        return parse(str, p.a.f93050d, false, QUERY_DECODER);
    }

    public static Multimap parseSemicolonDelimited(String str) {
        return parse(str, com.alipay.sdk.util.i.f6965b, true, null);
    }

    public static Multimap parseUrlEncoded(String str) {
        return parse(str, p.a.f93050d, false, URL_DECODER);
    }

    protected List<String> a() {
        return new ArrayList();
    }

    public void add(String str, String str2) {
        ensure(str).add(str2);
    }

    public List<String> ensure(String str) {
        List<String> list = get(str);
        if (list == null) {
            List<String> a10 = a();
            put((Multimap) str, (String) a10);
            return a10;
        }
        return list;
    }

    public String getAllString(String str, String str2) {
        List<String> list = get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z9 = true;
        for (String str3 : list) {
            if (!z9) {
                sb.append(str2);
            }
            sb.append(str3);
            z9 = false;
        }
        return sb.toString();
    }

    public String getString(String str) {
        List<String> list = get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        return list.get(0);
    }

    @Override // java.lang.Iterable
    public Iterator<NameValuePair> iterator() {
        ArrayList arrayList = new ArrayList();
        for (String str : keySet()) {
            for (String str2 : (List) get(str)) {
                arrayList.add(new BasicNameValuePair(str, str2));
            }
        }
        return arrayList.iterator();
    }

    public void put(String str, String str2) {
        List<String> a10 = a();
        a10.add(str2);
        put((Multimap) str, (String) a10);
    }

    public Map<String, String> toSingleMap() {
        HashMap hashMap = new HashMap();
        for (String str : keySet()) {
            hashMap.put(str, getString(str));
        }
        return hashMap;
    }

    public Multimap(List<NameValuePair> list) {
        for (NameValuePair nameValuePair : list) {
            add(nameValuePair.getName(), nameValuePair.getValue());
        }
    }

    public static Multimap parse(String str, String str2, String str3, boolean z9, StringDecoder stringDecoder) {
        Multimap multimap = new Multimap();
        if (str == null) {
            return multimap;
        }
        for (String str4 : str.split(str2)) {
            String[] split = str4.split(str3, 2);
            String trim = split[0].trim();
            if (!TextUtils.isEmpty(trim)) {
                String str5 = split.length > 1 ? split[1] : null;
                if (str5 != null && z9 && str5.endsWith("\"") && str5.startsWith("\"")) {
                    str5 = str5.substring(1, str5.length() - 1);
                }
                if (str5 != null && stringDecoder != null) {
                    trim = stringDecoder.b(trim);
                    str5 = stringDecoder.b(str5);
                }
                multimap.add(trim, str5);
            }
        }
        return multimap;
    }

    public Multimap(Multimap multimap) {
        putAll(multimap);
    }
}
