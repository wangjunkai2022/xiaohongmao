package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.v;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.MessageBundle;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* compiled from: Tag.java */
/* loaded from: classes5.dex */
public class g implements Cloneable {

    /* renamed from: j  reason: collision with root package name */
    private static final Map<String, g> f92018j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    private static final String[] f92019k;

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f92020l;

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f92021m;

    /* renamed from: n  reason: collision with root package name */
    private static final String[] f92022n;

    /* renamed from: o  reason: collision with root package name */
    private static final String[] f92023o;

    /* renamed from: p  reason: collision with root package name */
    private static final String[] f92024p;

    /* renamed from: q  reason: collision with root package name */
    private static final String[] f92025q;

    /* renamed from: a  reason: collision with root package name */
    private String f92026a;

    /* renamed from: b  reason: collision with root package name */
    private String f92027b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f92028c = true;

    /* renamed from: d  reason: collision with root package name */
    private boolean f92029d = true;

    /* renamed from: e  reason: collision with root package name */
    private boolean f92030e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f92031f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f92032g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f92033h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f92034i = false;

    static {
        String[] strArr = {"html", com.google.android.exoplayer2.text.ttml.d.f25724o, com.google.android.exoplayer2.text.ttml.d.f25726p, "frameset", "script", "noscript", com.google.android.exoplayer2.text.ttml.d.f25736u, "meta", "link", MessageBundle.TITLE_ENTRY, TypedValues.Attributes.S_FRAME, "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", com.google.android.exoplayer2.text.ttml.d.f25728q, "blockquote", "hr", "address", "figure", "figcaption", m.c.f86929c, "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", ErrorBundle.DETAIL_ENTRY, "menu", "plaintext", "template", "article", "main", "svg", "math", com.google.android.exoplayer2.text.ttml.d.f25721m0, "template", "dir", "applet", "marquee", "listing"};
        f92019k = strArr;
        f92020l = new String[]{"object", com.google.android.exoplayer2.text.ttml.d.X, "font", com.google.android.exoplayer2.text.ttml.d.f25722n, ContextChain.TAG_INFRA, "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "acronym", "mark", com.google.android.exoplayer2.text.ttml.d.N, "rt", "rp", "a", "img", com.google.android.exoplayer2.text.ttml.d.f25734t, "wbr", "map", "q", com.auth0.jwt.impl.i.f7106f, "sup", "bdo", "iframe", "embed", com.google.android.exoplayer2.text.ttml.d.f25732s, "input", "select", "textarea", AnnotatedPrivateKey.LABEL, "button", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", com.alipay.sdk.authjs.a.f6841l, v.b.f83881a, "track", ErrorBundle.SUMMARY_ENTRY, "command", "device", "area", "basefont", "bgsound", "menuitem", com.alipay.sdk.authjs.a.f6841l, v.b.f83881a, "track", "data", "bdi", "s", "strike", "nobr"};
        f92021m = new String[]{"meta", "link", com.google.android.exoplayer2.text.ttml.d.X, TypedValues.Attributes.S_FRAME, "img", com.google.android.exoplayer2.text.ttml.d.f25734t, "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", com.alipay.sdk.authjs.a.f6841l, v.b.f83881a, "track"};
        f92022n = new String[]{MessageBundle.TITLE_ENTRY, "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", com.google.android.exoplayer2.text.ttml.d.f25736u, "ins", "del", "s"};
        f92023o = new String[]{"pre", "plaintext", MessageBundle.TITLE_ENTRY, "textarea"};
        f92024p = new String[]{"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
        f92025q = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (String str : strArr) {
            n(new g(str));
        }
        for (String str2 : f92020l) {
            g gVar = new g(str2);
            gVar.f92028c = false;
            gVar.f92029d = false;
            n(gVar);
        }
        for (String str3 : f92021m) {
            g gVar2 = f92018j.get(str3);
            org.jsoup.helper.d.j(gVar2);
            gVar2.f92030e = true;
        }
        for (String str4 : f92022n) {
            g gVar3 = f92018j.get(str4);
            org.jsoup.helper.d.j(gVar3);
            gVar3.f92029d = false;
        }
        for (String str5 : f92023o) {
            g gVar4 = f92018j.get(str5);
            org.jsoup.helper.d.j(gVar4);
            gVar4.f92032g = true;
        }
        for (String str6 : f92024p) {
            g gVar5 = f92018j.get(str6);
            org.jsoup.helper.d.j(gVar5);
            gVar5.f92033h = true;
        }
        for (String str7 : f92025q) {
            g gVar6 = f92018j.get(str7);
            org.jsoup.helper.d.j(gVar6);
            gVar6.f92034i = true;
        }
    }

    private g(String str) {
        this.f92026a = str;
        this.f92027b = org.jsoup.internal.d.a(str);
    }

    public static boolean j(String str) {
        return f92018j.containsKey(str);
    }

    private static void n(g gVar) {
        f92018j.put(gVar.f92026a, gVar);
    }

    public static g p(String str) {
        return q(str, e.f92012d);
    }

    public static g q(String str, e eVar) {
        org.jsoup.helper.d.j(str);
        Map<String, g> map = f92018j;
        g gVar = map.get(str);
        if (gVar == null) {
            String d4 = eVar.d(str);
            org.jsoup.helper.d.h(d4);
            String a10 = org.jsoup.internal.d.a(d4);
            g gVar2 = map.get(a10);
            if (gVar2 == null) {
                g gVar3 = new g(d4);
                gVar3.f92028c = false;
                return gVar3;
            } else if (!eVar.f() || d4.equals(a10)) {
                return gVar2;
            } else {
                g clone = gVar2.clone();
                clone.f92026a = d4;
                return clone;
            }
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public g clone() {
        try {
            return (g) super.clone();
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    public boolean b() {
        return this.f92029d;
    }

    public String c() {
        return this.f92026a;
    }

    public boolean d() {
        return this.f92028c;
    }

    public boolean e() {
        return this.f92030e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            return this.f92026a.equals(gVar.f92026a) && this.f92030e == gVar.f92030e && this.f92029d == gVar.f92029d && this.f92028c == gVar.f92028c && this.f92032g == gVar.f92032g && this.f92031f == gVar.f92031f && this.f92033h == gVar.f92033h && this.f92034i == gVar.f92034i;
        }
        return false;
    }

    public boolean f() {
        return this.f92033h;
    }

    public boolean g() {
        return this.f92034i;
    }

    public boolean h() {
        return !this.f92028c;
    }

    public int hashCode() {
        return (((((((((((((this.f92026a.hashCode() * 31) + (this.f92028c ? 1 : 0)) * 31) + (this.f92029d ? 1 : 0)) * 31) + (this.f92030e ? 1 : 0)) * 31) + (this.f92031f ? 1 : 0)) * 31) + (this.f92032g ? 1 : 0)) * 31) + (this.f92033h ? 1 : 0)) * 31) + (this.f92034i ? 1 : 0);
    }

    public boolean i() {
        return f92018j.containsKey(this.f92026a);
    }

    public boolean k() {
        return this.f92030e || this.f92031f;
    }

    public String l() {
        return this.f92027b;
    }

    public boolean m() {
        return this.f92032g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g o() {
        this.f92031f = true;
        return this;
    }

    public String toString() {
        return this.f92026a;
    }
}
