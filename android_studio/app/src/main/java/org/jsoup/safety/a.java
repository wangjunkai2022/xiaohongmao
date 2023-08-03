package org.jsoup.safety;

import java.util.Iterator;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.g;
import org.jsoup.nodes.k;
import org.jsoup.nodes.n;
import org.jsoup.parser.ParseErrorList;
import org.jsoup.parser.f;
import org.jsoup.select.e;

/* compiled from: Cleaner.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final org.jsoup.safety.b f92109a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cleaner.java */
    /* loaded from: classes5.dex */
    public final class b implements e {

        /* renamed from: a  reason: collision with root package name */
        private int f92110a;

        /* renamed from: b  reason: collision with root package name */
        private final g f92111b;

        /* renamed from: c  reason: collision with root package name */
        private g f92112c;

        @Override // org.jsoup.select.e
        public void a(k kVar, int i4) {
            if ((kVar instanceof g) && a.this.f92109a.i(kVar.H())) {
                this.f92112c = this.f92112c.O();
            }
        }

        @Override // org.jsoup.select.e
        public void b(k kVar, int i4) {
            if (kVar instanceof g) {
                g gVar = (g) kVar;
                if (a.this.f92109a.i(gVar.J1())) {
                    c e4 = a.this.e(gVar);
                    g gVar2 = e4.f92114a;
                    this.f92112c.p0(gVar2);
                    this.f92110a += e4.f92115b;
                    this.f92112c = gVar2;
                } else if (kVar != this.f92111b) {
                    this.f92110a++;
                }
            } else if (kVar instanceof n) {
                this.f92112c.p0(new n(((n) kVar).o0()));
            } else if ((kVar instanceof org.jsoup.nodes.e) && a.this.f92109a.i(kVar.O().H())) {
                this.f92112c.p0(new org.jsoup.nodes.e(((org.jsoup.nodes.e) kVar).o0()));
            } else {
                this.f92110a++;
            }
        }

        private b(g gVar, g gVar2) {
            this.f92110a = 0;
            this.f92111b = gVar;
            this.f92112c = gVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cleaner.java */
    /* loaded from: classes5.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        g f92114a;

        /* renamed from: b  reason: collision with root package name */
        int f92115b;

        c(g gVar, int i4) {
            this.f92114a = gVar;
            this.f92115b = i4;
        }
    }

    public a(org.jsoup.safety.b bVar) {
        org.jsoup.helper.d.j(bVar);
        this.f92109a = bVar;
    }

    private int d(g gVar, g gVar2) {
        b bVar = new b(gVar, gVar2);
        org.jsoup.select.d.c(bVar, gVar);
        return bVar.f92110a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c e(g gVar) {
        String j22 = gVar.j2();
        org.jsoup.nodes.b bVar = new org.jsoup.nodes.b();
        g gVar2 = new g(org.jsoup.parser.g.p(j22), gVar.k(), bVar);
        Iterator<org.jsoup.nodes.a> it = gVar.i().iterator();
        int i4 = 0;
        while (it.hasNext()) {
            org.jsoup.nodes.a next = it.next();
            if (this.f92109a.h(j22, gVar, next)) {
                bVar.G(next);
            } else {
                i4++;
            }
        }
        bVar.f(this.f92109a.g(j22));
        return new c(gVar2, i4);
    }

    public Document c(Document document) {
        org.jsoup.helper.d.j(document);
        Document B2 = Document.B2(document.k());
        d(document.u2(), B2.u2());
        B2.L2(document.K2().clone());
        return B2;
    }

    public boolean f(Document document) {
        org.jsoup.helper.d.j(document);
        return d(document.u2(), Document.B2(document.k()).u2()) == 0 && document.E2().p().isEmpty();
    }

    public boolean g(String str) {
        Document B2 = Document.B2("");
        Document B22 = Document.B2("");
        ParseErrorList tracking = ParseErrorList.tracking(1);
        B22.u2().y1(0, f.j(str, B22.u2(), "", tracking));
        return d(B22.u2(), B2.u2()) == 0 && tracking.isEmpty();
    }

    @Deprecated
    public a(org.jsoup.safety.c cVar) {
        org.jsoup.helper.d.j(cVar);
        this.f92109a = cVar;
    }
}
