package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.extractor.ts.h0;
import java.util.Arrays;
import kotlin.text.Typography;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Tokeniser.java */
/* loaded from: classes5.dex */
public final class i {

    /* renamed from: s  reason: collision with root package name */
    static final char f92038s = 65533;

    /* renamed from: t  reason: collision with root package name */
    private static final char[] f92039t;

    /* renamed from: u  reason: collision with root package name */
    static final int f92040u = 128;

    /* renamed from: v  reason: collision with root package name */
    static final int[] f92041v;

    /* renamed from: a  reason: collision with root package name */
    private final a f92042a;

    /* renamed from: b  reason: collision with root package name */
    private final ParseErrorList f92043b;

    /* renamed from: d  reason: collision with root package name */
    private Token f92045d;

    /* renamed from: i  reason: collision with root package name */
    Token.i f92050i;

    /* renamed from: o  reason: collision with root package name */
    private String f92056o;
    @r7.h

    /* renamed from: p  reason: collision with root package name */
    private String f92057p;

    /* renamed from: c  reason: collision with root package name */
    private j f92044c = j.f92060a;

    /* renamed from: e  reason: collision with root package name */
    private boolean f92046e = false;

    /* renamed from: f  reason: collision with root package name */
    private String f92047f = null;

    /* renamed from: g  reason: collision with root package name */
    private StringBuilder f92048g = new StringBuilder(1024);

    /* renamed from: h  reason: collision with root package name */
    StringBuilder f92049h = new StringBuilder(1024);

    /* renamed from: j  reason: collision with root package name */
    Token.h f92051j = new Token.h();

    /* renamed from: k  reason: collision with root package name */
    Token.g f92052k = new Token.g();

    /* renamed from: l  reason: collision with root package name */
    Token.c f92053l = new Token.c();

    /* renamed from: m  reason: collision with root package name */
    Token.e f92054m = new Token.e();

    /* renamed from: n  reason: collision with root package name */
    Token.d f92055n = new Token.d();

    /* renamed from: q  reason: collision with root package name */
    private final int[] f92058q = new int[1];

    /* renamed from: r  reason: collision with root package name */
    private final int[] f92059r = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', Typography.less, Typography.amp};
        f92039t = cArr;
        f92041v = new int[]{8364, h0.G, 8218, TypedValues.Cycle.TYPE_VISIBILITY, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};
        Arrays.sort(cArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar, ParseErrorList parseErrorList) {
        this.f92042a = aVar;
        this.f92043b = parseErrorList;
    }

    private void d(String str, Object... objArr) {
        if (this.f92043b.a()) {
            ParseErrorList parseErrorList = this.f92043b;
            a aVar = this.f92042a;
            parseErrorList.add(new d(aVar, String.format("Invalid character reference: " + str, objArr)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Token A() {
        while (!this.f92046e) {
            this.f92044c.m(this, this.f92042a);
        }
        StringBuilder sb = this.f92048g;
        if (sb.length() != 0) {
            String sb2 = sb.toString();
            sb.delete(0, sb.length());
            this.f92047f = null;
            return this.f92053l.p(sb2);
        }
        String str = this.f92047f;
        if (str != null) {
            Token.c p9 = this.f92053l.p(str);
            this.f92047f = null;
            return p9;
        }
        this.f92046e = false;
        return this.f92045d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B(j jVar) {
        this.f92044c = jVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String C(boolean z9) {
        StringBuilder b10 = org.jsoup.internal.f.b();
        while (!this.f92042a.w()) {
            b10.append(this.f92042a.o(Typography.amp));
            if (this.f92042a.E(Typography.amp)) {
                this.f92042a.f();
                int[] e4 = e(null, z9);
                if (e4 != null && e4.length != 0) {
                    b10.appendCodePoint(e4[0]);
                    if (e4.length == 2) {
                        b10.appendCodePoint(e4[1]);
                    }
                } else {
                    b10.append(Typography.amp);
                }
            }
        }
        return org.jsoup.internal.f.p(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j jVar) {
        this.f92042a.a();
        this.f92044c = jVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f92056o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        if (this.f92057p == null) {
            this.f92057p = "</" + this.f92056o;
        }
        return this.f92057p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @r7.h
    public int[] e(Character ch, boolean z9) {
        int i4;
        if (this.f92042a.w()) {
            return null;
        }
        if ((ch == null || ch.charValue() != this.f92042a.u()) && !this.f92042a.H(f92039t)) {
            int[] iArr = this.f92058q;
            this.f92042a.B();
            if (this.f92042a.C("#")) {
                boolean D = this.f92042a.D("X");
                a aVar = this.f92042a;
                String j4 = D ? aVar.j() : aVar.i();
                if (j4.length() == 0) {
                    d("numeric reference with no numerals", new Object[0]);
                    this.f92042a.R();
                    return null;
                }
                this.f92042a.V();
                if (!this.f92042a.C(com.alipay.sdk.util.i.f6965b)) {
                    d("missing semicolon on [&#%s]", j4);
                }
                try {
                    i4 = Integer.valueOf(j4, D ? 16 : 10).intValue();
                } catch (NumberFormatException unused) {
                    i4 = -1;
                }
                if (i4 != -1 && ((i4 < 55296 || i4 > 57343) && i4 <= 1114111)) {
                    if (i4 >= 128) {
                        int[] iArr2 = f92041v;
                        if (i4 < iArr2.length + 128) {
                            d("character [%s] is not a valid unicode code point", Integer.valueOf(i4));
                            i4 = iArr2[i4 - 128];
                        }
                    }
                    iArr[0] = i4;
                } else {
                    d("character [%s] outside of valid range", Integer.valueOf(i4));
                    iArr[0] = 65533;
                }
                return iArr;
            }
            String l10 = this.f92042a.l();
            boolean E = this.f92042a.E(';');
            if (!(Entities.i(l10) || (Entities.j(l10) && E))) {
                this.f92042a.R();
                if (E) {
                    d("invalid named reference [%s]", l10);
                }
                return null;
            } else if (z9 && (this.f92042a.L() || this.f92042a.J() || this.f92042a.G('=', shaded.org.apache.commons.codec.language.l.f93713d, '_'))) {
                this.f92042a.R();
                return null;
            } else {
                this.f92042a.V();
                if (!this.f92042a.C(com.alipay.sdk.util.i.f6965b)) {
                    d("missing semicolon on [&%s]", l10);
                }
                int d4 = Entities.d(l10, this.f92059r);
                if (d4 == 1) {
                    iArr[0] = this.f92059r[0];
                    return iArr;
                } else if (d4 == 2) {
                    return this.f92059r;
                } else {
                    org.jsoup.helper.d.a("Unexpected characters returned for " + l10);
                    return this.f92059r;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.f92055n.m();
        this.f92055n.f91903d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        this.f92055n.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f92054m.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Token.i i(boolean z9) {
        Token.i m9 = z9 ? this.f92051j.m() : this.f92052k.m();
        this.f92050i = m9;
        return m9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        Token.n(this.f92049h);
    }

    boolean k() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(char c10) {
        if (this.f92047f == null) {
            this.f92047f = String.valueOf(c10);
            return;
        }
        if (this.f92048g.length() == 0) {
            this.f92048g.append(this.f92047f);
        }
        this.f92048g.append(c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(String str) {
        if (this.f92047f == null) {
            this.f92047f = str;
            return;
        }
        if (this.f92048g.length() == 0) {
            this.f92048g.append(this.f92047f);
        }
        this.f92048g.append(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(StringBuilder sb) {
        if (this.f92047f == null) {
            this.f92047f = sb.toString();
            return;
        }
        if (this.f92048g.length() == 0) {
            this.f92048g.append(this.f92047f);
        }
        this.f92048g.append((CharSequence) sb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(Token token) {
        org.jsoup.helper.d.b(this.f92046e);
        this.f92045d = token;
        this.f92046e = true;
        Token.TokenType tokenType = token.f91898a;
        if (tokenType == Token.TokenType.StartTag) {
            this.f92056o = ((Token.h) token).f91910b;
            this.f92057p = null;
        } else if (tokenType == Token.TokenType.EndTag) {
            Token.g gVar = (Token.g) token;
            if (gVar.B()) {
                w("Attributes incorrectly present on end tag [/%s]", gVar.G());
            }
        }
    }

    void p(char[] cArr) {
        m(String.valueOf(cArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(int[] iArr) {
        m(new String(iArr, 0, iArr.length));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        o(this.f92055n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        o(this.f92054m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t() {
        this.f92050i.z();
        o(this.f92050i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(j jVar) {
        if (this.f92043b.a()) {
            this.f92043b.add(new d(this.f92042a, "Unexpectedly reached end of file (EOF) in input state [%s]", jVar));
        }
    }

    void v(String str) {
        if (this.f92043b.a()) {
            this.f92043b.add(new d(this.f92042a, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(String str, Object... objArr) {
        if (this.f92043b.a()) {
            this.f92043b.add(new d(this.f92042a, str, objArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(j jVar) {
        if (this.f92043b.a()) {
            ParseErrorList parseErrorList = this.f92043b;
            a aVar = this.f92042a;
            parseErrorList.add(new d(aVar, "Unexpected character '%s' in input state [%s]", Character.valueOf(aVar.u()), jVar));
        }
    }

    j y() {
        return this.f92044c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean z() {
        return this.f92056o != null && this.f92050i.D().equalsIgnoreCase(this.f92056o);
    }
}
