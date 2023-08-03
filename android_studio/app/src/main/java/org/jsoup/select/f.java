package org.jsoup.select;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.select.Selector;
import org.jsoup.select.b;
import org.jsoup.select.c;
import org.jsoup.select.g;

/* compiled from: QueryParser.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f92150d = {",", ">", "+", "~", " "};

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f92151e = {"=", "!=", "^=", "$=", "*=", "~="};

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f92152f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f92153g = Pattern.compile("([+-])?(\\d+)");

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f92154h = false;

    /* renamed from: a  reason: collision with root package name */
    private final org.jsoup.parser.h f92155a;

    /* renamed from: b  reason: collision with root package name */
    private final String f92156b;

    /* renamed from: c  reason: collision with root package name */
    private final List<c> f92157c = new ArrayList();

    private f(String str) {
        org.jsoup.helper.d.h(str);
        String trim = str.trim();
        this.f92156b = trim;
        this.f92155a = new org.jsoup.parser.h(trim);
    }

    private void a() {
        this.f92157c.add(new c.a());
    }

    private void b() {
        org.jsoup.parser.h hVar = new org.jsoup.parser.h(this.f92155a.d('[', ']'));
        String n9 = hVar.n(f92151e);
        org.jsoup.helper.d.h(n9);
        hVar.p();
        if (hVar.r()) {
            if (n9.startsWith("^")) {
                this.f92157c.add(new c.d(n9.substring(1)));
            } else {
                this.f92157c.add(new c.b(n9));
            }
        } else if (hVar.s("=")) {
            this.f92157c.add(new c.e(n9, hVar.B()));
        } else if (hVar.s("!=")) {
            this.f92157c.add(new c.i(n9, hVar.B()));
        } else if (hVar.s("^=")) {
            this.f92157c.add(new c.j(n9, hVar.B()));
        } else if (hVar.s("$=")) {
            this.f92157c.add(new c.g(n9, hVar.B()));
        } else if (hVar.s("*=")) {
            this.f92157c.add(new c.f(n9, hVar.B()));
        } else if (hVar.s("~=")) {
            this.f92157c.add(new c.h(n9, Pattern.compile(hVar.B())));
        } else {
            throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.f92156b, hVar.B());
        }
    }

    private void c() {
        String j4 = this.f92155a.j();
        org.jsoup.helper.d.h(j4);
        this.f92157c.add(new c.k(j4.trim()));
    }

    private void d() {
        String j4 = this.f92155a.j();
        org.jsoup.helper.d.h(j4);
        this.f92157c.add(new c.p(j4));
    }

    private void e() {
        String b10 = org.jsoup.internal.d.b(this.f92155a.k());
        org.jsoup.helper.d.h(b10);
        if (b10.startsWith("*|")) {
            this.f92157c.add(new b.C0804b(new c.j0(b10.substring(2)), new c.k0(b10.replace("*|", ":"))));
            return;
        }
        if (b10.contains("|")) {
            b10 = b10.replace("|", ":");
        }
        this.f92157c.add(new c.j0(b10));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void f(char r11) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.f.f(char):void");
    }

    private int g() {
        String trim = this.f92155a.e(")").trim();
        org.jsoup.helper.d.e(org.jsoup.internal.f.i(trim), "Index must be numeric");
        return Integer.parseInt(trim);
    }

    private String h() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        while (!this.f92155a.r()) {
            if (this.f92155a.t("(")) {
                b10.append("(");
                b10.append(this.f92155a.d('(', ')'));
                b10.append(")");
            } else if (this.f92155a.t("[")) {
                b10.append("[");
                b10.append(this.f92155a.d('[', ']'));
                b10.append("]");
            } else if (this.f92155a.v(f92150d)) {
                if (b10.length() > 0) {
                    break;
                }
                this.f92155a.g();
            } else {
                b10.append(this.f92155a.g());
            }
        }
        return org.jsoup.internal.f.p(b10);
    }

    private void i(boolean z9) {
        this.f92155a.h(z9 ? ":containsOwn" : ":contains");
        String D = org.jsoup.parser.h.D(this.f92155a.d('(', ')'));
        org.jsoup.helper.d.i(D, ":contains(text) query must not be empty");
        if (z9) {
            this.f92157c.add(new c.m(D));
        } else {
            this.f92157c.add(new c.n(D));
        }
    }

    private void j() {
        this.f92155a.h(":containsData");
        String D = org.jsoup.parser.h.D(this.f92155a.d('(', ')'));
        org.jsoup.helper.d.i(D, ":containsData(text) query must not be empty");
        this.f92157c.add(new c.l(D));
    }

    private void k(boolean z9, boolean z10) {
        String b10 = org.jsoup.internal.d.b(this.f92155a.e(")"));
        Matcher matcher = f92152f.matcher(b10);
        Matcher matcher2 = f92153g.matcher(b10);
        int i4 = 2;
        if ("odd".equals(b10)) {
            r5 = 1;
        } else if (!"even".equals(b10)) {
            if (matcher.matches()) {
                int parseInt = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
                r5 = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
                i4 = parseInt;
            } else if (matcher2.matches()) {
                r5 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                i4 = 0;
            } else {
                throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", b10);
            }
        }
        if (z10) {
            if (z9) {
                this.f92157c.add(new c.b0(i4, r5));
            } else {
                this.f92157c.add(new c.c0(i4, r5));
            }
        } else if (z9) {
            this.f92157c.add(new c.a0(i4, r5));
        } else {
            this.f92157c.add(new c.z(i4, r5));
        }
    }

    private void l() {
        if (this.f92155a.s("#")) {
            d();
        } else if (this.f92155a.s(".")) {
            c();
        } else if (!this.f92155a.z() && !this.f92155a.t("*|")) {
            if (this.f92155a.t("[")) {
                b();
            } else if (this.f92155a.s("*")) {
                a();
            } else if (this.f92155a.s(":lt(")) {
                p();
            } else if (this.f92155a.s(":gt(")) {
                o();
            } else if (this.f92155a.s(":eq(")) {
                n();
            } else if (this.f92155a.t(":has(")) {
                m();
            } else if (this.f92155a.t(":contains(")) {
                i(false);
            } else if (this.f92155a.t(":containsOwn(")) {
                i(true);
            } else if (this.f92155a.t(":containsData(")) {
                j();
            } else if (this.f92155a.t(":matches(")) {
                q(false);
            } else if (this.f92155a.t(":matchesOwn(")) {
                q(true);
            } else if (this.f92155a.t(":not(")) {
                r();
            } else if (this.f92155a.s(":nth-child(")) {
                k(false, false);
            } else if (this.f92155a.s(":nth-last-child(")) {
                k(true, false);
            } else if (this.f92155a.s(":nth-of-type(")) {
                k(false, true);
            } else if (this.f92155a.s(":nth-last-of-type(")) {
                k(true, true);
            } else if (this.f92155a.s(":first-child")) {
                this.f92157c.add(new c.v());
            } else if (this.f92155a.s(":last-child")) {
                this.f92157c.add(new c.x());
            } else if (this.f92155a.s(":first-of-type")) {
                this.f92157c.add(new c.w());
            } else if (this.f92155a.s(":last-of-type")) {
                this.f92157c.add(new c.y());
            } else if (this.f92155a.s(":only-child")) {
                this.f92157c.add(new c.d0());
            } else if (this.f92155a.s(":only-of-type")) {
                this.f92157c.add(new c.e0());
            } else if (this.f92155a.s(":empty")) {
                this.f92157c.add(new c.u());
            } else if (this.f92155a.s(":root")) {
                this.f92157c.add(new c.f0());
            } else if (this.f92155a.s(":matchText")) {
                this.f92157c.add(new c.g0());
            } else {
                throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.f92156b, this.f92155a.B());
            }
        } else {
            e();
        }
    }

    private void m() {
        this.f92155a.h(":has");
        String d4 = this.f92155a.d('(', ')');
        org.jsoup.helper.d.i(d4, ":has(selector) subselect must not be empty");
        this.f92157c.add(new g.a(t(d4)));
    }

    private void n() {
        this.f92157c.add(new c.q(g()));
    }

    private void o() {
        this.f92157c.add(new c.s(g()));
    }

    private void p() {
        this.f92157c.add(new c.t(g()));
    }

    private void q(boolean z9) {
        this.f92155a.h(z9 ? ":matchesOwn" : ":matches");
        String d4 = this.f92155a.d('(', ')');
        org.jsoup.helper.d.i(d4, ":matches(regex) query must not be empty");
        if (z9) {
            this.f92157c.add(new c.i0(Pattern.compile(d4)));
        } else {
            this.f92157c.add(new c.h0(Pattern.compile(d4)));
        }
    }

    private void r() {
        this.f92155a.h(":not");
        String d4 = this.f92155a.d('(', ')');
        org.jsoup.helper.d.i(d4, ":not(selector) subselect must not be empty");
        this.f92157c.add(new g.d(t(d4)));
    }

    public static c t(String str) {
        try {
            return new f(str).s();
        } catch (IllegalArgumentException e4) {
            throw new Selector.SelectorParseException(e4.getMessage(), new Object[0]);
        }
    }

    c s() {
        this.f92155a.p();
        if (this.f92155a.v(f92150d)) {
            this.f92157c.add(new g.C0806g());
            f(this.f92155a.g());
        } else {
            l();
        }
        while (!this.f92155a.r()) {
            boolean p9 = this.f92155a.p();
            if (this.f92155a.v(f92150d)) {
                f(this.f92155a.g());
            } else if (p9) {
                f(' ');
            } else {
                l();
            }
        }
        if (this.f92157c.size() == 1) {
            return this.f92157c.get(0);
        }
        return new b.a(this.f92157c);
    }

    public String toString() {
        return this.f92156b;
    }
}
