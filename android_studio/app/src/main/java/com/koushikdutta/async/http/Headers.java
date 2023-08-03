package com.koushikdutta.async.http;

import android.text.TextUtils;
import com.koushikdutta.async.util.TaggedList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public class Headers {

    /* renamed from: a  reason: collision with root package name */
    final Multimap f44629a = new Multimap() { // from class: com.koushikdutta.async.http.Headers.1
        @Override // com.koushikdutta.async.http.Multimap
        protected List<String> a() {
            return new TaggedList();
        }
    };

    public Headers() {
    }

    public static Headers j(String str) {
        String[] split = str.split("\n");
        Headers headers = new Headers();
        for (String str2 : split) {
            String trim = str2.trim();
            if (!TextUtils.isEmpty(trim)) {
                headers.f(trim);
            }
        }
        return headers;
    }

    public Headers a(String str, String str2) {
        String lowerCase = str.toLowerCase(Locale.US);
        this.f44629a.add(lowerCase, str2);
        ((TaggedList) this.f44629a.get(lowerCase)).tagNull(str);
        return this;
    }

    public Headers b(Headers headers) {
        this.f44629a.putAll(headers.f44629a);
        return this;
    }

    public Headers c(String str, List<String> list) {
        for (String str2 : list) {
            a(str, str2);
        }
        return this;
    }

    public Headers d(Map<String, List<String>> map) {
        for (String str : map.keySet()) {
            for (String str2 : map.get(str)) {
                a(str, str2);
            }
        }
        return this;
    }

    public Headers e(Map<String, String> map) {
        for (String str : map.keySet()) {
            a(str, map.get(str));
        }
        return this;
    }

    public Headers f(String str) {
        if (str != null) {
            String[] split = str.trim().split(":", 2);
            if (split.length == 2) {
                a(split[0].trim(), split[1].trim());
            } else {
                a(split[0].trim(), "");
            }
        }
        return this;
    }

    public String g(String str) {
        return this.f44629a.getString(str.toLowerCase(Locale.US));
    }

    public List<String> h(String str) {
        return this.f44629a.get(str.toLowerCase(Locale.US));
    }

    public Multimap i() {
        return this.f44629a;
    }

    public String k(String str) {
        List<String> m9 = m(str.toLowerCase(Locale.US));
        if (m9 == null || m9.size() == 0) {
            return null;
        }
        return m9.get(0);
    }

    public Headers l(Collection<String> collection) {
        for (String str : collection) {
            k(str);
        }
        return this;
    }

    public List<String> m(String str) {
        return this.f44629a.remove(str.toLowerCase(Locale.US));
    }

    public Headers n(String str, String str2) {
        if (str2 != null && (str2.contains("\n") || str2.contains("\r"))) {
            throw new IllegalArgumentException("value must not contain a new line or line feed");
        }
        String lowerCase = str.toLowerCase(Locale.US);
        this.f44629a.put(lowerCase, str2);
        ((TaggedList) this.f44629a.get(lowerCase)).tagNull(str);
        return this;
    }

    public String o(String str) {
        StringBuilder p9 = p();
        return p9.insert(0, str + "\r\n").toString();
    }

    public StringBuilder p() {
        StringBuilder sb = new StringBuilder(256);
        for (String str : this.f44629a.keySet()) {
            TaggedList taggedList = (TaggedList) this.f44629a.get(str);
            Iterator<T> it = taggedList.iterator();
            while (it.hasNext()) {
                sb.append((String) taggedList.tag());
                sb.append(": ");
                sb.append((String) it.next());
                sb.append("\r\n");
            }
        }
        sb.append("\r\n");
        return sb;
    }

    public String toString() {
        return p().toString();
    }

    public Headers(Map<String, List<String>> map) {
        for (String str : map.keySet()) {
            c(str, map.get(str));
        }
    }
}
