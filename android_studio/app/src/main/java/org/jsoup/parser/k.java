package org.jsoup.parser;

import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TreeBuilder.java */
/* loaded from: classes5.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    protected f f92096a;

    /* renamed from: b  reason: collision with root package name */
    a f92097b;

    /* renamed from: c  reason: collision with root package name */
    i f92098c;

    /* renamed from: d  reason: collision with root package name */
    protected Document f92099d;

    /* renamed from: e  reason: collision with root package name */
    protected ArrayList<org.jsoup.nodes.g> f92100e;

    /* renamed from: f  reason: collision with root package name */
    protected String f92101f;

    /* renamed from: g  reason: collision with root package name */
    protected Token f92102g;

    /* renamed from: h  reason: collision with root package name */
    protected e f92103h;

    /* renamed from: i  reason: collision with root package name */
    protected Map<String, g> f92104i;

    /* renamed from: j  reason: collision with root package name */
    private Token.h f92105j = new Token.h();

    /* renamed from: k  reason: collision with root package name */
    private Token.g f92106k = new Token.g();

    /* JADX INFO: Access modifiers changed from: protected */
    public org.jsoup.nodes.g a() {
        int size = this.f92100e.size();
        return size > 0 ? this.f92100e.get(size - 1) : this.f92099d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(String str) {
        org.jsoup.nodes.g a10;
        return (this.f92100e.size() == 0 || (a10 = a()) == null || !a10.J1().equals(str)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract e c();

    protected void d(String str) {
        e(str, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(String str, Object... objArr) {
        ParseErrorList a10 = this.f92096a.a();
        if (a10.a()) {
            a10.add(new d(this.f92097b, str, objArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @r7.j
    public void f(Reader reader, String str, f fVar) {
        org.jsoup.helper.d.k(reader, "String input must not be null");
        org.jsoup.helper.d.k(str, "BaseURI must not be null");
        org.jsoup.helper.d.j(fVar);
        Document document = new Document(str);
        this.f92099d = document;
        document.M2(fVar);
        this.f92096a = fVar;
        this.f92103h = fVar.q();
        a aVar = new a(reader);
        this.f92097b = aVar;
        aVar.T(fVar.e());
        this.f92102g = null;
        this.f92098c = new i(this.f92097b, fVar.a());
        this.f92100e = new ArrayList<>(32);
        this.f92104i = new HashMap();
        this.f92101f = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean g(String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract k h();

    /* JADX INFO: Access modifiers changed from: package-private */
    @r7.j
    public Document i(Reader reader, String str, f fVar) {
        f(reader, str, fVar);
        o();
        this.f92097b.d();
        this.f92097b = null;
        this.f92098c = null;
        this.f92100e = null;
        this.f92104i = null;
        return this.f92099d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract List<org.jsoup.nodes.k> j(String str, org.jsoup.nodes.g gVar, String str2, f fVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean k(Token token);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean l(String str) {
        Token token = this.f92102g;
        Token.g gVar = this.f92106k;
        if (token == gVar) {
            return k(new Token.g().E(str));
        }
        return k(gVar.m().E(str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean m(String str) {
        Token.h hVar = this.f92105j;
        if (this.f92102g == hVar) {
            return k(new Token.h().E(str));
        }
        return k(hVar.m().E(str));
    }

    public boolean n(String str, org.jsoup.nodes.b bVar) {
        Token.h hVar = this.f92105j;
        if (this.f92102g == hVar) {
            return k(new Token.h().K(str, bVar));
        }
        hVar.m();
        hVar.K(str, bVar);
        return k(hVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o() {
        Token A;
        i iVar = this.f92098c;
        Token.TokenType tokenType = Token.TokenType.EOF;
        do {
            A = iVar.A();
            k(A);
            A.m();
        } while (A.f91898a != tokenType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g p(String str, e eVar) {
        g gVar = this.f92104i.get(str);
        if (gVar == null) {
            g q9 = g.q(str, eVar);
            this.f92104i.put(str, q9);
            return q9;
        }
        return gVar;
    }
}
