package org.jsoup.nodes;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import org.bouncycastle.i18n.MessageBundle;
import org.jsoup.Connection;
import org.jsoup.nodes.Entities;
import org.jsoup.select.Elements;
import org.jsoup.select.c;

/* loaded from: classes5.dex */
public class Document extends g {

    /* renamed from: r  reason: collision with root package name */
    private static final org.jsoup.select.c f91808r = new c.j0(MessageBundle.TITLE_ENTRY);
    @r7.h

    /* renamed from: l  reason: collision with root package name */
    private Connection f91809l;

    /* renamed from: m  reason: collision with root package name */
    private OutputSettings f91810m;

    /* renamed from: n  reason: collision with root package name */
    private org.jsoup.parser.f f91811n;

    /* renamed from: o  reason: collision with root package name */
    private QuirksMode f91812o;

    /* renamed from: p  reason: collision with root package name */
    private final String f91813p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f91814q;

    /* loaded from: classes5.dex */
    public static class OutputSettings implements Cloneable {
        @r7.h

        /* renamed from: d  reason: collision with root package name */
        Entities.b f91818d;

        /* renamed from: a  reason: collision with root package name */
        private Entities.EscapeMode f91815a = Entities.EscapeMode.base;

        /* renamed from: b  reason: collision with root package name */
        private Charset f91816b = org.jsoup.helper.b.f91726b;

        /* renamed from: c  reason: collision with root package name */
        private final ThreadLocal<CharsetEncoder> f91817c = new ThreadLocal<>();

        /* renamed from: e  reason: collision with root package name */
        private boolean f91819e = true;

        /* renamed from: f  reason: collision with root package name */
        private boolean f91820f = false;

        /* renamed from: g  reason: collision with root package name */
        private int f91821g = 1;

        /* renamed from: h  reason: collision with root package name */
        private Syntax f91822h = Syntax.html;

        /* loaded from: classes5.dex */
        public enum Syntax {
            html,
            xml
        }

        public Charset a() {
            return this.f91816b;
        }

        public OutputSettings b(String str) {
            c(Charset.forName(str));
            return this;
        }

        public OutputSettings c(Charset charset) {
            this.f91816b = charset;
            return this;
        }

        /* renamed from: d */
        public OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                outputSettings.b(this.f91816b.name());
                outputSettings.f91815a = Entities.EscapeMode.valueOf(this.f91815a.name());
                return outputSettings;
            } catch (CloneNotSupportedException e4) {
                throw new RuntimeException(e4);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public CharsetEncoder e() {
            CharsetEncoder charsetEncoder = this.f91817c.get();
            return charsetEncoder != null ? charsetEncoder : l();
        }

        public OutputSettings f(Entities.EscapeMode escapeMode) {
            this.f91815a = escapeMode;
            return this;
        }

        public Entities.EscapeMode g() {
            return this.f91815a;
        }

        public int h() {
            return this.f91821g;
        }

        public OutputSettings i(int i4) {
            org.jsoup.helper.d.d(i4 >= 0);
            this.f91821g = i4;
            return this;
        }

        public OutputSettings j(boolean z9) {
            this.f91820f = z9;
            return this;
        }

        public boolean k() {
            return this.f91820f;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public CharsetEncoder l() {
            CharsetEncoder newEncoder = this.f91816b.newEncoder();
            this.f91817c.set(newEncoder);
            this.f91818d = Entities.b.b(newEncoder.charset().name());
            return newEncoder;
        }

        public OutputSettings m(boolean z9) {
            this.f91819e = z9;
            return this;
        }

        public boolean n() {
            return this.f91819e;
        }

        public Syntax o() {
            return this.f91822h;
        }

        public OutputSettings p(Syntax syntax) {
            this.f91822h = syntax;
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public enum QuirksMode {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public Document(String str) {
        super(org.jsoup.parser.g.q("#root", org.jsoup.parser.e.f92011c), str);
        this.f91810m = new OutputSettings();
        this.f91812o = QuirksMode.noQuirks;
        this.f91814q = false;
        this.f91813p = str;
        this.f91811n = org.jsoup.parser.f.c();
    }

    public static Document B2(String str) {
        org.jsoup.helper.d.j(str);
        Document document = new Document(str);
        document.f91811n = document.N2();
        g r02 = document.r0("html");
        r02.r0(com.google.android.exoplayer2.text.ttml.d.f25724o);
        r02.r0(com.google.android.exoplayer2.text.ttml.d.f25726p);
        return document;
    }

    private void D2() {
        if (this.f91814q) {
            OutputSettings.Syntax o9 = K2().o();
            if (o9 == OutputSettings.Syntax.html) {
                g c22 = c2("meta[charset]");
                if (c22 != null) {
                    c22.h("charset", v2().displayName());
                } else {
                    E2().r0("meta").h("charset", v2().displayName());
                }
                a2("meta[name=charset]").remove();
            } else if (o9 == OutputSettings.Syntax.xml) {
                k kVar = x().get(0);
                if (kVar instanceof o) {
                    o oVar = (o) kVar;
                    if (oVar.p0().equals("xml")) {
                        oVar.h("encoding", v2().displayName());
                        if (oVar.A("version")) {
                            oVar.h("version", "1.0");
                            return;
                        }
                        return;
                    }
                    o oVar2 = new o("xml", false);
                    oVar2.h("version", "1.0");
                    oVar2.h("encoding", v2().displayName());
                    P1(oVar2);
                    return;
                }
                o oVar3 = new o("xml", false);
                oVar3.h("version", "1.0");
                oVar3.h("encoding", v2().displayName());
                P1(oVar3);
            }
        }
    }

    private g F2() {
        for (g gVar : B0()) {
            if (gVar.J1().equals("html")) {
                return gVar;
            }
        }
        return r0("html");
    }

    private void I2(String str, g gVar) {
        Elements j12 = j1(str);
        g first = j12.first();
        if (j12.size() > 1) {
            ArrayList<k> arrayList = new ArrayList();
            for (int i4 = 1; i4 < j12.size(); i4++) {
                g gVar2 = j12.get(i4);
                arrayList.addAll(gVar2.x());
                gVar2.S();
            }
            for (k kVar : arrayList) {
                first.p0(kVar);
            }
        }
        if (first.O() == null || first.O().equals(gVar)) {
            return;
        }
        gVar.p0(first);
    }

    private void J2(g gVar) {
        ArrayList arrayList = new ArrayList();
        for (k kVar : gVar.f91876g) {
            if (kVar instanceof n) {
                n nVar = (n) kVar;
                if (!nVar.p0()) {
                    arrayList.add(nVar);
                }
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            k kVar2 = (k) arrayList.get(size);
            gVar.U(kVar2);
            u2().P1(new n(" "));
            u2().P1(kVar2);
        }
    }

    public g A2(String str) {
        return new g(org.jsoup.parser.g.q(str, org.jsoup.parser.e.f92012d), k());
    }

    @r7.h
    public f C2() {
        for (k kVar : this.f91876g) {
            if (kVar instanceof f) {
                return (f) kVar;
            }
            if (!(kVar instanceof j)) {
                return null;
            }
        }
        return null;
    }

    public g E2() {
        g F2 = F2();
        for (g gVar : F2.B0()) {
            if (gVar.J1().equals(com.google.android.exoplayer2.text.ttml.d.f25724o)) {
                return gVar;
            }
        }
        return F2.R1(com.google.android.exoplayer2.text.ttml.d.f25724o);
    }

    public String G2() {
        return this.f91813p;
    }

    @Override // org.jsoup.nodes.g, org.jsoup.nodes.k
    public String H() {
        return "#document";
    }

    public Document H2() {
        g F2 = F2();
        g E2 = E2();
        u2();
        J2(E2);
        J2(F2);
        J2(this);
        I2(com.google.android.exoplayer2.text.ttml.d.f25724o, F2);
        I2(com.google.android.exoplayer2.text.ttml.d.f25726p, F2);
        D2();
        return this;
    }

    @Override // org.jsoup.nodes.k
    public String J() {
        return super.t1();
    }

    public OutputSettings K2() {
        return this.f91810m;
    }

    public Document L2(OutputSettings outputSettings) {
        org.jsoup.helper.d.j(outputSettings);
        this.f91810m = outputSettings;
        return this;
    }

    public Document M2(org.jsoup.parser.f fVar) {
        this.f91811n = fVar;
        return this;
    }

    public org.jsoup.parser.f N2() {
        return this.f91811n;
    }

    public QuirksMode O2() {
        return this.f91812o;
    }

    public Document P2(QuirksMode quirksMode) {
        this.f91812o = quirksMode;
        return this;
    }

    public String Q2() {
        g d22 = E2().d2(f91808r);
        return d22 != null ? org.jsoup.internal.f.n(d22.l2()).trim() : "";
    }

    public void R2(String str) {
        org.jsoup.helper.d.j(str);
        g d22 = E2().d2(f91808r);
        if (d22 == null) {
            d22 = E2().r0(MessageBundle.TITLE_ENTRY);
        }
        d22.m2(str);
    }

    public void S2(boolean z9) {
        this.f91814q = z9;
    }

    public boolean T2() {
        return this.f91814q;
    }

    @Override // org.jsoup.nodes.g
    public g m2(String str) {
        u2().m2(str);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public org.jsoup.nodes.g u2() {
        /*
            r5 = this;
            org.jsoup.nodes.g r0 = r5.F2()
            java.util.List r1 = r0.B0()
            java.util.Iterator r1 = r1.iterator()
        Lc:
            boolean r2 = r1.hasNext()
            java.lang.String r3 = "body"
            if (r2 == 0) goto L31
            java.lang.Object r2 = r1.next()
            org.jsoup.nodes.g r2 = (org.jsoup.nodes.g) r2
            java.lang.String r4 = r2.J1()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L30
            java.lang.String r3 = r2.J1()
            java.lang.String r4 = "frameset"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto Lc
        L30:
            return r2
        L31:
            org.jsoup.nodes.g r0 = r0.r0(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Document.u2():org.jsoup.nodes.g");
    }

    public Charset v2() {
        return this.f91810m.a();
    }

    public void w2(Charset charset) {
        S2(true);
        this.f91810m.c(charset);
        D2();
    }

    @Override // org.jsoup.nodes.g, org.jsoup.nodes.k
    /* renamed from: x2 */
    public Document t() {
        Document document = (Document) super.t();
        document.f91810m = this.f91810m.clone();
        return document;
    }

    public Connection y2() {
        Connection connection = this.f91809l;
        return connection == null ? org.jsoup.a.j() : connection;
    }

    public Document z2(Connection connection) {
        org.jsoup.helper.d.j(connection);
        this.f91809l = connection;
        return this;
    }
}
