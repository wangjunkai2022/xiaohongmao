package com.koushikdutta.async.http.cache;

import android.text.TextUtils;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class RawHeaders {

    /* renamed from: f  reason: collision with root package name */
    private static final Comparator<String> f44780f = new Comparator<String>() { // from class: com.koushikdutta.async.http.cache.RawHeaders.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            if (str == str2) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private String f44782b;

    /* renamed from: e  reason: collision with root package name */
    private String f44785e;

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f44781a = new ArrayList(20);

    /* renamed from: c  reason: collision with root package name */
    private int f44783c = 1;

    /* renamed from: d  reason: collision with root package name */
    private int f44784d = -1;

    public RawHeaders() {
    }

    public static RawHeaders e(Map<String, List<String>> map) {
        RawHeaders rawHeaders = new RawHeaders();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (key != null) {
                rawHeaders.b(key, value);
            } else if (!value.isEmpty()) {
                rawHeaders.r(value.get(value.size() - 1));
            }
        }
        return rawHeaders;
    }

    public static RawHeaders o(String str) {
        String[] split = str.split("\n");
        RawHeaders rawHeaders = new RawHeaders();
        for (String str2 : split) {
            String trim = str2.trim();
            if (!TextUtils.isEmpty(trim)) {
                if (rawHeaders.l() == null) {
                    rawHeaders.r(trim);
                } else {
                    rawHeaders.c(trim);
                }
            }
        }
        return rawHeaders;
    }

    public void a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("fieldName == null");
        }
        if (str2 == null) {
            PrintStream printStream = System.err;
            printStream.println("Ignoring HTTP header field '" + str + "' because its value is null");
            return;
        }
        this.f44781a.add(str);
        this.f44781a.add(str2.trim());
    }

    public void b(String str, List<String> list) {
        for (String str2 : list) {
            a(str, str2);
        }
    }

    public void c(String str) {
        int indexOf = str.indexOf(":");
        if (indexOf == -1) {
            a("", str);
        } else {
            a(str.substring(0, indexOf), str.substring(indexOf + 1));
        }
    }

    public void d(RawHeaders rawHeaders) {
        this.f44781a.addAll(rawHeaders.f44781a);
        this.f44782b = rawHeaders.f44782b;
        this.f44783c = rawHeaders.f44783c;
        this.f44784d = rawHeaders.f44784d;
        this.f44785e = rawHeaders.f44785e;
    }

    public String f(String str) {
        for (int size = this.f44781a.size() - 2; size >= 0; size -= 2) {
            if (str.equalsIgnoreCase(this.f44781a.get(size))) {
                return this.f44781a.get(size + 1);
            }
        }
        return null;
    }

    public RawHeaders g(Set<String> set) {
        RawHeaders rawHeaders = new RawHeaders();
        for (int i4 = 0; i4 < this.f44781a.size(); i4 += 2) {
            String str = this.f44781a.get(i4);
            if (set.contains(str)) {
                rawHeaders.a(str, this.f44781a.get(i4 + 1));
            }
        }
        return rawHeaders;
    }

    public String h(int i4) {
        int i10 = i4 * 2;
        if (i10 < 0 || i10 >= this.f44781a.size()) {
            return null;
        }
        return this.f44781a.get(i10);
    }

    public int i() {
        int i4 = this.f44783c;
        if (i4 != -1) {
            return i4;
        }
        return 1;
    }

    public int j() {
        return this.f44784d;
    }

    public String k() {
        return this.f44785e;
    }

    public String l() {
        return this.f44782b;
    }

    public String m(int i4) {
        int i10 = (i4 * 2) + 1;
        if (i10 < 0 || i10 >= this.f44781a.size()) {
            return null;
        }
        return this.f44781a.get(i10);
    }

    public int n() {
        return this.f44781a.size() / 2;
    }

    public void p(String str) {
        for (int i4 = 0; i4 < this.f44781a.size(); i4 += 2) {
            if (str.equalsIgnoreCase(this.f44781a.get(i4))) {
                this.f44781a.remove(i4);
                this.f44781a.remove(i4);
            }
        }
    }

    public void q(String str, String str2) {
        p(str);
        a(str, str2);
    }

    public void r(String str) {
        String trim = str.trim();
        this.f44782b = trim;
        if (trim == null || !trim.startsWith("HTTP/")) {
            return;
        }
        String trim2 = trim.trim();
        int indexOf = trim2.indexOf(" ") + 1;
        if (indexOf == 0) {
            return;
        }
        if (trim2.charAt(indexOf - 2) != '1') {
            this.f44783c = 0;
        }
        int i4 = indexOf + 3;
        if (i4 > trim2.length()) {
            i4 = trim2.length();
        }
        this.f44784d = Integer.parseInt(trim2.substring(indexOf, i4));
        int i10 = i4 + 1;
        if (i10 <= trim2.length()) {
            this.f44785e = trim2.substring(i10);
        }
    }

    public String s() {
        StringBuilder sb = new StringBuilder(256);
        sb.append(this.f44782b);
        sb.append("\r\n");
        for (int i4 = 0; i4 < this.f44781a.size(); i4 += 2) {
            sb.append(this.f44781a.get(i4));
            sb.append(": ");
            sb.append(this.f44781a.get(i4 + 1));
            sb.append("\r\n");
        }
        sb.append("\r\n");
        return sb.toString();
    }

    public Map<String, List<String>> t() {
        TreeMap treeMap = new TreeMap(f44780f);
        for (int i4 = 0; i4 < this.f44781a.size(); i4 += 2) {
            String str = this.f44781a.get(i4);
            String str2 = this.f44781a.get(i4 + 1);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(str);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(str2);
            treeMap.put(str, Collections.unmodifiableList(arrayList));
        }
        String str3 = this.f44782b;
        if (str3 != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str3)));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    public RawHeaders(RawHeaders rawHeaders) {
        d(rawHeaders);
    }
}
