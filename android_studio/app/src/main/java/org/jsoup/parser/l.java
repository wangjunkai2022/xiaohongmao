package org.jsoup.parser;

import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Entities;
import org.jsoup.nodes.n;
import org.jsoup.nodes.o;
import org.jsoup.parser.Token;

/* compiled from: XmlTreeBuilder.java */
/* loaded from: classes5.dex */
public class l extends k {

    /* renamed from: l  reason: collision with root package name */
    private static final int f92107l = 256;

    /* compiled from: XmlTreeBuilder.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92108a;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f92108a = iArr;
            try {
                iArr[Token.TokenType.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92108a[Token.TokenType.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92108a[Token.TokenType.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92108a[Token.TokenType.Character.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f92108a[Token.TokenType.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f92108a[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private void u(org.jsoup.nodes.k kVar) {
        a().p0(kVar);
    }

    private void z(Token.g gVar) {
        org.jsoup.nodes.g gVar2;
        String d4 = this.f92103h.d(gVar.f91910b);
        int size = this.f92100e.size() - 1;
        int i4 = size >= 256 ? size - 256 : 0;
        int size2 = this.f92100e.size() - 1;
        while (true) {
            if (size2 < i4) {
                gVar2 = null;
                break;
            }
            gVar2 = this.f92100e.get(size2);
            if (gVar2.H().equals(d4)) {
                break;
            }
            size2--;
        }
        if (gVar2 == null) {
            return;
        }
        for (int size3 = this.f92100e.size() - 1; size3 >= 0; size3--) {
            org.jsoup.nodes.g gVar3 = this.f92100e.get(size3);
            this.f92100e.remove(size3);
            if (gVar3 == gVar2) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.jsoup.parser.k
    public e c() {
        return e.f92012d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.parser.k
    @r7.j
    public void f(Reader reader, String str, f fVar) {
        super.f(reader, str, fVar);
        this.f92100e.add(this.f92099d);
        this.f92099d.K2().p(Document.OutputSettings.Syntax.xml).f(Entities.EscapeMode.xhtml).m(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.jsoup.parser.k
    public List<org.jsoup.nodes.k> j(String str, org.jsoup.nodes.g gVar, String str2, f fVar) {
        return y(str, str2, fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.parser.k
    public boolean k(Token token) {
        switch (a.f92108a[token.f91898a.ordinal()]) {
            case 1:
                q(token.e());
                return true;
            case 2:
                z(token.d());
                return true;
            case 3:
                s(token.b());
                return true;
            case 4:
                r(token.a());
                return true;
            case 5:
                t(token.c());
                return true;
            case 6:
                return true;
            default:
                org.jsoup.helper.d.a("Unexpected token type: " + token.f91898a);
                return true;
        }
    }

    @Override // org.jsoup.parser.k
    public /* bridge */ /* synthetic */ boolean n(String str, org.jsoup.nodes.b bVar) {
        return super.n(str, bVar);
    }

    org.jsoup.nodes.g q(Token.h hVar) {
        g p9 = p(hVar.D(), this.f92103h);
        if (hVar.B()) {
            hVar.f91920l.n(this.f92103h);
        }
        org.jsoup.nodes.g gVar = new org.jsoup.nodes.g(p9, null, this.f92103h.c(hVar.f91920l));
        u(gVar);
        if (hVar.C()) {
            if (!p9.i()) {
                p9.o();
            }
        } else {
            this.f92100e.add(gVar);
        }
        return gVar;
    }

    void r(Token.c cVar) {
        String q9 = cVar.q();
        u(cVar.f() ? new org.jsoup.nodes.c(q9) : new n(q9));
    }

    void s(Token.d dVar) {
        o m02;
        org.jsoup.nodes.d dVar2 = new org.jsoup.nodes.d(dVar.s());
        if (dVar.f91903d && dVar2.p0() && (m02 = dVar2.m0()) != null) {
            dVar2 = m02;
        }
        u(dVar2);
    }

    void t(Token.e eVar) {
        org.jsoup.nodes.f fVar = new org.jsoup.nodes.f(this.f92103h.d(eVar.p()), eVar.r(), eVar.s());
        fVar.p0(eVar.q());
        u(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.jsoup.parser.k
    /* renamed from: v */
    public l h() {
        return new l();
    }

    Document w(Reader reader, String str) {
        return i(reader, str, new f(this));
    }

    Document x(String str, String str2) {
        return i(new StringReader(str), str2, new f(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<org.jsoup.nodes.k> y(String str, String str2, f fVar) {
        f(new StringReader(str), str2, fVar);
        o();
        return this.f92099d.p();
    }
}
