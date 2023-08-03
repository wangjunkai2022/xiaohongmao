package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.v;
import java.util.ArrayList;
import java.util.Iterator;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.MessageBundle;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: HtmlTreeBuilderState.java */
/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f91955a = new k("Initial", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final c f91956b = new c("BeforeHtml", 1) { // from class: org.jsoup.parser.c.r
        private boolean o(Token token, org.jsoup.parser.b bVar) {
            bVar.g0("html");
            bVar.T0(c.f91957c);
            return bVar.k(token);
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.i()) {
                bVar.z(this);
                return false;
            } else if (token.h()) {
                bVar.Z(token.b());
                return true;
            } else if (c.m(token)) {
                bVar.Y(token.a());
                return true;
            } else if (token.l() && token.e().G().equals("html")) {
                bVar.W(token.e());
                bVar.T0(c.f91957c);
                return true;
            } else if (token.k() && org.jsoup.internal.f.d(token.d().G(), z.f91986e)) {
                return o(token, bVar);
            } else {
                if (token.k()) {
                    bVar.z(this);
                    return false;
                }
                return o(token, bVar);
            }
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final c f91957c = new c("BeforeHead", 2) { // from class: org.jsoup.parser.c.s
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (c.m(token)) {
                bVar.Y(token.a());
                return true;
            } else if (token.h()) {
                bVar.Z(token.b());
                return true;
            } else if (token.i()) {
                bVar.z(this);
                return false;
            } else if (token.l() && token.e().G().equals("html")) {
                return c.f91961g.n(token, bVar);
            } else {
                if (token.l() && token.e().G().equals(com.google.android.exoplayer2.text.ttml.d.f25724o)) {
                    bVar.Q0(bVar.W(token.e()));
                    bVar.T0(c.f91958d);
                    return true;
                } else if (token.k() && org.jsoup.internal.f.d(token.d().G(), z.f91986e)) {
                    bVar.m(com.google.android.exoplayer2.text.ttml.d.f25724o);
                    return bVar.k(token);
                } else if (token.k()) {
                    bVar.z(this);
                    return false;
                } else {
                    bVar.m(com.google.android.exoplayer2.text.ttml.d.f25724o);
                    return bVar.k(token);
                }
            }
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final c f91958d = new c("InHead", 3) { // from class: org.jsoup.parser.c.t
        private boolean o(Token token, org.jsoup.parser.k kVar) {
            kVar.l(com.google.android.exoplayer2.text.ttml.d.f25724o);
            return kVar.k(token);
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (c.m(token)) {
                bVar.Y(token.a());
                return true;
            }
            int i4 = q.f91981a[token.f91898a.ordinal()];
            if (i4 == 1) {
                bVar.Z(token.b());
            } else if (i4 == 2) {
                bVar.z(this);
                return false;
            } else if (i4 == 3) {
                Token.h e4 = token.e();
                String G = e4.G();
                if (G.equals("html")) {
                    return c.f91961g.n(token, bVar);
                }
                if (org.jsoup.internal.f.d(G, z.f91982a)) {
                    org.jsoup.nodes.g a02 = bVar.a0(e4);
                    if (G.equals(com.google.android.exoplayer2.text.ttml.d.X) && a02.A("href")) {
                        bVar.o0(a02);
                    }
                } else if (G.equals("meta")) {
                    bVar.a0(e4);
                } else if (G.equals(MessageBundle.TITLE_ENTRY)) {
                    c.k(e4, bVar);
                } else if (org.jsoup.internal.f.d(G, z.f91983b)) {
                    c.i(e4, bVar);
                } else if (G.equals("noscript")) {
                    bVar.W(e4);
                    bVar.T0(c.f91959e);
                } else if (G.equals("script")) {
                    bVar.f92098c.B(org.jsoup.parser.j.f92067f);
                    bVar.n0();
                    bVar.T0(c.f91962h);
                    bVar.W(e4);
                } else if (G.equals(com.google.android.exoplayer2.text.ttml.d.f25724o)) {
                    bVar.z(this);
                    return false;
                } else if (G.equals("template")) {
                    bVar.W(e4);
                    bVar.d0();
                    bVar.A(false);
                    c cVar = c.f91972r;
                    bVar.T0(cVar);
                    bVar.E0(cVar);
                } else {
                    return o(token, bVar);
                }
            } else if (i4 != 4) {
                return o(token, bVar);
            } else {
                String G2 = token.d().G();
                if (G2.equals(com.google.android.exoplayer2.text.ttml.d.f25724o)) {
                    bVar.v0();
                    bVar.T0(c.f91960f);
                } else if (org.jsoup.internal.f.d(G2, z.f91984c)) {
                    return o(token, bVar);
                } else {
                    if (G2.equals("template")) {
                        if (!bVar.r0(G2)) {
                            bVar.z(this);
                        } else {
                            bVar.E(true);
                            if (!G2.equals(bVar.a().J1())) {
                                bVar.z(this);
                            }
                            bVar.x0(G2);
                            bVar.s();
                            bVar.z0();
                            bVar.N0();
                        }
                    } else {
                        bVar.z(this);
                        return false;
                    }
                }
            }
            return true;
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public static final c f91959e = new c("InHeadNoscript", 4) { // from class: org.jsoup.parser.c.u
        private boolean o(Token token, org.jsoup.parser.b bVar) {
            bVar.z(this);
            bVar.Y(new Token.c().p(token.toString()));
            return true;
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.i()) {
                bVar.z(this);
                return true;
            } else if (token.l() && token.e().G().equals("html")) {
                return bVar.B0(token, c.f91961g);
            } else {
                if (token.k() && token.d().G().equals("noscript")) {
                    bVar.v0();
                    bVar.T0(c.f91958d);
                    return true;
                } else if (!c.m(token) && !token.h() && (!token.l() || !org.jsoup.internal.f.d(token.e().G(), z.f91987f))) {
                    if (token.k() && token.d().G().equals(com.google.android.exoplayer2.text.ttml.d.f25734t)) {
                        return o(token, bVar);
                    }
                    if ((token.l() && org.jsoup.internal.f.d(token.e().G(), z.K)) || token.k()) {
                        bVar.z(this);
                        return false;
                    }
                    return o(token, bVar);
                } else {
                    return bVar.B0(token, c.f91958d);
                }
            }
        }
    };

    /* renamed from: f  reason: collision with root package name */
    public static final c f91960f = new c("AfterHead", 5) { // from class: org.jsoup.parser.c.v
        private boolean o(Token token, org.jsoup.parser.b bVar) {
            bVar.m(com.google.android.exoplayer2.text.ttml.d.f25726p);
            bVar.A(true);
            return bVar.k(token);
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (c.m(token)) {
                bVar.Y(token.a());
                return true;
            } else if (token.h()) {
                bVar.Z(token.b());
                return true;
            } else if (token.i()) {
                bVar.z(this);
                return true;
            } else if (token.l()) {
                Token.h e4 = token.e();
                String G = e4.G();
                if (G.equals("html")) {
                    return bVar.B0(token, c.f91961g);
                }
                if (G.equals(com.google.android.exoplayer2.text.ttml.d.f25726p)) {
                    bVar.W(e4);
                    bVar.A(false);
                    bVar.T0(c.f91961g);
                    return true;
                } else if (G.equals("frameset")) {
                    bVar.W(e4);
                    bVar.T0(c.f91974t);
                    return true;
                } else if (org.jsoup.internal.f.d(G, z.f91988g)) {
                    bVar.z(this);
                    org.jsoup.nodes.g K = bVar.K();
                    bVar.C0(K);
                    bVar.B0(token, c.f91958d);
                    bVar.I0(K);
                    return true;
                } else if (G.equals(com.google.android.exoplayer2.text.ttml.d.f25724o)) {
                    bVar.z(this);
                    return false;
                } else {
                    o(token, bVar);
                    return true;
                }
            } else if (token.k()) {
                String G2 = token.d().G();
                if (org.jsoup.internal.f.d(G2, z.f91985d)) {
                    o(token, bVar);
                    return true;
                } else if (G2.equals("template")) {
                    bVar.B0(token, c.f91958d);
                    return true;
                } else {
                    bVar.z(this);
                    return false;
                }
            } else {
                o(token, bVar);
                return true;
            }
        }
    };

    /* renamed from: g  reason: collision with root package name */
    public static final c f91961g = new c("InBody", 6) { // from class: org.jsoup.parser.c.w
        private static final int A = 24;

        private boolean p(Token token, org.jsoup.parser.b bVar) {
            Token.g d4 = token.d();
            String G = d4.G();
            G.hashCode();
            char c10 = 65535;
            switch (G.hashCode()) {
                case -1321546630:
                    if (G.equals("template")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 112:
                    if (G.equals("p")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3152:
                    if (G.equals(com.google.android.exoplayer2.text.ttml.d.f25734t)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3200:
                    if (G.equals("dd")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3216:
                    if (G.equals("dt")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 3273:
                    if (G.equals("h1")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3274:
                    if (G.equals("h2")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3275:
                    if (G.equals("h3")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3276:
                    if (G.equals("h4")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 3277:
                    if (G.equals("h5")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 3278:
                    if (G.equals("h6")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 3453:
                    if (G.equals("li")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 3029410:
                    if (G.equals(com.google.android.exoplayer2.text.ttml.d.f25726p)) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 3148996:
                    if (G.equals(m.c.f86929c)) {
                        c10 = '\r';
                        break;
                    }
                    break;
                case 3213227:
                    if (G.equals("html")) {
                        c10 = 14;
                        break;
                    }
                    break;
                case 3536714:
                    if (G.equals(com.google.android.exoplayer2.text.ttml.d.f25732s)) {
                        c10 = 15;
                        break;
                    }
                    break;
                case 1869063452:
                    if (G.equals("sarcasm")) {
                        c10 = 16;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    bVar.B0(token, c.f91958d);
                    break;
                case 1:
                    if (!bVar.N(G)) {
                        bVar.z(this);
                        bVar.m(G);
                        return bVar.k(d4);
                    }
                    bVar.D(G);
                    if (!bVar.b(G)) {
                        bVar.z(this);
                    }
                    bVar.x0(G);
                    break;
                case 2:
                    bVar.z(this);
                    bVar.m(com.google.android.exoplayer2.text.ttml.d.f25734t);
                    return false;
                case 3:
                case 4:
                    if (!bVar.P(G)) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.D(G);
                    if (!bVar.b(G)) {
                        bVar.z(this);
                    }
                    bVar.x0(G);
                    break;
                case 5:
                case 6:
                case 7:
                case '\b':
                case '\t':
                case '\n':
                    String[] strArr = z.f91990i;
                    if (!bVar.R(strArr)) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.D(G);
                    if (!bVar.b(G)) {
                        bVar.z(this);
                    }
                    bVar.y0(strArr);
                    break;
                case 11:
                    if (!bVar.O(G)) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.D(G);
                    if (!bVar.b(G)) {
                        bVar.z(this);
                    }
                    bVar.x0(G);
                    break;
                case '\f':
                    if (!bVar.P(com.google.android.exoplayer2.text.ttml.d.f25726p)) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.T0(c.f91973s);
                    break;
                case '\r':
                    if (!bVar.r0("template")) {
                        org.jsoup.nodes.i I = bVar.I();
                        bVar.O0(null);
                        if (I != null && bVar.P(G)) {
                            bVar.C();
                            if (!bVar.b(G)) {
                                bVar.z(this);
                            }
                            bVar.I0(I);
                            break;
                        } else {
                            bVar.z(this);
                            return false;
                        }
                    } else if (!bVar.P(G)) {
                        bVar.z(this);
                        return false;
                    } else {
                        bVar.C();
                        if (!bVar.b(G)) {
                            bVar.z(this);
                        }
                        bVar.x0(G);
                        break;
                    }
                case 14:
                    if (bVar.l(com.google.android.exoplayer2.text.ttml.d.f25726p)) {
                        return bVar.k(d4);
                    }
                    break;
                case 15:
                case 16:
                    return o(token, bVar);
                default:
                    if (org.jsoup.internal.f.d(G, z.f92000s)) {
                        return q(token, bVar);
                    }
                    if (org.jsoup.internal.f.d(G, z.f91999r)) {
                        if (!bVar.P(G)) {
                            bVar.z(this);
                            return false;
                        }
                        bVar.C();
                        if (!bVar.b(G)) {
                            bVar.z(this);
                        }
                        bVar.x0(G);
                        break;
                    } else if (org.jsoup.internal.f.d(G, z.f91994m)) {
                        if (!bVar.P("name")) {
                            if (!bVar.P(G)) {
                                bVar.z(this);
                                return false;
                            }
                            bVar.C();
                            if (!bVar.b(G)) {
                                bVar.z(this);
                            }
                            bVar.x0(G);
                            bVar.s();
                            break;
                        }
                    } else {
                        return o(token, bVar);
                    }
                    break;
            }
            return true;
        }

        private boolean q(Token token, org.jsoup.parser.b bVar) {
            String G = token.d().G();
            ArrayList<org.jsoup.nodes.g> M = bVar.M();
            boolean z9 = false;
            int i4 = 0;
            while (i4 < 8) {
                org.jsoup.nodes.g F = bVar.F(G);
                if (F == null) {
                    return o(token, bVar);
                }
                if (!bVar.t0(F)) {
                    bVar.z(this);
                    bVar.H0(F);
                    return true;
                } else if (!bVar.P(F.J1())) {
                    bVar.z(this);
                    return z9;
                } else {
                    if (bVar.a() != F) {
                        bVar.z(this);
                    }
                    int size = M.size();
                    int i10 = -1;
                    org.jsoup.nodes.g gVar = null;
                    org.jsoup.nodes.g gVar2 = null;
                    int i11 = 1;
                    boolean z10 = false;
                    while (true) {
                        if (i11 >= size || i11 >= 64) {
                            break;
                        }
                        org.jsoup.nodes.g gVar3 = M.get(i11);
                        if (gVar3 == F) {
                            gVar2 = M.get(i11 - 1);
                            i10 = bVar.A0(gVar3);
                            z10 = true;
                        } else if (z10 && bVar.l0(gVar3)) {
                            gVar = gVar3;
                            break;
                        }
                        i11++;
                    }
                    if (gVar == null) {
                        bVar.x0(F.J1());
                        bVar.H0(F);
                        return true;
                    }
                    org.jsoup.nodes.g gVar4 = gVar;
                    org.jsoup.nodes.g gVar5 = gVar4;
                    for (int i12 = 0; i12 < 3; i12++) {
                        if (bVar.t0(gVar4)) {
                            gVar4 = bVar.q(gVar4);
                        }
                        if (!bVar.j0(gVar4)) {
                            bVar.I0(gVar4);
                        } else if (gVar4 == F) {
                            break;
                        } else {
                            org.jsoup.nodes.g gVar6 = new org.jsoup.nodes.g(bVar.p(gVar4.H(), org.jsoup.parser.e.f92012d), bVar.G());
                            bVar.K0(gVar4, gVar6);
                            bVar.M0(gVar4, gVar6);
                            if (gVar5 == gVar) {
                                i10 = bVar.A0(gVar6) + 1;
                            }
                            if (gVar5.O() != null) {
                                gVar5.S();
                            }
                            gVar6.p0(gVar5);
                            gVar4 = gVar6;
                            gVar5 = gVar4;
                        }
                    }
                    if (gVar2 != null) {
                        if (org.jsoup.internal.f.d(gVar2.J1(), z.f92001t)) {
                            if (gVar5.O() != null) {
                                gVar5.S();
                            }
                            bVar.c0(gVar5);
                        } else {
                            if (gVar5.O() != null) {
                                gVar5.S();
                            }
                            gVar2.p0(gVar5);
                        }
                    }
                    org.jsoup.nodes.g gVar7 = new org.jsoup.nodes.g(F.i2(), bVar.G());
                    gVar7.i().f(F.i());
                    gVar7.q0(gVar.p());
                    gVar.p0(gVar7);
                    bVar.H0(F);
                    bVar.F0(gVar7, i10);
                    bVar.I0(F);
                    bVar.f0(gVar, gVar7);
                    i4++;
                    z9 = false;
                }
            }
            return true;
        }

        private boolean r(Token token, org.jsoup.parser.b bVar) {
            org.jsoup.nodes.i I;
            Token.h e4 = token.e();
            String G = e4.G();
            G.hashCode();
            char c10 = 65535;
            switch (G.hashCode()) {
                case -1644953643:
                    if (G.equals("frameset")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1377687758:
                    if (G.equals("button")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1191214428:
                    if (G.equals("iframe")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1010136971:
                    if (G.equals("option")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1003243718:
                    if (G.equals("textarea")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -906021636:
                    if (G.equals("select")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -80773204:
                    if (G.equals("optgroup")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 97:
                    if (G.equals("a")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3200:
                    if (G.equals("dd")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 3216:
                    if (G.equals("dt")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 3273:
                    if (G.equals("h1")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 3274:
                    if (G.equals("h2")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 3275:
                    if (G.equals("h3")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 3276:
                    if (G.equals("h4")) {
                        c10 = '\r';
                        break;
                    }
                    break;
                case 3277:
                    if (G.equals("h5")) {
                        c10 = 14;
                        break;
                    }
                    break;
                case 3278:
                    if (G.equals("h6")) {
                        c10 = 15;
                        break;
                    }
                    break;
                case 3338:
                    if (G.equals("hr")) {
                        c10 = 16;
                        break;
                    }
                    break;
                case 3453:
                    if (G.equals("li")) {
                        c10 = 17;
                        break;
                    }
                    break;
                case 3646:
                    if (G.equals("rp")) {
                        c10 = 18;
                        break;
                    }
                    break;
                case 3650:
                    if (G.equals("rt")) {
                        c10 = 19;
                        break;
                    }
                    break;
                case 111267:
                    if (G.equals("pre")) {
                        c10 = 20;
                        break;
                    }
                    break;
                case 114276:
                    if (G.equals("svg")) {
                        c10 = 21;
                        break;
                    }
                    break;
                case 118811:
                    if (G.equals("xmp")) {
                        c10 = 22;
                        break;
                    }
                    break;
                case 3029410:
                    if (G.equals(com.google.android.exoplayer2.text.ttml.d.f25726p)) {
                        c10 = 23;
                        break;
                    }
                    break;
                case 3148996:
                    if (G.equals(m.c.f86929c)) {
                        c10 = 24;
                        break;
                    }
                    break;
                case 3213227:
                    if (G.equals("html")) {
                        c10 = 25;
                        break;
                    }
                    break;
                case 3344136:
                    if (G.equals("math")) {
                        c10 = 26;
                        break;
                    }
                    break;
                case 3386833:
                    if (G.equals("nobr")) {
                        c10 = 27;
                        break;
                    }
                    break;
                case 3536714:
                    if (G.equals(com.google.android.exoplayer2.text.ttml.d.f25732s)) {
                        c10 = 28;
                        break;
                    }
                    break;
                case 100313435:
                    if (G.equals("image")) {
                        c10 = 29;
                        break;
                    }
                    break;
                case 100358090:
                    if (G.equals("input")) {
                        c10 = 30;
                        break;
                    }
                    break;
                case 110115790:
                    if (G.equals("table")) {
                        c10 = 31;
                        break;
                    }
                    break;
                case 181975684:
                    if (G.equals("listing")) {
                        c10 = ' ';
                        break;
                    }
                    break;
                case 1973234167:
                    if (G.equals("plaintext")) {
                        c10 = '!';
                        break;
                    }
                    break;
                case 2091304424:
                    if (G.equals("isindex")) {
                        c10 = '\"';
                        break;
                    }
                    break;
                case 2115613112:
                    if (G.equals("noembed")) {
                        c10 = '#';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    bVar.z(this);
                    ArrayList<org.jsoup.nodes.g> M = bVar.M();
                    if (M.size() != 1) {
                        if ((M.size() <= 2 || M.get(1).J1().equals(com.google.android.exoplayer2.text.ttml.d.f25726p)) && bVar.B()) {
                            org.jsoup.nodes.g gVar = M.get(1);
                            if (gVar.O() != null) {
                                gVar.S();
                            }
                            while (M.size() > 1) {
                                M.remove(M.size() - 1);
                            }
                            bVar.W(e4);
                            bVar.T0(c.f91974t);
                            return true;
                        }
                        return false;
                    }
                    return false;
                case 1:
                    if (bVar.N("button")) {
                        bVar.z(this);
                        bVar.l("button");
                        bVar.k(e4);
                        return true;
                    }
                    bVar.G0();
                    bVar.W(e4);
                    bVar.A(false);
                    return true;
                case 2:
                    bVar.A(false);
                    c.i(e4, bVar);
                    break;
                case 3:
                case 6:
                    if (bVar.b("option")) {
                        bVar.l("option");
                    }
                    bVar.G0();
                    bVar.W(e4);
                    break;
                case 4:
                    bVar.W(e4);
                    if (!e4.C()) {
                        bVar.f92098c.B(org.jsoup.parser.j.f92064c);
                        bVar.n0();
                        bVar.A(false);
                        bVar.T0(c.f91962h);
                        break;
                    }
                    break;
                case 5:
                    bVar.G0();
                    bVar.W(e4);
                    bVar.A(false);
                    if (!e4.f91919k) {
                        c R0 = bVar.R0();
                        if (!R0.equals(c.f91963i) && !R0.equals(c.f91965k) && !R0.equals(c.f91967m) && !R0.equals(c.f91968n) && !R0.equals(c.f91969o)) {
                            bVar.T0(c.f91970p);
                            break;
                        } else {
                            bVar.T0(c.f91971q);
                            break;
                        }
                    }
                    break;
                case 7:
                    if (bVar.F("a") != null) {
                        bVar.z(this);
                        bVar.l("a");
                        org.jsoup.nodes.g J = bVar.J("a");
                        if (J != null) {
                            bVar.H0(J);
                            bVar.I0(J);
                        }
                    }
                    bVar.G0();
                    bVar.D0(bVar.W(e4));
                    break;
                case '\b':
                case '\t':
                    bVar.A(false);
                    ArrayList<org.jsoup.nodes.g> M2 = bVar.M();
                    int size = M2.size() - 1;
                    int i4 = size >= 24 ? size - 24 : 0;
                    while (true) {
                        if (size >= i4) {
                            org.jsoup.nodes.g gVar2 = M2.get(size);
                            if (org.jsoup.internal.f.d(gVar2.J1(), z.f91992k)) {
                                bVar.l(gVar2.J1());
                            } else if (!bVar.l0(gVar2) || org.jsoup.internal.f.d(gVar2.J1(), z.f91991j)) {
                                size--;
                            }
                        }
                    }
                    if (bVar.N("p")) {
                        bVar.l("p");
                    }
                    bVar.W(e4);
                    break;
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                    if (bVar.N("p")) {
                        bVar.l("p");
                    }
                    if (org.jsoup.internal.f.d(bVar.a().J1(), z.f91990i)) {
                        bVar.z(this);
                        bVar.v0();
                    }
                    bVar.W(e4);
                    break;
                case 16:
                    if (bVar.N("p")) {
                        bVar.l("p");
                    }
                    bVar.a0(e4);
                    bVar.A(false);
                    break;
                case 17:
                    bVar.A(false);
                    ArrayList<org.jsoup.nodes.g> M3 = bVar.M();
                    int size2 = M3.size() - 1;
                    while (true) {
                        if (size2 > 0) {
                            org.jsoup.nodes.g gVar3 = M3.get(size2);
                            if (gVar3.J1().equals("li")) {
                                bVar.l("li");
                            } else if (!bVar.l0(gVar3) || org.jsoup.internal.f.d(gVar3.J1(), z.f91991j)) {
                                size2--;
                            }
                        }
                    }
                    if (bVar.N("p")) {
                        bVar.l("p");
                    }
                    bVar.W(e4);
                    break;
                case 18:
                case 19:
                    if (bVar.P(com.google.android.exoplayer2.text.ttml.d.N)) {
                        bVar.C();
                        if (!bVar.b(com.google.android.exoplayer2.text.ttml.d.N)) {
                            bVar.z(this);
                            bVar.w0(com.google.android.exoplayer2.text.ttml.d.N);
                        }
                        bVar.W(e4);
                        break;
                    }
                    break;
                case 20:
                case ' ':
                    if (bVar.N("p")) {
                        bVar.l("p");
                    }
                    bVar.W(e4);
                    bVar.f92097b.C("\n");
                    bVar.A(false);
                    break;
                case 21:
                    bVar.G0();
                    bVar.W(e4);
                    break;
                case 22:
                    if (bVar.N("p")) {
                        bVar.l("p");
                    }
                    bVar.G0();
                    bVar.A(false);
                    c.i(e4, bVar);
                    break;
                case 23:
                    bVar.z(this);
                    ArrayList<org.jsoup.nodes.g> M4 = bVar.M();
                    if (M4.size() == 1) {
                        return false;
                    }
                    if ((M4.size() > 2 && !M4.get(1).J1().equals(com.google.android.exoplayer2.text.ttml.d.f25726p)) || bVar.r0("template")) {
                        return false;
                    }
                    bVar.A(false);
                    org.jsoup.nodes.g gVar4 = M4.get(1);
                    if (e4.B()) {
                        Iterator<org.jsoup.nodes.a> it = e4.f91920l.iterator();
                        while (it.hasNext()) {
                            org.jsoup.nodes.a next = it.next();
                            if (!gVar4.A(next.getKey())) {
                                gVar4.i().G(next);
                            }
                        }
                        break;
                    }
                    break;
                case 24:
                    if (bVar.I() != null && !bVar.r0("template")) {
                        bVar.z(this);
                        return false;
                    }
                    if (bVar.N("p")) {
                        bVar.x("p");
                    }
                    bVar.b0(e4, true, true);
                    break;
                    break;
                case 25:
                    bVar.z(this);
                    if (!bVar.r0("template")) {
                        if (bVar.M().size() > 0) {
                            org.jsoup.nodes.g gVar5 = bVar.M().get(0);
                            if (e4.B()) {
                                Iterator<org.jsoup.nodes.a> it2 = e4.f91920l.iterator();
                                while (it2.hasNext()) {
                                    org.jsoup.nodes.a next2 = it2.next();
                                    if (!gVar5.A(next2.getKey())) {
                                        gVar5.i().G(next2);
                                    }
                                }
                                break;
                            }
                        }
                    } else {
                        return false;
                    }
                    break;
                case 26:
                    bVar.G0();
                    bVar.W(e4);
                    break;
                case 27:
                    bVar.G0();
                    if (bVar.P("nobr")) {
                        bVar.z(this);
                        bVar.l("nobr");
                        bVar.G0();
                    }
                    bVar.D0(bVar.W(e4));
                    break;
                case 28:
                    bVar.G0();
                    bVar.W(e4);
                    break;
                case 29:
                    if (bVar.J("svg") == null) {
                        return bVar.k(e4.E("img"));
                    }
                    bVar.W(e4);
                    break;
                case 30:
                    bVar.G0();
                    if (!bVar.a0(e4).g("type").equalsIgnoreCase("hidden")) {
                        bVar.A(false);
                        break;
                    }
                    break;
                case 31:
                    if (bVar.H().O2() != Document.QuirksMode.quirks && bVar.N("p")) {
                        bVar.l("p");
                    }
                    bVar.W(e4);
                    bVar.A(false);
                    bVar.T0(c.f91963i);
                    break;
                case '!':
                    if (bVar.N("p")) {
                        bVar.l("p");
                    }
                    bVar.W(e4);
                    bVar.f92098c.B(org.jsoup.parser.j.f92068g);
                    break;
                case '\"':
                    bVar.z(this);
                    if (bVar.I() == null) {
                        bVar.m(m.c.f86929c);
                        if (e4.A(com.alipay.sdk.packet.d.f6907q) && (I = bVar.I()) != null && e4.A(com.alipay.sdk.packet.d.f6907q)) {
                            I.i().E(com.alipay.sdk.packet.d.f6907q, e4.f91920l.o(com.alipay.sdk.packet.d.f6907q));
                        }
                        bVar.m("hr");
                        bVar.m(AnnotatedPrivateKey.LABEL);
                        bVar.k(new Token.c().p(e4.A("prompt") ? e4.f91920l.o("prompt") : "This is a searchable index. Enter search keywords: "));
                        org.jsoup.nodes.b bVar2 = new org.jsoup.nodes.b();
                        if (e4.B()) {
                            Iterator<org.jsoup.nodes.a> it3 = e4.f91920l.iterator();
                            while (it3.hasNext()) {
                                org.jsoup.nodes.a next3 = it3.next();
                                if (!org.jsoup.internal.f.d(next3.getKey(), z.f91997p)) {
                                    bVar2.G(next3);
                                }
                            }
                        }
                        bVar2.E("name", "isindex");
                        bVar.n("input", bVar2);
                        bVar.l(AnnotatedPrivateKey.LABEL);
                        bVar.m("hr");
                        bVar.l(m.c.f86929c);
                        break;
                    } else {
                        return false;
                    }
                case '#':
                    c.i(e4, bVar);
                    break;
                default:
                    if (!org.jsoup.parser.g.j(G)) {
                        bVar.W(e4);
                    } else if (org.jsoup.internal.f.d(G, z.f91995n)) {
                        bVar.G0();
                        bVar.a0(e4);
                        bVar.A(false);
                    } else if (org.jsoup.internal.f.d(G, z.f91989h)) {
                        if (bVar.N("p")) {
                            bVar.l("p");
                        }
                        bVar.W(e4);
                    } else if (org.jsoup.internal.f.d(G, z.f91988g)) {
                        return bVar.B0(token, c.f91958d);
                    } else {
                        if (org.jsoup.internal.f.d(G, z.f91993l)) {
                            bVar.G0();
                            bVar.D0(bVar.W(e4));
                        } else if (org.jsoup.internal.f.d(G, z.f91994m)) {
                            bVar.G0();
                            bVar.W(e4);
                            bVar.d0();
                            bVar.A(false);
                        } else if (org.jsoup.internal.f.d(G, z.f91996o)) {
                            bVar.a0(e4);
                        } else if (org.jsoup.internal.f.d(G, z.f91998q)) {
                            bVar.z(this);
                            return false;
                        } else {
                            bVar.G0();
                            bVar.W(e4);
                            break;
                        }
                    }
                    break;
            }
            return true;
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            switch (q.f91981a[token.f91898a.ordinal()]) {
                case 1:
                    bVar.Z(token.b());
                    return true;
                case 2:
                    bVar.z(this);
                    return false;
                case 3:
                    return r(token, bVar);
                case 4:
                    return p(token, bVar);
                case 5:
                    Token.c a10 = token.a();
                    if (a10.q().equals(c.f91979y)) {
                        bVar.z(this);
                        return false;
                    } else if (bVar.B() && c.m(a10)) {
                        bVar.G0();
                        bVar.Y(a10);
                        return true;
                    } else {
                        bVar.G0();
                        bVar.Y(a10);
                        bVar.A(false);
                        return true;
                    }
                case 6:
                    if (bVar.S0() > 0) {
                        return bVar.B0(token, c.f91972r);
                    }
                    return true;
                default:
                    return true;
            }
        }

        boolean o(Token token, org.jsoup.parser.b bVar) {
            String str = token.d().f91911c;
            ArrayList<org.jsoup.nodes.g> M = bVar.M();
            if (bVar.J(str) == null) {
                bVar.z(this);
                return false;
            }
            int size = M.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                org.jsoup.nodes.g gVar = M.get(size);
                if (gVar.J1().equals(str)) {
                    bVar.D(str);
                    if (!bVar.b(str)) {
                        bVar.z(this);
                    }
                    bVar.x0(str);
                } else if (bVar.l0(gVar)) {
                    bVar.z(this);
                    return false;
                } else {
                    size--;
                }
            }
            return true;
        }
    };

    /* renamed from: h  reason: collision with root package name */
    public static final c f91962h = new c("Text", 7) { // from class: org.jsoup.parser.c.x
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.g()) {
                bVar.Y(token.a());
                return true;
            } else if (token.j()) {
                bVar.z(this);
                bVar.v0();
                bVar.T0(bVar.u0());
                return bVar.k(token);
            } else if (token.k()) {
                bVar.v0();
                bVar.T0(bVar.u0());
                return true;
            } else {
                return true;
            }
        }
    };

    /* renamed from: i  reason: collision with root package name */
    public static final c f91963i = new c("InTable", 8) { // from class: org.jsoup.parser.c.y
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.g() && org.jsoup.internal.f.d(bVar.a().J1(), z.C)) {
                bVar.q0();
                bVar.n0();
                bVar.T0(c.f91964j);
                return bVar.k(token);
            } else if (token.h()) {
                bVar.Z(token.b());
                return true;
            } else if (token.i()) {
                bVar.z(this);
                return false;
            } else if (token.l()) {
                Token.h e4 = token.e();
                String G = e4.G();
                if (G.equals("caption")) {
                    bVar.v();
                    bVar.d0();
                    bVar.W(e4);
                    bVar.T0(c.f91965k);
                } else if (G.equals("colgroup")) {
                    bVar.v();
                    bVar.W(e4);
                    bVar.T0(c.f91966l);
                } else if (G.equals("col")) {
                    bVar.v();
                    bVar.m("colgroup");
                    return bVar.k(token);
                } else if (org.jsoup.internal.f.d(G, z.f92002u)) {
                    bVar.v();
                    bVar.W(e4);
                    bVar.T0(c.f91967m);
                } else if (org.jsoup.internal.f.d(G, z.f92003v)) {
                    bVar.v();
                    bVar.m("tbody");
                    return bVar.k(token);
                } else if (G.equals("table")) {
                    bVar.z(this);
                    if (bVar.V(G)) {
                        bVar.x0(G);
                        bVar.N0();
                        if (bVar.R0() == c.f91963i) {
                            bVar.W(e4);
                            return true;
                        }
                        return bVar.k(token);
                    }
                    return false;
                } else if (org.jsoup.internal.f.d(G, z.f92004w)) {
                    return bVar.B0(token, c.f91958d);
                } else {
                    if (G.equals("input")) {
                        if (e4.B() && e4.f91920l.o("type").equalsIgnoreCase("hidden")) {
                            bVar.a0(e4);
                        } else {
                            return o(token, bVar);
                        }
                    } else if (G.equals(m.c.f86929c)) {
                        bVar.z(this);
                        if (bVar.I() != null || bVar.r0("template")) {
                            return false;
                        }
                        bVar.b0(e4, false, false);
                    } else {
                        return o(token, bVar);
                    }
                }
                return true;
            } else if (token.k()) {
                String G2 = token.d().G();
                if (G2.equals("table")) {
                    if (!bVar.V(G2)) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.x0("table");
                    bVar.N0();
                } else if (org.jsoup.internal.f.d(G2, z.B)) {
                    bVar.z(this);
                    return false;
                } else if (G2.equals("template")) {
                    bVar.B0(token, c.f91958d);
                } else {
                    return o(token, bVar);
                }
                return true;
            } else if (token.j()) {
                if (bVar.b("html")) {
                    bVar.z(this);
                }
                return true;
            } else {
                return o(token, bVar);
            }
        }

        boolean o(Token token, org.jsoup.parser.b bVar) {
            bVar.z(this);
            bVar.P0(true);
            bVar.B0(token, c.f91961g);
            bVar.P0(false);
            return true;
        }
    };

    /* renamed from: j  reason: collision with root package name */
    public static final c f91964j = new c("InTableText", 9) { // from class: org.jsoup.parser.c.a
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.f91898a == Token.TokenType.Character) {
                Token.c a10 = token.a();
                if (a10.q().equals(c.f91979y)) {
                    bVar.z(this);
                    return false;
                }
                bVar.L().add(a10.q());
                return true;
            }
            if (bVar.L().size() > 0) {
                for (String str : bVar.L()) {
                    if (!c.l(str)) {
                        bVar.z(this);
                        if (org.jsoup.internal.f.d(bVar.a().J1(), z.C)) {
                            bVar.P0(true);
                            bVar.B0(new Token.c().p(str), c.f91961g);
                            bVar.P0(false);
                        } else {
                            bVar.B0(new Token.c().p(str), c.f91961g);
                        }
                    } else {
                        bVar.Y(new Token.c().p(str));
                    }
                }
                bVar.q0();
            }
            bVar.T0(bVar.u0());
            return bVar.k(token);
        }
    };

    /* renamed from: k  reason: collision with root package name */
    public static final c f91965k = new c("InCaption", 10) { // from class: org.jsoup.parser.c.b
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.k() && token.d().G().equals("caption")) {
                if (!bVar.V(token.d().G())) {
                    bVar.z(this);
                    return false;
                }
                bVar.C();
                if (!bVar.b("caption")) {
                    bVar.z(this);
                }
                bVar.x0("caption");
                bVar.s();
                bVar.T0(c.f91963i);
                return true;
            } else if ((token.l() && org.jsoup.internal.f.d(token.e().G(), z.A)) || (token.k() && token.d().G().equals("table"))) {
                bVar.z(this);
                if (bVar.l("caption")) {
                    return bVar.k(token);
                }
                return true;
            } else if (token.k() && org.jsoup.internal.f.d(token.d().G(), z.L)) {
                bVar.z(this);
                return false;
            } else {
                return bVar.B0(token, c.f91961g);
            }
        }
    };

    /* renamed from: l  reason: collision with root package name */
    public static final c f91966l = new c("InColumnGroup", 11) { // from class: org.jsoup.parser.c.c
        private boolean o(Token token, org.jsoup.parser.b bVar) {
            if (!bVar.b("colgroup")) {
                bVar.z(this);
                return false;
            }
            bVar.v0();
            bVar.T0(c.f91963i);
            bVar.k(token);
            return true;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x008d, code lost:
            if (r3.equals("html") == false) goto L38;
         */
        @Override // org.jsoup.parser.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        boolean n(org.jsoup.parser.Token r10, org.jsoup.parser.b r11) {
            /*
                r9 = this;
                boolean r0 = org.jsoup.parser.c.b(r10)
                r1 = 1
                if (r0 == 0) goto Lf
                org.jsoup.parser.Token$c r10 = r10.a()
                r11.Y(r10)
                return r1
            Lf:
                int[] r0 = org.jsoup.parser.c.q.f91981a
                org.jsoup.parser.Token$TokenType r2 = r10.f91898a
                int r2 = r2.ordinal()
                r0 = r0[r2]
                if (r0 == r1) goto Lc0
                r2 = 2
                if (r0 == r2) goto Lbc
                r3 = 3
                java.lang.String r4 = "html"
                r5 = 0
                java.lang.String r6 = "template"
                if (r0 == r3) goto L74
                r2 = 4
                if (r0 == r2) goto L3d
                r2 = 6
                if (r0 == r2) goto L31
                boolean r10 = r9.o(r10, r11)
                return r10
            L31:
                boolean r0 = r11.b(r4)
                if (r0 == 0) goto L38
                return r1
            L38:
                boolean r10 = r9.o(r10, r11)
                return r10
            L3d:
                org.jsoup.parser.Token$g r0 = r10.d()
                java.lang.String r0 = r0.G()
                r0.hashCode()
                boolean r2 = r0.equals(r6)
                if (r2 != 0) goto L6e
                java.lang.String r2 = "colgroup"
                boolean r2 = r0.equals(r2)
                if (r2 != 0) goto L5b
                boolean r10 = r9.o(r10, r11)
                return r10
            L5b:
                boolean r10 = r11.b(r0)
                if (r10 != 0) goto L65
                r11.z(r9)
                return r5
            L65:
                r11.v0()
                org.jsoup.parser.c r10 = org.jsoup.parser.c.f91963i
                r11.T0(r10)
                goto Lc7
            L6e:
                org.jsoup.parser.c r0 = org.jsoup.parser.c.f91958d
                r11.B0(r10, r0)
                goto Lc7
            L74:
                org.jsoup.parser.Token$h r0 = r10.e()
                java.lang.String r3 = r0.G()
                r3.hashCode()
                r7 = -1
                int r8 = r3.hashCode()
                switch(r8) {
                    case -1321546630: goto L9b;
                    case 98688: goto L90;
                    case 3213227: goto L89;
                    default: goto L87;
                }
            L87:
                r2 = -1
                goto La3
            L89:
                boolean r3 = r3.equals(r4)
                if (r3 != 0) goto La3
                goto L87
            L90:
                java.lang.String r2 = "col"
                boolean r2 = r3.equals(r2)
                if (r2 != 0) goto L99
                goto L87
            L99:
                r2 = 1
                goto La3
            L9b:
                boolean r2 = r3.equals(r6)
                if (r2 != 0) goto La2
                goto L87
            La2:
                r2 = 0
            La3:
                switch(r2) {
                    case 0: goto Lb6;
                    case 1: goto Lb2;
                    case 2: goto Lab;
                    default: goto La6;
                }
            La6:
                boolean r10 = r9.o(r10, r11)
                return r10
            Lab:
                org.jsoup.parser.c r0 = org.jsoup.parser.c.f91961g
                boolean r10 = r11.B0(r10, r0)
                return r10
            Lb2:
                r11.a0(r0)
                goto Lc7
            Lb6:
                org.jsoup.parser.c r0 = org.jsoup.parser.c.f91958d
                r11.B0(r10, r0)
                goto Lc7
            Lbc:
                r11.z(r9)
                goto Lc7
            Lc0:
                org.jsoup.parser.Token$d r10 = r10.b()
                r11.Z(r10)
            Lc7:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.c.C0799c.n(org.jsoup.parser.Token, org.jsoup.parser.b):boolean");
        }
    };

    /* renamed from: m  reason: collision with root package name */
    public static final c f91967m = new c("InTableBody", 12) { // from class: org.jsoup.parser.c.d
        private boolean o(Token token, org.jsoup.parser.b bVar) {
            return bVar.B0(token, c.f91963i);
        }

        private boolean p(Token token, org.jsoup.parser.b bVar) {
            if (!bVar.V("tbody") && !bVar.V("thead") && !bVar.P("tfoot")) {
                bVar.z(this);
                return false;
            }
            bVar.u();
            bVar.l(bVar.a().J1());
            return bVar.k(token);
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            int i4 = q.f91981a[token.f91898a.ordinal()];
            if (i4 == 3) {
                Token.h e4 = token.e();
                String G = e4.G();
                if (G.equals("tr")) {
                    bVar.u();
                    bVar.W(e4);
                    bVar.T0(c.f91968n);
                    return true;
                } else if (org.jsoup.internal.f.d(G, z.f92005x)) {
                    bVar.z(this);
                    bVar.m("tr");
                    return bVar.k(e4);
                } else if (org.jsoup.internal.f.d(G, z.D)) {
                    return p(token, bVar);
                } else {
                    return o(token, bVar);
                }
            } else if (i4 != 4) {
                return o(token, bVar);
            } else {
                String G2 = token.d().G();
                if (org.jsoup.internal.f.d(G2, z.J)) {
                    if (!bVar.V(G2)) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.u();
                    bVar.v0();
                    bVar.T0(c.f91963i);
                    return true;
                } else if (G2.equals("table")) {
                    return p(token, bVar);
                } else {
                    if (org.jsoup.internal.f.d(G2, z.E)) {
                        bVar.z(this);
                        return false;
                    }
                    return o(token, bVar);
                }
            }
        }
    };

    /* renamed from: n  reason: collision with root package name */
    public static final c f91968n = new c("InRow", 13) { // from class: org.jsoup.parser.c.e
        private boolean o(Token token, org.jsoup.parser.b bVar) {
            return bVar.B0(token, c.f91963i);
        }

        private boolean p(Token token, org.jsoup.parser.k kVar) {
            if (kVar.l("tr")) {
                return kVar.k(token);
            }
            return false;
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.l()) {
                Token.h e4 = token.e();
                String G = e4.G();
                if (org.jsoup.internal.f.d(G, z.f92005x)) {
                    bVar.w();
                    bVar.W(e4);
                    bVar.T0(c.f91969o);
                    bVar.d0();
                    return true;
                } else if (org.jsoup.internal.f.d(G, z.F)) {
                    return p(token, bVar);
                } else {
                    return o(token, bVar);
                }
            } else if (token.k()) {
                String G2 = token.d().G();
                if (G2.equals("tr")) {
                    if (!bVar.V(G2)) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.w();
                    bVar.v0();
                    bVar.T0(c.f91967m);
                    return true;
                } else if (G2.equals("table")) {
                    return p(token, bVar);
                } else {
                    if (org.jsoup.internal.f.d(G2, z.f92002u)) {
                        if (bVar.V(G2) && bVar.V("tr")) {
                            bVar.w();
                            bVar.v0();
                            bVar.T0(c.f91967m);
                            return true;
                        }
                        bVar.z(this);
                        return false;
                    } else if (org.jsoup.internal.f.d(G2, z.G)) {
                        bVar.z(this);
                        return false;
                    } else {
                        return o(token, bVar);
                    }
                }
            } else {
                return o(token, bVar);
            }
        }
    };

    /* renamed from: o  reason: collision with root package name */
    public static final c f91969o = new c("InCell", 14) { // from class: org.jsoup.parser.c.f
        private boolean o(Token token, org.jsoup.parser.b bVar) {
            return bVar.B0(token, c.f91961g);
        }

        private void p(org.jsoup.parser.b bVar) {
            if (bVar.V("td")) {
                bVar.l("td");
            } else {
                bVar.l("th");
            }
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.k()) {
                String G = token.d().G();
                if (org.jsoup.internal.f.d(G, z.f92005x)) {
                    if (!bVar.V(G)) {
                        bVar.z(this);
                        bVar.T0(c.f91968n);
                        return false;
                    }
                    bVar.C();
                    if (!bVar.b(G)) {
                        bVar.z(this);
                    }
                    bVar.x0(G);
                    bVar.s();
                    bVar.T0(c.f91968n);
                    return true;
                } else if (org.jsoup.internal.f.d(G, z.f92006y)) {
                    bVar.z(this);
                    return false;
                } else if (org.jsoup.internal.f.d(G, z.f92007z)) {
                    if (!bVar.V(G)) {
                        bVar.z(this);
                        return false;
                    }
                    p(bVar);
                    return bVar.k(token);
                } else {
                    return o(token, bVar);
                }
            } else if (token.l() && org.jsoup.internal.f.d(token.e().G(), z.A)) {
                if (!bVar.V("td") && !bVar.V("th")) {
                    bVar.z(this);
                    return false;
                }
                p(bVar);
                return bVar.k(token);
            } else {
                return o(token, bVar);
            }
        }
    };

    /* renamed from: p  reason: collision with root package name */
    public static final c f91970p = new c("InSelect", 15) { // from class: org.jsoup.parser.c.g
        private boolean o(Token token, org.jsoup.parser.b bVar) {
            bVar.z(this);
            return false;
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            switch (q.f91981a[token.f91898a.ordinal()]) {
                case 1:
                    bVar.Z(token.b());
                    break;
                case 2:
                    bVar.z(this);
                    return false;
                case 3:
                    Token.h e4 = token.e();
                    String G = e4.G();
                    if (G.equals("html")) {
                        return bVar.B0(e4, c.f91961g);
                    }
                    if (G.equals("option")) {
                        if (bVar.b("option")) {
                            bVar.l("option");
                        }
                        bVar.W(e4);
                        break;
                    } else if (G.equals("optgroup")) {
                        if (bVar.b("option")) {
                            bVar.l("option");
                        }
                        if (bVar.b("optgroup")) {
                            bVar.l("optgroup");
                        }
                        bVar.W(e4);
                        break;
                    } else if (G.equals("select")) {
                        bVar.z(this);
                        return bVar.l("select");
                    } else if (org.jsoup.internal.f.d(G, z.H)) {
                        bVar.z(this);
                        if (bVar.S("select")) {
                            bVar.l("select");
                            return bVar.k(e4);
                        }
                        return false;
                    } else if (!G.equals("script") && !G.equals("template")) {
                        return o(token, bVar);
                    } else {
                        return bVar.B0(token, c.f91958d);
                    }
                    break;
                case 4:
                    String G2 = token.d().G();
                    G2.hashCode();
                    char c10 = 65535;
                    switch (G2.hashCode()) {
                        case -1321546630:
                            if (G2.equals("template")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -1010136971:
                            if (G2.equals("option")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case -906021636:
                            if (G2.equals("select")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case -80773204:
                            if (G2.equals("optgroup")) {
                                c10 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            return bVar.B0(token, c.f91958d);
                        case 1:
                            if (bVar.b("option")) {
                                bVar.v0();
                                break;
                            } else {
                                bVar.z(this);
                                break;
                            }
                        case 2:
                            if (!bVar.S(G2)) {
                                bVar.z(this);
                                return false;
                            }
                            bVar.x0(G2);
                            bVar.N0();
                            break;
                        case 3:
                            if (bVar.b("option") && bVar.q(bVar.a()) != null && bVar.q(bVar.a()).J1().equals("optgroup")) {
                                bVar.l("option");
                            }
                            if (bVar.b("optgroup")) {
                                bVar.v0();
                                break;
                            } else {
                                bVar.z(this);
                                break;
                            }
                            break;
                        default:
                            return o(token, bVar);
                    }
                case 5:
                    Token.c a10 = token.a();
                    if (a10.q().equals(c.f91979y)) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.Y(a10);
                    break;
                case 6:
                    if (!bVar.b("html")) {
                        bVar.z(this);
                        break;
                    }
                    break;
                default:
                    return o(token, bVar);
            }
            return true;
        }
    };

    /* renamed from: q  reason: collision with root package name */
    public static final c f91971q = new c("InSelectInTable", 16) { // from class: org.jsoup.parser.c.h
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.l() && org.jsoup.internal.f.d(token.e().G(), z.I)) {
                bVar.z(this);
                bVar.x0("select");
                bVar.N0();
                return bVar.k(token);
            } else if (token.k() && org.jsoup.internal.f.d(token.d().G(), z.I)) {
                bVar.z(this);
                if (bVar.V(token.d().G())) {
                    bVar.x0("select");
                    bVar.N0();
                    return bVar.k(token);
                }
                return false;
            } else {
                return bVar.B0(token, c.f91970p);
            }
        }
    };

    /* renamed from: r  reason: collision with root package name */
    public static final c f91972r = new c("InTemplate", 17) { // from class: org.jsoup.parser.c.i
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            switch (q.f91981a[token.f91898a.ordinal()]) {
                case 1:
                case 2:
                case 5:
                    bVar.B0(token, c.f91961g);
                    break;
                case 3:
                    String G = token.e().G();
                    if (org.jsoup.internal.f.d(G, z.M)) {
                        bVar.B0(token, c.f91958d);
                        break;
                    } else if (org.jsoup.internal.f.d(G, z.N)) {
                        bVar.z0();
                        c cVar = c.f91963i;
                        bVar.E0(cVar);
                        bVar.T0(cVar);
                        return bVar.k(token);
                    } else if (G.equals("col")) {
                        bVar.z0();
                        c cVar2 = c.f91966l;
                        bVar.E0(cVar2);
                        bVar.T0(cVar2);
                        return bVar.k(token);
                    } else if (G.equals("tr")) {
                        bVar.z0();
                        c cVar3 = c.f91967m;
                        bVar.E0(cVar3);
                        bVar.T0(cVar3);
                        return bVar.k(token);
                    } else if (!G.equals("td") && !G.equals("th")) {
                        bVar.z0();
                        c cVar4 = c.f91961g;
                        bVar.E0(cVar4);
                        bVar.T0(cVar4);
                        return bVar.k(token);
                    } else {
                        bVar.z0();
                        c cVar5 = c.f91968n;
                        bVar.E0(cVar5);
                        bVar.T0(cVar5);
                        return bVar.k(token);
                    }
                case 4:
                    if (token.d().G().equals("template")) {
                        bVar.B0(token, c.f91958d);
                        break;
                    } else {
                        bVar.z(this);
                        return false;
                    }
                case 6:
                    if (bVar.r0("template")) {
                        bVar.z(this);
                        bVar.x0("template");
                        bVar.s();
                        bVar.z0();
                        bVar.N0();
                        if (bVar.R0() == c.f91972r || bVar.S0() >= 12) {
                            return true;
                        }
                        return bVar.k(token);
                    }
                    return true;
            }
            return true;
        }
    };

    /* renamed from: s  reason: collision with root package name */
    public static final c f91973s = new c("AfterBody", 18) { // from class: org.jsoup.parser.c.j
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (c.m(token)) {
                bVar.Y(token.a());
                return true;
            } else if (token.h()) {
                bVar.Z(token.b());
                return true;
            } else if (token.i()) {
                bVar.z(this);
                return false;
            } else if (token.l() && token.e().G().equals("html")) {
                return bVar.B0(token, c.f91961g);
            } else {
                if (token.k() && token.d().G().equals("html")) {
                    if (bVar.i0()) {
                        bVar.z(this);
                        return false;
                    }
                    bVar.T0(c.f91976v);
                    return true;
                } else if (token.j()) {
                    return true;
                } else {
                    bVar.z(this);
                    bVar.T0(c.f91961g);
                    return bVar.k(token);
                }
            }
        }
    };

    /* renamed from: t  reason: collision with root package name */
    public static final c f91974t = new c("InFrameset", 19) { // from class: org.jsoup.parser.c.l
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (c.m(token)) {
                bVar.Y(token.a());
            } else if (token.h()) {
                bVar.Z(token.b());
            } else if (token.i()) {
                bVar.z(this);
                return false;
            } else if (token.l()) {
                Token.h e4 = token.e();
                String G = e4.G();
                G.hashCode();
                char c10 = 65535;
                switch (G.hashCode()) {
                    case -1644953643:
                        if (G.equals("frameset")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3213227:
                        if (G.equals("html")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 97692013:
                        if (G.equals(TypedValues.Attributes.S_FRAME)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1192721831:
                        if (G.equals("noframes")) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        bVar.W(e4);
                        break;
                    case 1:
                        return bVar.B0(e4, c.f91961g);
                    case 2:
                        bVar.a0(e4);
                        break;
                    case 3:
                        return bVar.B0(e4, c.f91958d);
                    default:
                        bVar.z(this);
                        return false;
                }
            } else if (token.k() && token.d().G().equals("frameset")) {
                if (bVar.b("html")) {
                    bVar.z(this);
                    return false;
                }
                bVar.v0();
                if (!bVar.i0() && !bVar.b("frameset")) {
                    bVar.T0(c.f91975u);
                }
            } else if (token.j()) {
                if (!bVar.b("html")) {
                    bVar.z(this);
                }
            } else {
                bVar.z(this);
                return false;
            }
            return true;
        }
    };

    /* renamed from: u  reason: collision with root package name */
    public static final c f91975u = new c("AfterFrameset", 20) { // from class: org.jsoup.parser.c.m
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (c.m(token)) {
                bVar.Y(token.a());
                return true;
            } else if (token.h()) {
                bVar.Z(token.b());
                return true;
            } else if (token.i()) {
                bVar.z(this);
                return false;
            } else if (token.l() && token.e().G().equals("html")) {
                return bVar.B0(token, c.f91961g);
            } else {
                if (token.k() && token.d().G().equals("html")) {
                    bVar.T0(c.f91977w);
                    return true;
                } else if (token.l() && token.e().G().equals("noframes")) {
                    return bVar.B0(token, c.f91958d);
                } else {
                    if (token.j()) {
                        return true;
                    }
                    bVar.z(this);
                    return false;
                }
            }
        }
    };

    /* renamed from: v  reason: collision with root package name */
    public static final c f91976v = new c("AfterAfterBody", 21) { // from class: org.jsoup.parser.c.n
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.h()) {
                bVar.Z(token.b());
                return true;
            } else if (!token.i() && (!token.l() || !token.e().G().equals("html"))) {
                if (c.m(token)) {
                    org.jsoup.nodes.g x02 = bVar.x0("html");
                    bVar.Y(token.a());
                    if (x02 != null) {
                        bVar.f92100e.add(x02);
                        org.jsoup.nodes.g c22 = x02.c2(com.google.android.exoplayer2.text.ttml.d.f25726p);
                        if (c22 != null) {
                            bVar.f92100e.add(c22);
                            return true;
                        }
                        return true;
                    }
                    return true;
                } else if (token.j()) {
                    return true;
                } else {
                    bVar.z(this);
                    bVar.T0(c.f91961g);
                    return bVar.k(token);
                }
            } else {
                return bVar.B0(token, c.f91961g);
            }
        }
    };

    /* renamed from: w  reason: collision with root package name */
    public static final c f91977w = new c("AfterAfterFrameset", 22) { // from class: org.jsoup.parser.c.o
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (token.h()) {
                bVar.Z(token.b());
                return true;
            } else if (!token.i() && !c.m(token) && (!token.l() || !token.e().G().equals("html"))) {
                if (token.j()) {
                    return true;
                }
                if (token.l() && token.e().G().equals("noframes")) {
                    return bVar.B0(token, c.f91958d);
                }
                bVar.z(this);
                return false;
            } else {
                return bVar.B0(token, c.f91961g);
            }
        }
    };

    /* renamed from: x  reason: collision with root package name */
    public static final c f91978x = new c("ForeignContent", 23) { // from class: org.jsoup.parser.c.p
        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            return true;
        }
    };

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c[] f91980z = a();

    /* renamed from: y  reason: collision with root package name */
    private static final String f91979y = String.valueOf((char) 0);

    /* compiled from: HtmlTreeBuilderState.java */
    /* loaded from: classes5.dex */
    enum k extends c {
        k(String str, int i4) {
            super(str, i4, null);
        }

        @Override // org.jsoup.parser.c
        boolean n(Token token, org.jsoup.parser.b bVar) {
            if (c.m(token)) {
                return true;
            }
            if (token.h()) {
                bVar.Z(token.b());
            } else if (token.i()) {
                Token.e c10 = token.c();
                org.jsoup.nodes.f fVar = new org.jsoup.nodes.f(bVar.f92103h.d(c10.p()), c10.r(), c10.s());
                fVar.p0(c10.q());
                bVar.H().p0(fVar);
                if (c10.t()) {
                    bVar.H().P2(Document.QuirksMode.quirks);
                }
                bVar.T0(c.f91956b);
            } else {
                bVar.T0(c.f91956b);
                return bVar.k(token);
            }
            return true;
        }
    }

    /* compiled from: HtmlTreeBuilderState.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class q {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f91981a;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f91981a = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f91981a[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f91981a[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f91981a[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f91981a[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f91981a[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HtmlTreeBuilderState.java */
    /* loaded from: classes5.dex */
    public static final class z {

        /* renamed from: a  reason: collision with root package name */
        static final String[] f91982a = {com.google.android.exoplayer2.text.ttml.d.X, "basefont", "bgsound", "command", "link"};

        /* renamed from: b  reason: collision with root package name */
        static final String[] f91983b = {"noframes", com.google.android.exoplayer2.text.ttml.d.f25736u};

        /* renamed from: c  reason: collision with root package name */
        static final String[] f91984c = {com.google.android.exoplayer2.text.ttml.d.f25726p, com.google.android.exoplayer2.text.ttml.d.f25734t, "html"};

        /* renamed from: d  reason: collision with root package name */
        static final String[] f91985d = {com.google.android.exoplayer2.text.ttml.d.f25726p, com.google.android.exoplayer2.text.ttml.d.f25734t, "html"};

        /* renamed from: e  reason: collision with root package name */
        static final String[] f91986e = {com.google.android.exoplayer2.text.ttml.d.f25726p, com.google.android.exoplayer2.text.ttml.d.f25734t, com.google.android.exoplayer2.text.ttml.d.f25724o, "html"};

        /* renamed from: f  reason: collision with root package name */
        static final String[] f91987f = {"basefont", "bgsound", "link", "meta", "noframes", com.google.android.exoplayer2.text.ttml.d.f25736u};

        /* renamed from: g  reason: collision with root package name */
        static final String[] f91988g = {com.google.android.exoplayer2.text.ttml.d.X, "basefont", "bgsound", "command", "link", "meta", "noframes", "script", com.google.android.exoplayer2.text.ttml.d.f25736u, "template", MessageBundle.TITLE_ENTRY};

        /* renamed from: h  reason: collision with root package name */
        static final String[] f91989h = {"address", "article", "aside", "blockquote", com.google.android.exoplayer2.text.ttml.d.f25721m0, ErrorBundle.DETAIL_ENTRY, "dir", com.google.android.exoplayer2.text.ttml.d.f25728q, "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", ErrorBundle.SUMMARY_ENTRY, "ul"};

        /* renamed from: i  reason: collision with root package name */
        static final String[] f91990i = {"h1", "h2", "h3", "h4", "h5", "h6"};

        /* renamed from: j  reason: collision with root package name */
        static final String[] f91991j = {"address", com.google.android.exoplayer2.text.ttml.d.f25728q, "p"};

        /* renamed from: k  reason: collision with root package name */
        static final String[] f91992k = {"dd", "dt"};

        /* renamed from: l  reason: collision with root package name */
        static final String[] f91993l = {"b", "big", "code", "em", "font", ContextChain.TAG_INFRA, "s", "small", "strike", "strong", com.google.android.exoplayer2.text.ttml.d.f25722n, "u"};

        /* renamed from: m  reason: collision with root package name */
        static final String[] f91994m = {"applet", "marquee", "object"};

        /* renamed from: n  reason: collision with root package name */
        static final String[] f91995n = {"area", com.google.android.exoplayer2.text.ttml.d.f25734t, "embed", "img", "keygen", "wbr"};

        /* renamed from: o  reason: collision with root package name */
        static final String[] f91996o = {com.alipay.sdk.authjs.a.f6841l, v.b.f83881a, "track"};

        /* renamed from: p  reason: collision with root package name */
        static final String[] f91997p = {com.alipay.sdk.packet.d.f6907q, "name", "prompt"};

        /* renamed from: q  reason: collision with root package name */
        static final String[] f91998q = {"caption", "col", "colgroup", TypedValues.Attributes.S_FRAME, com.google.android.exoplayer2.text.ttml.d.f25724o, "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: r  reason: collision with root package name */
        static final String[] f91999r = {"address", "article", "aside", "blockquote", "button", com.google.android.exoplayer2.text.ttml.d.f25721m0, ErrorBundle.DETAIL_ENTRY, "dir", com.google.android.exoplayer2.text.ttml.d.f25728q, "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", ErrorBundle.SUMMARY_ENTRY, "ul"};

        /* renamed from: s  reason: collision with root package name */
        static final String[] f92000s = {"a", "b", "big", "code", "em", "font", ContextChain.TAG_INFRA, "nobr", "s", "small", "strike", "strong", com.google.android.exoplayer2.text.ttml.d.f25722n, "u"};

        /* renamed from: t  reason: collision with root package name */
        static final String[] f92001t = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: u  reason: collision with root package name */
        static final String[] f92002u = {"tbody", "tfoot", "thead"};

        /* renamed from: v  reason: collision with root package name */
        static final String[] f92003v = {"td", "th", "tr"};

        /* renamed from: w  reason: collision with root package name */
        static final String[] f92004w = {"script", com.google.android.exoplayer2.text.ttml.d.f25736u, "template"};

        /* renamed from: x  reason: collision with root package name */
        static final String[] f92005x = {"td", "th"};

        /* renamed from: y  reason: collision with root package name */
        static final String[] f92006y = {com.google.android.exoplayer2.text.ttml.d.f25726p, "caption", "col", "colgroup", "html"};

        /* renamed from: z  reason: collision with root package name */
        static final String[] f92007z = {"table", "tbody", "tfoot", "thead", "tr"};
        static final String[] A = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] B = {com.google.android.exoplayer2.text.ttml.d.f25726p, "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] C = {"table", "tbody", "tfoot", "thead", "tr"};
        static final String[] D = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        static final String[] E = {com.google.android.exoplayer2.text.ttml.d.f25726p, "caption", "col", "colgroup", "html", "td", "th", "tr"};
        static final String[] F = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        static final String[] G = {com.google.android.exoplayer2.text.ttml.d.f25726p, "caption", "col", "colgroup", "html", "td", "th"};
        static final String[] H = {"input", "keygen", "textarea"};
        static final String[] I = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] J = {"tbody", "tfoot", "thead"};
        static final String[] K = {com.google.android.exoplayer2.text.ttml.d.f25724o, "noscript"};
        static final String[] L = {com.google.android.exoplayer2.text.ttml.d.f25726p, "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] M = {com.google.android.exoplayer2.text.ttml.d.X, "basefont", "bgsound", "link", "meta", "noframes", "script", com.google.android.exoplayer2.text.ttml.d.f25736u, "template", MessageBundle.TITLE_ENTRY};
        static final String[] N = {"caption", "colgroup", "tbody", "tfoot", "thead"};

        z() {
        }
    }

    private c(String str, int i4) {
    }

    private static /* synthetic */ c[] a() {
        return new c[]{f91955a, f91956b, f91957c, f91958d, f91959e, f91960f, f91961g, f91962h, f91963i, f91964j, f91965k, f91966l, f91967m, f91968n, f91969o, f91970p, f91971q, f91972r, f91973s, f91974t, f91975u, f91976v, f91977w, f91978x};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i(Token.h hVar, org.jsoup.parser.b bVar) {
        bVar.f92098c.B(org.jsoup.parser.j.f92066e);
        bVar.n0();
        bVar.T0(f91962h);
        bVar.W(hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(Token.h hVar, org.jsoup.parser.b bVar) {
        bVar.f92098c.B(org.jsoup.parser.j.f92064c);
        bVar.n0();
        bVar.T0(f91962h);
        bVar.W(hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(String str) {
        return org.jsoup.internal.f.g(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m(Token token) {
        if (token.g()) {
            return org.jsoup.internal.f.g(token.a().q());
        }
        return false;
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f91980z.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean n(Token token, org.jsoup.parser.b bVar);

    /* synthetic */ c(String str, int i4, k kVar) {
        this(str, i4);
    }
}
