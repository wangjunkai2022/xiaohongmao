package org.jsoup.safety;

import com.auth0.jwt.impl.i;
import com.facebook.common.callercontext.ContextChain;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.MessageBundle;
import org.jsoup.nodes.g;

/* compiled from: Safelist.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Set<d> f92116a;

    /* renamed from: b  reason: collision with root package name */
    private Map<d, Set<a>> f92117b;

    /* renamed from: c  reason: collision with root package name */
    private Map<d, Map<a, C0802b>> f92118c;

    /* renamed from: d  reason: collision with root package name */
    private Map<d, Map<a, Set<c>>> f92119d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f92120e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Safelist.java */
    /* loaded from: classes5.dex */
    public static class a extends e {
        a(String str) {
            super(str);
        }

        static a a(String str) {
            return new a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Safelist.java */
    /* renamed from: org.jsoup.safety.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0802b extends e {
        C0802b(String str) {
            super(str);
        }

        static C0802b a(String str) {
            return new C0802b(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Safelist.java */
    /* loaded from: classes5.dex */
    public static class c extends e {
        c(String str) {
            super(str);
        }

        static c a(String str) {
            return new c(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Safelist.java */
    /* loaded from: classes5.dex */
    public static class d extends e {
        d(String str) {
            super(str);
        }

        static d a(String str) {
            return new d(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Safelist.java */
    /* loaded from: classes5.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        private String f92121a;

        e(String str) {
            org.jsoup.helper.d.j(str);
            this.f92121a = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                e eVar = (e) obj;
                String str = this.f92121a;
                if (str == null) {
                    return eVar.f92121a == null;
                }
                return str.equals(eVar.f92121a);
            }
            return false;
        }

        public int hashCode() {
            String str = this.f92121a;
            return 31 + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return this.f92121a;
        }
    }

    public b() {
        this.f92116a = new HashSet();
        this.f92117b = new HashMap();
        this.f92118c = new HashMap();
        this.f92119d = new HashMap();
        this.f92120e = false;
    }

    public static b e() {
        return new b().d("a", "b", "blockquote", com.google.android.exoplayer2.text.ttml.d.f25734t, "cite", "code", "dd", "dl", "dt", "em", ContextChain.TAG_INFRA, "li", "ol", "p", "pre", "q", "small", com.google.android.exoplayer2.text.ttml.d.f25732s, "strike", "strong", i.f7106f, "sup", "u", "ul").a("a", "href").a("blockquote", "cite").a("q", "cite").c("a", "href", "ftp", "http", "https", "mailto").c("blockquote", "cite", "http", "https").c("cite", "cite", "http", "https").b("a", "rel", "nofollow");
    }

    public static b f() {
        return e().d("img").a("img", "align", "alt", "height", "src", MessageBundle.TITLE_ENTRY, "width").c("img", "src", "http", "https");
    }

    private boolean j(String str) {
        return str.startsWith("#") && !str.matches(".*\\s.*");
    }

    public static b k() {
        return new b();
    }

    public static b m() {
        return new b().d("a", "b", "blockquote", com.google.android.exoplayer2.text.ttml.d.f25734t, "caption", "cite", "code", "col", "colgroup", "dd", com.google.android.exoplayer2.text.ttml.d.f25728q, "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5", "h6", ContextChain.TAG_INFRA, "img", "li", "ol", "p", "pre", "q", "small", com.google.android.exoplayer2.text.ttml.d.f25732s, "strike", "strong", i.f7106f, "sup", "table", "tbody", "td", "tfoot", "th", "thead", "tr", "u", "ul").a("a", "href", MessageBundle.TITLE_ENTRY).a("blockquote", "cite").a("col", com.google.android.exoplayer2.text.ttml.d.f25732s, "width").a("colgroup", com.google.android.exoplayer2.text.ttml.d.f25732s, "width").a("img", "align", "alt", "height", "src", MessageBundle.TITLE_ENTRY, "width").a("ol", com.google.android.exoplayer2.text.ttml.d.f25725o0, "type").a("q", "cite").a("table", ErrorBundle.SUMMARY_ENTRY, "width").a("td", "abbr", "axis", "colspan", "rowspan", "width").a("th", "abbr", "axis", "colspan", "rowspan", "scope", "width").a("ul", "type").c("a", "href", "ftp", "http", "https", "mailto").c("blockquote", "cite", "http", "https").c("cite", "cite", "http", "https").c("img", "src", "http", "https").c("q", "cite", "http", "https");
    }

    public static b r() {
        return new b().d("b", "em", ContextChain.TAG_INFRA, "strong", "u");
    }

    private boolean s(g gVar, org.jsoup.nodes.a aVar, Set<c> set) {
        String a10 = gVar.a(aVar.getKey());
        if (a10.length() == 0) {
            a10 = aVar.getValue();
        }
        if (!this.f92120e) {
            aVar.setValue(a10);
        }
        for (c cVar : set) {
            String eVar = cVar.toString();
            if (eVar.equals("#")) {
                if (j(a10)) {
                    return true;
                }
            } else {
                if (org.jsoup.internal.d.a(a10).startsWith(eVar + ":")) {
                    return true;
                }
            }
        }
        return false;
    }

    public b a(String str, String... strArr) {
        org.jsoup.helper.d.h(str);
        org.jsoup.helper.d.j(strArr);
        org.jsoup.helper.d.e(strArr.length > 0, "No attribute names supplied.");
        d a10 = d.a(str);
        this.f92116a.add(a10);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            org.jsoup.helper.d.h(str2);
            hashSet.add(a.a(str2));
        }
        if (this.f92117b.containsKey(a10)) {
            this.f92117b.get(a10).addAll(hashSet);
        } else {
            this.f92117b.put(a10, hashSet);
        }
        return this;
    }

    public b b(String str, String str2, String str3) {
        org.jsoup.helper.d.h(str);
        org.jsoup.helper.d.h(str2);
        org.jsoup.helper.d.h(str3);
        d a10 = d.a(str);
        this.f92116a.add(a10);
        a a11 = a.a(str2);
        C0802b a12 = C0802b.a(str3);
        if (this.f92118c.containsKey(a10)) {
            this.f92118c.get(a10).put(a11, a12);
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(a11, a12);
            this.f92118c.put(a10, hashMap);
        }
        return this;
    }

    public b c(String str, String str2, String... strArr) {
        Map<a, Set<c>> map;
        Set<c> set;
        org.jsoup.helper.d.h(str);
        org.jsoup.helper.d.h(str2);
        org.jsoup.helper.d.j(strArr);
        d a10 = d.a(str);
        a a11 = a.a(str2);
        if (this.f92119d.containsKey(a10)) {
            map = this.f92119d.get(a10);
        } else {
            HashMap hashMap = new HashMap();
            this.f92119d.put(a10, hashMap);
            map = hashMap;
        }
        if (map.containsKey(a11)) {
            set = map.get(a11);
        } else {
            HashSet hashSet = new HashSet();
            map.put(a11, hashSet);
            set = hashSet;
        }
        for (String str3 : strArr) {
            org.jsoup.helper.d.h(str3);
            set.add(c.a(str3));
        }
        return this;
    }

    public b d(String... strArr) {
        org.jsoup.helper.d.j(strArr);
        for (String str : strArr) {
            org.jsoup.helper.d.h(str);
            this.f92116a.add(d.a(str));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.b g(String str) {
        org.jsoup.nodes.b bVar = new org.jsoup.nodes.b();
        d a10 = d.a(str);
        if (this.f92118c.containsKey(a10)) {
            for (Map.Entry<a, C0802b> entry : this.f92118c.get(a10).entrySet()) {
                bVar.E(entry.getKey().toString(), entry.getValue().toString());
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean h(String str, g gVar, org.jsoup.nodes.a aVar) {
        d a10 = d.a(str);
        a a11 = a.a(aVar.getKey());
        Set<a> set = this.f92117b.get(a10);
        if (set != null && set.contains(a11)) {
            if (this.f92119d.containsKey(a10)) {
                Map<a, Set<c>> map = this.f92119d.get(a10);
                return !map.containsKey(a11) || s(gVar, aVar, map.get(a11));
            }
            return true;
        }
        if (this.f92118c.get(a10) != null) {
            org.jsoup.nodes.b g4 = g(str);
            String key = aVar.getKey();
            if (g4.t(key)) {
                return g4.p(key).equals(aVar.getValue());
            }
        }
        return !str.equals(":all") && h(":all", gVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean i(String str) {
        return this.f92116a.contains(d.a(str));
    }

    public b l(boolean z9) {
        this.f92120e = z9;
        return this;
    }

    public b n(String str, String... strArr) {
        org.jsoup.helper.d.h(str);
        org.jsoup.helper.d.j(strArr);
        org.jsoup.helper.d.e(strArr.length > 0, "No attribute names supplied.");
        d a10 = d.a(str);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            org.jsoup.helper.d.h(str2);
            hashSet.add(a.a(str2));
        }
        if (this.f92116a.contains(a10) && this.f92117b.containsKey(a10)) {
            Set<a> set = this.f92117b.get(a10);
            set.removeAll(hashSet);
            if (set.isEmpty()) {
                this.f92117b.remove(a10);
            }
        }
        if (str.equals(":all")) {
            for (d dVar : this.f92117b.keySet()) {
                Set<a> set2 = this.f92117b.get(dVar);
                set2.removeAll(hashSet);
                if (set2.isEmpty()) {
                    this.f92117b.remove(dVar);
                }
            }
        }
        return this;
    }

    public b o(String str, String str2) {
        org.jsoup.helper.d.h(str);
        org.jsoup.helper.d.h(str2);
        d a10 = d.a(str);
        if (this.f92116a.contains(a10) && this.f92118c.containsKey(a10)) {
            a a11 = a.a(str2);
            Map<a, C0802b> map = this.f92118c.get(a10);
            map.remove(a11);
            if (map.isEmpty()) {
                this.f92118c.remove(a10);
            }
        }
        return this;
    }

    public b p(String str, String str2, String... strArr) {
        org.jsoup.helper.d.h(str);
        org.jsoup.helper.d.h(str2);
        org.jsoup.helper.d.j(strArr);
        d a10 = d.a(str);
        a a11 = a.a(str2);
        org.jsoup.helper.d.e(this.f92119d.containsKey(a10), "Cannot remove a protocol that is not set.");
        Map<a, Set<c>> map = this.f92119d.get(a10);
        org.jsoup.helper.d.e(map.containsKey(a11), "Cannot remove a protocol that is not set.");
        Set<c> set = map.get(a11);
        for (String str3 : strArr) {
            org.jsoup.helper.d.h(str3);
            set.remove(c.a(str3));
        }
        if (set.isEmpty()) {
            map.remove(a11);
            if (map.isEmpty()) {
                this.f92119d.remove(a10);
            }
        }
        return this;
    }

    public b q(String... strArr) {
        org.jsoup.helper.d.j(strArr);
        for (String str : strArr) {
            org.jsoup.helper.d.h(str);
            d a10 = d.a(str);
            if (this.f92116a.remove(a10)) {
                this.f92117b.remove(a10);
                this.f92118c.remove(a10);
                this.f92119d.remove(a10);
            }
        }
        return this;
    }

    public b(b bVar) {
        this();
        this.f92116a.addAll(bVar.f92116a);
        this.f92117b.putAll(bVar.f92117b);
        this.f92118c.putAll(bVar.f92118c);
        this.f92119d.putAll(bVar.f92119d);
        this.f92120e = bVar.f92120e;
    }
}
