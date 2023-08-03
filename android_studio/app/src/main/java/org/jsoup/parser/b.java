package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.MessageBundle;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.n;
import org.jsoup.parser.Token;
import org.jsoup.parser.c;

/* compiled from: HtmlTreeBuilder.java */
/* loaded from: classes5.dex */
public class b extends k {
    public static final int H = 100;
    private static final int I = 256;
    private static final int J = 12;
    static final /* synthetic */ boolean K = false;

    /* renamed from: l  reason: collision with root package name */
    private c f91941l;

    /* renamed from: m  reason: collision with root package name */
    private c f91942m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f91943n;
    @r7.h

    /* renamed from: o  reason: collision with root package name */
    private org.jsoup.nodes.g f91944o;
    @r7.h

    /* renamed from: p  reason: collision with root package name */
    private org.jsoup.nodes.i f91945p;
    @r7.h

    /* renamed from: q  reason: collision with root package name */
    private org.jsoup.nodes.g f91946q;

    /* renamed from: r  reason: collision with root package name */
    private ArrayList<org.jsoup.nodes.g> f91947r;

    /* renamed from: s  reason: collision with root package name */
    private ArrayList<c> f91948s;

    /* renamed from: t  reason: collision with root package name */
    private List<String> f91949t;

    /* renamed from: u  reason: collision with root package name */
    private Token.g f91950u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f91951v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f91952w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f91953x;

    /* renamed from: y  reason: collision with root package name */
    private String[] f91954y = {null};

    /* renamed from: z  reason: collision with root package name */
    static final String[] f91940z = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};
    static final String[] A = {"ol", "ul"};
    static final String[] B = {"button"};
    static final String[] C = {"html", "table"};
    static final String[] D = {"optgroup", "option"};
    static final String[] E = {"dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc"};
    static final String[] F = {"caption", "colgroup", "dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
    static final String[] G = {"address", "applet", "area", "article", "aside", com.google.android.exoplayer2.text.ttml.d.X, "basefont", "bgsound", "blockquote", com.google.android.exoplayer2.text.ttml.d.f25726p, com.google.android.exoplayer2.text.ttml.d.f25734t, "button", "caption", com.google.android.exoplayer2.text.ttml.d.f25721m0, "col", "colgroup", "command", "dd", ErrorBundle.DETAIL_ENTRY, "dir", com.google.android.exoplayer2.text.ttml.d.f25728q, "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", m.c.f86929c, TypedValues.Attributes.S_FRAME, "frameset", "h1", "h2", "h3", "h4", "h5", "h6", com.google.android.exoplayer2.text.ttml.d.f25724o, "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", com.alipay.sdk.authjs.a.f6841l, "plaintext", "pre", "script", "section", "select", com.google.android.exoplayer2.text.ttml.d.f25736u, ErrorBundle.SUMMARY_ENTRY, "table", "tbody", "td", "textarea", "tfoot", "th", "thead", MessageBundle.TITLE_ENTRY, "tr", "ul", "wbr", "xmp"};

    private void L0(ArrayList<org.jsoup.nodes.g> arrayList, org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
        int lastIndexOf = arrayList.lastIndexOf(gVar);
        org.jsoup.helper.d.d(lastIndexOf != -1);
        arrayList.set(lastIndexOf, gVar2);
    }

    private boolean T(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.f91954y;
        strArr3[0] = str;
        return U(strArr3, strArr, strArr2);
    }

    private boolean U(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.f92100e.size() - 1;
        int i4 = size > 100 ? size - 100 : 0;
        while (size >= i4) {
            String J1 = this.f92100e.get(size).J1();
            if (org.jsoup.internal.f.d(J1, strArr)) {
                return true;
            }
            if (org.jsoup.internal.f.d(J1, strArr2)) {
                return false;
            }
            if (strArr3 != null && org.jsoup.internal.f.d(J1, strArr3)) {
                return false;
            }
            size--;
        }
        return false;
    }

    private void e0(org.jsoup.nodes.k kVar) {
        org.jsoup.nodes.i iVar;
        if (this.f92100e.isEmpty()) {
            this.f92099d.p0(kVar);
        } else if (h0() && org.jsoup.internal.f.d(a().J1(), c.z.C)) {
            c0(kVar);
        } else {
            a().p0(kVar);
        }
        if (kVar instanceof org.jsoup.nodes.g) {
            org.jsoup.nodes.g gVar = (org.jsoup.nodes.g) kVar;
            if (!gVar.i2().f() || (iVar = this.f91945p) == null) {
                return;
            }
            iVar.u2(gVar);
        }
    }

    private boolean k0(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
        return gVar.J1().equals(gVar2.J1()) && gVar.i().equals(gVar2.i());
    }

    private static boolean s0(ArrayList<org.jsoup.nodes.g> arrayList, org.jsoup.nodes.g gVar) {
        int size = arrayList.size() - 1;
        int i4 = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        while (size >= i4) {
            if (arrayList.get(size) == gVar) {
                return true;
            }
            size--;
        }
        return false;
    }

    private void t(String... strArr) {
        for (int size = this.f92100e.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.g gVar = this.f92100e.get(size);
            if (org.jsoup.internal.f.c(gVar.J1(), strArr) || gVar.J1().equals("html")) {
                return;
            }
            this.f92100e.remove(size);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(boolean z9) {
        this.f91951v = z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int A0(org.jsoup.nodes.g gVar) {
        for (int i4 = 0; i4 < this.f91947r.size(); i4++) {
            if (gVar == this.f91947r.get(i4)) {
                return i4;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B() {
        return this.f91951v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B0(Token token, c cVar) {
        this.f92102g = token;
        return cVar.n(token, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C() {
        E(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C0(org.jsoup.nodes.g gVar) {
        this.f92100e.add(gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(String str) {
        while (org.jsoup.internal.f.d(a().J1(), E)) {
            if (str != null && b(str)) {
                return;
            }
            v0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D0(org.jsoup.nodes.g gVar) {
        r(gVar);
        this.f91947r.add(gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(boolean z9) {
        String[] strArr = z9 ? F : E;
        while (org.jsoup.internal.f.d(a().J1(), strArr)) {
            v0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E0(c cVar) {
        this.f91948s.add(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.g F(String str) {
        for (int size = this.f91947r.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.g gVar = this.f91947r.get(size);
            if (gVar == null) {
                return null;
            }
            if (gVar.J1().equals(str)) {
                return gVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F0(org.jsoup.nodes.g gVar, int i4) {
        r(gVar);
        try {
            this.f91947r.add(i4, gVar);
        } catch (IndexOutOfBoundsException unused) {
            this.f91947r.add(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String G() {
        return this.f92101f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void G0() {
        /*
            r7 = this;
            org.jsoup.nodes.g r0 = r7.m0()
            if (r0 == 0) goto L61
            boolean r1 = r7.t0(r0)
            if (r1 == 0) goto Ld
            goto L61
        Ld:
            java.util.ArrayList<org.jsoup.nodes.g> r1 = r7.f91947r
            int r1 = r1.size()
            int r2 = r1 + (-12)
            r3 = 0
            if (r2 >= 0) goto L19
            r2 = 0
        L19:
            r4 = 1
            int r1 = r1 - r4
            r5 = r1
        L1c:
            if (r5 != r2) goto L1f
            goto L32
        L1f:
            java.util.ArrayList<org.jsoup.nodes.g> r0 = r7.f91947r
            int r5 = r5 + (-1)
            java.lang.Object r0 = r0.get(r5)
            org.jsoup.nodes.g r0 = (org.jsoup.nodes.g) r0
            if (r0 == 0) goto L31
            boolean r6 = r7.t0(r0)
            if (r6 == 0) goto L1c
        L31:
            r4 = 0
        L32:
            if (r4 != 0) goto L3e
            java.util.ArrayList<org.jsoup.nodes.g> r0 = r7.f91947r
            int r5 = r5 + 1
            java.lang.Object r0 = r0.get(r5)
            org.jsoup.nodes.g r0 = (org.jsoup.nodes.g) r0
        L3e:
            org.jsoup.helper.d.j(r0)
            java.lang.String r2 = r0.J1()
            org.jsoup.nodes.g r2 = r7.g0(r2)
            int r4 = r0.j()
            if (r4 <= 0) goto L5a
            org.jsoup.nodes.b r4 = r2.i()
            org.jsoup.nodes.b r6 = r0.i()
            r4.f(r6)
        L5a:
            java.util.ArrayList<org.jsoup.nodes.g> r4 = r7.f91947r
            r4.set(r5, r2)
            if (r5 != r1) goto L31
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.b.G0():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Document H() {
        return this.f92099d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H0(org.jsoup.nodes.g gVar) {
        for (int size = this.f91947r.size() - 1; size >= 0; size--) {
            if (this.f91947r.get(size) == gVar) {
                this.f91947r.remove(size);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @r7.h
    public org.jsoup.nodes.i I() {
        return this.f91945p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean I0(org.jsoup.nodes.g gVar) {
        for (int size = this.f92100e.size() - 1; size >= 0; size--) {
            if (this.f92100e.get(size) == gVar) {
                this.f92100e.remove(size);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @r7.h
    public org.jsoup.nodes.g J(String str) {
        int size = this.f92100e.size() - 1;
        int i4 = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        while (size >= i4) {
            org.jsoup.nodes.g gVar = this.f92100e.get(size);
            if (gVar.J1().equals(str)) {
                return gVar;
            }
            size--;
        }
        return null;
    }

    org.jsoup.nodes.g J0() {
        int size = this.f91947r.size();
        if (size > 0) {
            return this.f91947r.remove(size - 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.g K() {
        return this.f91944o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K0(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
        L0(this.f91947r, gVar, gVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> L() {
        return this.f91949t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<org.jsoup.nodes.g> M() {
        return this.f92100e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M0(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
        L0(this.f92100e, gVar, gVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean N(String str) {
        return Q(str, B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N0() {
        int size = this.f92100e.size() - 1;
        int i4 = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        if (this.f92100e.size() == 0) {
            T0(c.f91961g);
        }
        boolean z9 = false;
        while (size >= i4) {
            org.jsoup.nodes.g gVar = this.f92100e.get(size);
            if (size == i4) {
                if (this.f91953x) {
                    gVar = this.f91946q;
                }
                z9 = true;
            }
            String J1 = gVar != null ? gVar.J1() : "";
            J1.hashCode();
            char c10 = 65535;
            switch (J1.hashCode()) {
                case -1644953643:
                    if (J1.equals("frameset")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1321546630:
                    if (J1.equals("template")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -906021636:
                    if (J1.equals("select")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -636197633:
                    if (J1.equals("colgroup")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3696:
                    if (J1.equals("td")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 3700:
                    if (J1.equals("th")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3710:
                    if (J1.equals("tr")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3029410:
                    if (J1.equals(com.google.android.exoplayer2.text.ttml.d.f25726p)) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3198432:
                    if (J1.equals(com.google.android.exoplayer2.text.ttml.d.f25724o)) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 3213227:
                    if (J1.equals("html")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 110115790:
                    if (J1.equals("table")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 110157846:
                    if (J1.equals("tbody")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 110277346:
                    if (J1.equals("tfoot")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 110326868:
                    if (J1.equals("thead")) {
                        c10 = '\r';
                        break;
                    }
                    break;
                case 552573414:
                    if (J1.equals("caption")) {
                        c10 = 14;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    T0(c.f91974t);
                    return;
                case 1:
                    c y9 = y();
                    org.jsoup.helper.d.k(y9, "Bug: no template insertion mode on stack!");
                    T0(y9);
                    return;
                case 2:
                    T0(c.f91970p);
                    return;
                case 3:
                    T0(c.f91966l);
                    return;
                case 4:
                case 5:
                    if (!z9) {
                        T0(c.f91969o);
                        return;
                    }
                    break;
                case 6:
                    T0(c.f91968n);
                    return;
                case 7:
                    T0(c.f91961g);
                    return;
                case '\b':
                    if (!z9) {
                        T0(c.f91958d);
                        return;
                    }
                    break;
                case '\t':
                    T0(this.f91944o == null ? c.f91957c : c.f91960f);
                    return;
                case '\n':
                    T0(c.f91963i);
                    return;
                case 11:
                case '\f':
                case '\r':
                    T0(c.f91967m);
                    return;
                case 14:
                    T0(c.f91965k);
                    return;
            }
            if (z9) {
                T0(c.f91961g);
                return;
            }
            size--;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean O(String str) {
        return Q(str, A);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O0(org.jsoup.nodes.i iVar) {
        this.f91945p = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean P(String str) {
        return Q(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P0(boolean z9) {
        this.f91952w = z9;
    }

    boolean Q(String str, String[] strArr) {
        return T(str, f91940z, strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q0(org.jsoup.nodes.g gVar) {
        this.f91944o = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean R(String[] strArr) {
        return U(strArr, f91940z, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c R0() {
        return this.f91941l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean S(String str) {
        for (int size = this.f92100e.size() - 1; size >= 0; size--) {
            String J1 = this.f92100e.get(size).J1();
            if (J1.equals(str)) {
                return true;
            }
            if (!org.jsoup.internal.f.d(J1, D)) {
                return false;
            }
        }
        org.jsoup.helper.d.a("Should not be reachable");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int S0() {
        return this.f91948s.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T0(c cVar) {
        this.f91941l = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean V(String str) {
        return T(str, C, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.g W(Token.h hVar) {
        if (hVar.B() && !hVar.f91920l.isEmpty() && hVar.f91920l.n(this.f92103h) > 0) {
            e("Dropped duplicate attribute(s) in tag [%s]", hVar.f91911c);
        }
        if (hVar.C()) {
            org.jsoup.nodes.g a02 = a0(hVar);
            this.f92100e.add(a02);
            this.f92098c.B(j.f92060a);
            this.f92098c.o(this.f91950u.m().E(a02.j2()));
            return a02;
        }
        org.jsoup.nodes.g gVar = new org.jsoup.nodes.g(p(hVar.D(), this.f92103h), null, this.f92103h.c(hVar.f91920l));
        X(gVar);
        return gVar;
    }

    void X(org.jsoup.nodes.g gVar) {
        e0(gVar);
        this.f92100e.add(gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(Token.c cVar) {
        org.jsoup.nodes.k nVar;
        org.jsoup.nodes.g a10 = a();
        String J1 = a10.J1();
        String q9 = cVar.q();
        if (cVar.f()) {
            nVar = new org.jsoup.nodes.c(q9);
        } else if (g(J1)) {
            nVar = new org.jsoup.nodes.e(q9);
        } else {
            nVar = new n(q9);
        }
        a10.p0(nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z(Token.d dVar) {
        e0(new org.jsoup.nodes.d(dVar.s()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.g a0(Token.h hVar) {
        g p9 = p(hVar.D(), this.f92103h);
        org.jsoup.nodes.g gVar = new org.jsoup.nodes.g(p9, null, this.f92103h.c(hVar.f91920l));
        e0(gVar);
        if (hVar.C()) {
            if (p9.i()) {
                if (!p9.e()) {
                    this.f92098c.w("Tag [%s] cannot be self closing; not a void tag", p9.l());
                }
            } else {
                p9.o();
            }
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.i b0(Token.h hVar, boolean z9, boolean z10) {
        org.jsoup.nodes.i iVar = new org.jsoup.nodes.i(p(hVar.D(), this.f92103h), null, this.f92103h.c(hVar.f91920l));
        if (z10) {
            if (!r0("template")) {
                O0(iVar);
            }
        } else {
            O0(iVar);
        }
        e0(iVar);
        if (z9) {
            this.f92100e.add(iVar);
        }
        return iVar;
    }

    @Override // org.jsoup.parser.k
    e c() {
        return e.f92011c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c0(org.jsoup.nodes.k kVar) {
        org.jsoup.nodes.g gVar;
        org.jsoup.nodes.g J2 = J("table");
        boolean z9 = false;
        if (J2 != null) {
            if (J2.O() != null) {
                gVar = J2.O();
                z9 = true;
            } else {
                gVar = q(J2);
            }
        } else {
            gVar = this.f92100e.get(0);
        }
        if (z9) {
            org.jsoup.helper.d.j(J2);
            J2.m(kVar);
            return;
        }
        gVar.p0(kVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d0() {
        this.f91947r.add(null);
    }

    @Override // org.jsoup.parser.k
    @r7.j
    protected void f(Reader reader, String str, f fVar) {
        super.f(reader, str, fVar);
        this.f91941l = c.f91955a;
        this.f91942m = null;
        this.f91943n = false;
        this.f91944o = null;
        this.f91945p = null;
        this.f91946q = null;
        this.f91947r = new ArrayList<>();
        this.f91948s = new ArrayList<>();
        this.f91949t = new ArrayList();
        this.f91950u = new Token.g();
        this.f91951v = true;
        this.f91952w = false;
        this.f91953x = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f0(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
        int lastIndexOf = this.f92100e.lastIndexOf(gVar);
        org.jsoup.helper.d.d(lastIndexOf != -1);
        this.f92100e.add(lastIndexOf + 1, gVar2);
    }

    @Override // org.jsoup.parser.k
    protected boolean g(String str) {
        return str.equals("script") || str.equals(com.google.android.exoplayer2.text.ttml.d.f25736u);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.g g0(String str) {
        org.jsoup.nodes.g gVar = new org.jsoup.nodes.g(p(str, this.f92103h), null);
        X(gVar);
        return gVar;
    }

    boolean h0() {
        return this.f91952w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i0() {
        return this.f91953x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a6, code lost:
        if (r0.equals("iframe") == false) goto L8;
     */
    @Override // org.jsoup.parser.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<org.jsoup.nodes.k> j(java.lang.String r3, @r7.h org.jsoup.nodes.g r4, java.lang.String r5, org.jsoup.parser.f r6) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.b.j(java.lang.String, org.jsoup.nodes.g, java.lang.String, org.jsoup.parser.f):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j0(org.jsoup.nodes.g gVar) {
        return s0(this.f91947r, gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.parser.k
    public boolean k(Token token) {
        this.f92102g = token;
        return this.f91941l.n(token, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l0(org.jsoup.nodes.g gVar) {
        return org.jsoup.internal.f.d(gVar.J1(), G);
    }

    org.jsoup.nodes.g m0() {
        if (this.f91947r.size() > 0) {
            ArrayList<org.jsoup.nodes.g> arrayList = this.f91947r;
            return arrayList.get(arrayList.size() - 1);
        }
        return null;
    }

    @Override // org.jsoup.parser.k
    public /* bridge */ /* synthetic */ boolean n(String str, org.jsoup.nodes.b bVar) {
        return super.n(str, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n0() {
        this.f91942m = this.f91941l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o0(org.jsoup.nodes.g gVar) {
        if (this.f91943n) {
            return;
        }
        String a10 = gVar.a("href");
        if (a10.length() != 0) {
            this.f92101f = a10;
            this.f91943n = true;
            this.f92099d.Z(a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.jsoup.parser.k
    /* renamed from: p0 */
    public b h() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @r7.h
    public org.jsoup.nodes.g q(org.jsoup.nodes.g gVar) {
        for (int size = this.f92100e.size() - 1; size >= 0; size--) {
            if (this.f92100e.get(size) == gVar) {
                return this.f92100e.get(size - 1);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q0() {
        this.f91949t = new ArrayList();
    }

    void r(org.jsoup.nodes.g gVar) {
        int i4 = 0;
        for (int size = this.f91947r.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.g gVar2 = this.f91947r.get(size);
            if (gVar2 == null) {
                return;
            }
            if (k0(gVar, gVar2)) {
                i4++;
            }
            if (i4 == 3) {
                this.f91947r.remove(size);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r0(String str) {
        return J(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        while (!this.f91947r.isEmpty() && J0() != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t0(org.jsoup.nodes.g gVar) {
        return s0(this.f92100e, gVar);
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.f92102g + ", state=" + this.f91941l + ", currentElement=" + a() + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        t("tbody", "tfoot", "thead", "template");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c u0() {
        return this.f91942m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v() {
        t("table", "template");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.g v0() {
        return this.f92100e.remove(this.f92100e.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w() {
        t("tr", "template");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w0(String str) {
        for (int size = this.f92100e.size() - 1; size >= 0 && !this.f92100e.get(size).J1().equals(str); size--) {
            this.f92100e.remove(size);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(String str) {
        D(str);
        if (!str.equals(a().J1())) {
            z(R0());
        }
        x0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @r7.h
    public org.jsoup.nodes.g x0(String str) {
        for (int size = this.f92100e.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.g gVar = this.f92100e.get(size);
            this.f92100e.remove(size);
            if (gVar.J1().equals(str)) {
                return gVar;
            }
        }
        return null;
    }

    @r7.h
    c y() {
        if (this.f91948s.size() > 0) {
            ArrayList<c> arrayList = this.f91948s;
            return arrayList.get(arrayList.size() - 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y0(String... strArr) {
        for (int size = this.f92100e.size() - 1; size >= 0; size--) {
            this.f92100e.remove(size);
            if (org.jsoup.internal.f.d(this.f92100e.get(size).J1(), strArr)) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(c cVar) {
        if (this.f92096a.a().a()) {
            this.f92096a.a().add(new d(this.f92097b, "Unexpected %s token [%s] when in state [%s]", this.f92102g.o(), this.f92102g, cVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @r7.h
    public c z0() {
        if (this.f91948s.size() > 0) {
            ArrayList<c> arrayList = this.f91948s;
            return arrayList.remove(arrayList.size() - 1);
        }
        return null;
    }
}
