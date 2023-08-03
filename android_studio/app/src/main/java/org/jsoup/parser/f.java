package org.jsoup.parser;

import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import org.jsoup.nodes.Document;

/* compiled from: Parser.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private k f92015a;

    /* renamed from: b  reason: collision with root package name */
    private ParseErrorList f92016b;

    /* renamed from: c  reason: collision with root package name */
    private e f92017c;

    public f(k kVar) {
        this.f92015a = kVar;
        this.f92017c = kVar.c();
        this.f92016b = ParseErrorList.noTracking();
    }

    public static f c() {
        return new f(new b());
    }

    public static Document g(String str, String str2) {
        b bVar = new b();
        return bVar.i(new StringReader(str), str2, new f(bVar));
    }

    public static Document h(String str, String str2) {
        Document B2 = Document.B2(str2);
        org.jsoup.nodes.g u22 = B2.u2();
        List<org.jsoup.nodes.k> i4 = i(str, u22, str2);
        org.jsoup.nodes.k[] kVarArr = (org.jsoup.nodes.k[]) i4.toArray(new org.jsoup.nodes.k[0]);
        for (int length = kVarArr.length - 1; length > 0; length--) {
            kVarArr[length].S();
        }
        for (org.jsoup.nodes.k kVar : kVarArr) {
            u22.p0(kVar);
        }
        return B2;
    }

    public static List<org.jsoup.nodes.k> i(String str, org.jsoup.nodes.g gVar, String str2) {
        b bVar = new b();
        return bVar.j(str, gVar, str2, new f(bVar));
    }

    public static List<org.jsoup.nodes.k> j(String str, org.jsoup.nodes.g gVar, String str2, ParseErrorList parseErrorList) {
        b bVar = new b();
        f fVar = new f(bVar);
        fVar.f92016b = parseErrorList;
        return bVar.j(str, gVar, str2, fVar);
    }

    public static List<org.jsoup.nodes.k> n(String str, String str2) {
        l lVar = new l();
        return lVar.y(str, str2, new f(lVar));
    }

    public static String s(String str, boolean z9) {
        return new i(new a(str), ParseErrorList.noTracking()).C(z9);
    }

    public static f t() {
        return new f(new l());
    }

    public ParseErrorList a() {
        return this.f92016b;
    }

    public k b() {
        return this.f92015a;
    }

    public boolean d(String str) {
        return b().g(str);
    }

    public boolean e() {
        return this.f92016b.b() > 0;
    }

    public f f() {
        return new f(this);
    }

    public List<org.jsoup.nodes.k> k(String str, org.jsoup.nodes.g gVar, String str2) {
        return this.f92015a.j(str, gVar, str2, this);
    }

    public Document l(Reader reader, String str) {
        return this.f92015a.i(reader, str, this);
    }

    public Document m(String str, String str2) {
        return this.f92015a.i(new StringReader(str), str2, this);
    }

    public f o(int i4) {
        this.f92016b = i4 > 0 ? ParseErrorList.tracking(i4) : ParseErrorList.noTracking();
        return this;
    }

    public f p(k kVar) {
        this.f92015a = kVar;
        kVar.f92096a = this;
        return this;
    }

    public e q() {
        return this.f92017c;
    }

    public f r(e eVar) {
        this.f92017c = eVar;
        return this;
    }

    private f(f fVar) {
        this.f92015a = fVar.f92015a.h();
        this.f92016b = new ParseErrorList(fVar.f92016b);
        this.f92017c = new e(fVar.f92017c);
    }
}
